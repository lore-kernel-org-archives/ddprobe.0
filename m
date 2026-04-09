Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E082253B42
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 21:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775769454; cv=none; b=XYj2+9Nei+S86ki4qeqZGsrNUjhNT7tJO8MLja71MAydowbsRs7h+WGGrCq2JMxJ89iLHyz70ZSWwWkLcik3henrkwGHSI2ze721Wuchb4bJMFJEs0zMxZZU3fjFi9rXp9I593rA2XNKbJJQ6US6Tt+qpuHeJvk+4VVQXOXoldA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775769454; c=relaxed/simple;
	bh=Ps+IXzs8rVuz085BBw1gJY2JEv0vRsHHlG9EAMfj9vQ=;
	h=To:Subject:From:Message-Id:Date; b=n8R6DSpfuHIkSgIzWgktR9AZQ1hQGAIe2tq6KKiyuxfj5bwjxw9jiaqgTLRIOB5aoW89yhgKW8Q+3kMru4aCSyWPJdChdmYdlxPb6hMugTOmuDrkQUfSjyG+eAnH6lRy4GPs6OavVuK+/gAI/La3GzkVseNhkdbSrSY/+kaQ0P8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UIl7zEYe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UIl7zEYe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCFCBC19424
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 21:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775769453;
	bh=Ps+IXzs8rVuz085BBw1gJY2JEv0vRsHHlG9EAMfj9vQ=;
	h=To:Subject:From:Date:From;
	b=UIl7zEYeoU0l3mrpvASbs3lnCt12xvy7/Oi9BP6sTy6sgGpee8vCM+Fikc8mS2W57
	 gneVRbp3+E86/ag/h3jyzOJkOqyzlAz41s4xAoTEfeFGtkfPGXgZBEYO6Ku8Wo5WuI
	 7biLBc7J1LKQelF5Rdbl3l+BhTJm/tVSaGHhoWhb91npPIxUPxsAiU/tN/6iqP07/I
	 K43quvo9ImAgsPVLJQ+ZSTYbWV7A+4GB53HX3f3viZQpjC13rAF9O+5ZNPMJ19pTKJ
	 Oh1xn2Rm+yJHdmRfn8CMcrmYlLRUMWEcUR5/q/ijjIjpqrcrvjoAg3NmEWHuJ3UqD1
	 Z468UdPrp0XcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BC3F364BA
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 21:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177576945368.9137.8054384980200792125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 474828b4ecf8f1ee0964a2dd21349adc108940e70d7be363ea3921a69b507efd
Date: Thu, 09 Apr 2026 21:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775769453
