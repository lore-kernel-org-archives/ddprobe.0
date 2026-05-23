Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0FF15FA81
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 03:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779505354; cv=none; b=hFfVRl0WikGlI12m4tBRhin4/g29rHq14tI6qpv5qQqLo2kDYIwPbm+Y+GswfKa/C0loy5R0j/3J6JNspN6Bq0+b++jvwQdAZsSxmCngq2LUewr4o2MSkVob1YnubWkvRgPSdTEilsEs6eqia5mQJEqWrN+X22OZ9E3sleO/h1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779505354; c=relaxed/simple;
	bh=gr89lUd/2DrWTnMwapD6BgW7VU4pWdLsQ9CMuPVj4iI=;
	h=To:Subject:From:Message-Id:Date; b=QY1h7fMz7bTGFneRLDY3rjkvq7UVN4toI0cTWDJ+DxcyPAY9RSWlMfMqXCFN7qraO9CsAAVbdIW3PX2RU7VK5BvScdoMZWln+HakmIeXOtS1F3AQioffH3/UApQvLIC9Ct5hziD0DfBNF6RrXOo/taHcBMK/TV8IfcQbNhnYiOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWu5xASa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWu5xASa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF10C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 03:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779505353;
	bh=gr89lUd/2DrWTnMwapD6BgW7VU4pWdLsQ9CMuPVj4iI=;
	h=To:Subject:From:Date:From;
	b=VWu5xASaX8hEMWjVj8gXt/8enDN7nRVjxlm4CX3H3CNgWxW43gjYk/HVPB8AOvt1O
	 Nq18IwKo7SNKupFrSkq4VyLbO8wHP7icCSpcpffhOv3duww7MVkeI0EsJzGA5mSULh
	 /FkheITkwvOzqzVLXpx7loSyWv0FFd7egvNlb7LeKS2M6PvFaiCfPT7RuBA98F89Gb
	 J0JS7QfoBv3+NS7x4DVCht+/ibbVPPYxjOwAGh3C9fePBR58jQFFb47A5PPRKL53PX
	 t/c7iAs1+zt225+Jf/kGJCSe3ggJ4lFfisikbb5osm+bifltE/XLduGQ75HiZ6atzF
	 6JY+zV505Q6Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD3FCD5BB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 03:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177950535369.21134.6324307489471371466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c127816b6fa5d31fbfddd73166f0fb4e48ec6fc92b9b94f537e9e7bd707978c
Date: Sat, 23 May 2026 03:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779505353
