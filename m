Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 101861624DD
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749418795; cv=none; b=kGVOZnLQrvz2mjNWfos6Qcr42TcETlqAudyqPRqL9Do2CfjJLG57MrMWQ8s3jbRvuuEfrEAP/McPtguKnWbDOfzm4wELNkCSF4BRzK18pIbla3CT9sIbOIyl/ZGYJSUWD2kMe44YWKymgplT8WVMJPG5R9w++QVKc4MASF5fhGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749418795; c=relaxed/simple;
	bh=wCEZfy6GZnuKoKGAy75dKbNfNhD2rOrthwAh54InEoM=;
	h=To:Subject:From:Message-Id:Date; b=ZIbjpAhBfEBYM0MCjvgcHkKhccpLtGUzUQgRdmP+6AxldCBvfhsTmBQvqQ0evtDgXjwNihAuzUDlEefervdFHXz/aD/bK0wVCHnDJnWd+HuRTaKzZ3hK81luZzkOzBSF9HJr1MQpl78XEYO6cvfaAubBj6p7qXFFaiXkPN6Y2Yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJm1LSjg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJm1LSjg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D9EC4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749418793;
	bh=wCEZfy6GZnuKoKGAy75dKbNfNhD2rOrthwAh54InEoM=;
	h=To:Subject:From:Date:From;
	b=AJm1LSjgdIGgOv01f3hyVUrQgsqdscyVJ+/VodugDf0wcFCdiNeoXG43qsMF6vqOX
	 AGF0Qx72MsHazgUa1aMyoOshFyKpGfchB6bwCmwRLpY95A7RdkFyy1U5stI5pbmVEx
	 ab0MmuaAsW4GFHdDLp/fJSgcu+FwQ6+A4+iZlS4yqIVYReZbN1H5LhYUkPlBsT1Wza
	 pbQhUBmBIiCsZNDVxCQ/HY3X2YMlRFAOO2WeuQVj7GiCVlJjzbiEBeBcDy5nbwlX6F
	 3HqOblS7PP2F+kHVrJq0oKEldMkc5eDQN1tfcRWMyvribqWsP+16MoaAkPa5pLCwVC
	 eQcbKfwqhDohw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2F3C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174941879357.5324.10370599877534849666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95dd2779908cd569a5a1812ec538c27a0626dc4128cf866170dbf04b1043cabf
Date: Sun, 08 Jun 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749418793
