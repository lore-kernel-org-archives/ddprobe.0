Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA531E47C9
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743496794; cv=none; b=gh15up8NeOmvodgrBjAvRT9hwfnbbfo6dcIz2SnMg/EpXUOKC5mN32hN/fBMjBNetMuXCHpgv92ElB5oasDjZsu47aIjwikILqlUKtrntyn5kZ14KTaEus2LQic+Mr2mXMx42WwkKmRTNTfo/5kDjC0v25cJTNtcs5jlBbI7zzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743496794; c=relaxed/simple;
	bh=N3v7o9L4i+scNKU0e0nwRFQ8kScdHX7wOj2qkZNKCdU=;
	h=To:Subject:From:Message-Id:Date; b=dMeptDYKrPr/KOrLnElak4sj8msVcvhS9py3gWIz+3VZBCPpC7OUn9B+aIQKRno+IGfWUVLrn2qH9uZil7eIyRTfLL8uZBIeCP5MWIoQpIEUH3oPDxxaA/khBgLG1ojbbDZ8px/idhaNYuCkI0GhBfyc5S9Z2CaUI63ecORFF0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rQqi/1pZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rQqi/1pZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEA1BC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743496793;
	bh=N3v7o9L4i+scNKU0e0nwRFQ8kScdHX7wOj2qkZNKCdU=;
	h=To:Subject:From:Date:From;
	b=rQqi/1pZRxSapYpnlnlJr+ah5scJD0uXv/XXD+xm80MVTJL1+KbUg80C4qwsH+Mz+
	 GHUTZrSlU2nAbbD6tdCyODWp+s6gLkImIFFSfE71I8AHBF0YTgvQaZJmkn1D4Ozg0k
	 gWiZjx0RPSFOvC/tIGh/zoonCH5Z6UUdJ0rbusxa1wwC84Ssm9HP4WtJOLndLyROvp
	 l3pTt2mL5RZNCIOMIUDg6BTjGM5wsYDIJdHo+WDiuMclRJNs+hv8EZvdRuTG4WdYCQ
	 vD/07A90lowQp1w6xz1B7ZZsy5AB9lXlIWcSZIegtjTgSQN4F8bNXa0ygWGIiusWzd
	 +M0JRB33Owpfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6021C36014
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174349679366.25822.10529287593287373675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e40382c8319befc8707f7b6894daaff6a274a25dbde0d341f9e94dc886e61d1c
Date: Tue, 01 Apr 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743496793
