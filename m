Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4948F8C0E
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744966194; cv=none; b=U02vNGuV731kZa+h3pqbzrSpg/d0VypMs9gxSzJprFU9MY8wtDxPE/JhyeNMdbkMJs56EPC8KtJp7zD6HxkZuGU471r/7TuV2hC3xP9i4tFDyfvsKxc1HIYxP+s76ojUIEFXjisvD+ra6XLR21l3eD1QcSVctyZyrjvus++Cnio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744966194; c=relaxed/simple;
	bh=CgzVAs7NJEq2mGtW84QMbD4UTF5hWm+g1PFx2WERyE8=;
	h=To:Subject:From:Message-Id:Date; b=vDDhq+V6xJzWqX8mViU6lGAf5+hY6X1/GPWfhwBn/7KmKYuQJUqHkCDtsuBI2raoNdXGTF/x41tjf3Ll+mttzFpKjuQkuWGZgJMikL5pCY6B6lDBy8RlFptwT77i4hgMieGb1OVsH1FhAI2iy+prJ5lXHuLPS5OYadTFOA5uvPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mT+Ns0rG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mT+Ns0rG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9DAC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744966193;
	bh=CgzVAs7NJEq2mGtW84QMbD4UTF5hWm+g1PFx2WERyE8=;
	h=To:Subject:From:Date:From;
	b=mT+Ns0rGxgntBgsQFwm9ebso4MLcn3ZKPAu2d9Hjh4qio+d+LtVH0ormquNdCsast
	 6QS/npfD5z++yL96kk7tp7UygJAw/jmh0tmpFwcoDvYdHxO5t8xmXr//NWLCpGUkU9
	 ijH+nenAlRFvwGkV1ng6zh9ZPsH1NZ+htSPBNQ97pvRheiXa6+ScsWJTtEfQUCW/ul
	 Yg58oedd6kQz5UU/BI2fQvk40YDLut7JF/VvcD1vDWVwmpXeJo1GVf32g52GYVwxpd
	 bfg72DA0AhjcprJUzVH4EBLHMe0y3ezFOL4X9g3zmiZ+zcPmusft8qMLH8kTKw0h0D
	 wctPfZzIH/4pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9004DC369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174496619358.26272.16444537422226040109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbd4e03c1361cae5e23a4b0f62409cd8f8e291b7882677e62e79c8f2571fa6d9
Date: Fri, 18 Apr 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744966193
