Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE6C3033D8
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788576634; cv=none; b=lPpLgY0UCXzdKWTuaADU7nIajYR3l1M4pIYWm2BnMweKTsKIU7arMwVph0k/JSx5SR9sBT/Z5+werk9UZegoKW5br5G9nCxv8bwwzmwSExp4RtbGV0T+x7FflhnGMpDOmR5cuadjHjp8sEW8SRu6vQcjai+dOZCsIjitcThMpLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788576634; c=relaxed/simple;
	bh=AvlIZ2wmgp0k0fQ56tEZosmAcN6FQASw/2H3mJckN+Y=;
	h=To:Subject:From:Message-Id:Date; b=Myl8IG9mq1P7JN9wrkv2DjspNk78Ei3LTwYWSxGlIUPZNnlWbs82OaQ8zi845C2Lm6N3lz0j/3NEr7Zlp+rIVhLGJDsF617HiRlBsBeK+ik8dtqZYw7XIUBUPSWtowkc4L4j5oU6qw5c5yALNAYjt5k+JAuC/fjGkQLoG+TNznY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LyI3XyWE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LyI3XyWE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D374DC2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788576633;
	bh=AvlIZ2wmgp0k0fQ56tEZosmAcN6FQASw/2H3mJckN+Y=;
	h=To:Subject:From:Date:From;
	b=LyI3XyWEnb6V0G0O1A9ACaA6eSyMT+bIgl1loidlHvY92KTkClcDg5NS1nEJT4f6Z
	 AOEFncgbeK5Xb5p0y3RlnRBtFwjx/HOqHUryOI2qk4UzUBiTFY49PKdxeOTFFkWmLb
	 OGBbBEKTvfQmz1suufgbGmOvvAbsalpb473pKT8DHrMAb8N8NsycFOU9KMU1dexFuo
	 ym8S5p1NPk5w79QNp65w/Fuc2Y0ePk6VB8TAVDNnYu6wWNnFNDskfsqQ9yDPuZEyFk
	 OkkuRDGxLntuzIe/SxXJMhtuWa7HNFovqmzcNB/wIGnbucXP5HKrxrwhw7UPMDFLGo
	 fey7NWe/qpjqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AECC79F82
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178857663368.18396.5475048888836658667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be3ca00fc8de599a2f2b1f23620fd946ba044c3353f810153094d1e9c3dafa4f
Date: Sat, 05 Sep 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788576633
