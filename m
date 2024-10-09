Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BB2154BEE
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728457554; cv=none; b=WBTxif3iXj/XmTsO9qw3Z8oe24jHSg4bIZdbW3qxgjsBdEUy/yAsFGz1WHhNs+b9BIQjQMtI+4etANcpVRV1T6AGkjRa2+POG2LEP5wSLkXwCC84ZGYYr3rQr5y5HVKAsFURQTZ44Wbgv07nbcEMBGWm2Ba59GsmoDhEXmL0JuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728457554; c=relaxed/simple;
	bh=GsRbVD2UFH2Ip1NTk1Fha0ycE0f5cUWqVEaNLUk7zCw=;
	h=To:Subject:From:Message-Id:Date; b=hft/Jji9mBArFQLF2T6UFCBIuYM3/2xD1XNTLQ3HqhA89cu9XlMOiHuD/bGOGMFNSu6hrsRlu4Qey4cFEf+4RmHVezRSENt8C+h2JctMgQrOYCXUAJvgW1ONO+lFXuGH9xvtcijP1SVJ4KYsE5YJQtF7KM5C9GJrwdJ8xh2M3R0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s70Ulnvx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s70Ulnvx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B13E4C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728457553;
	bh=GsRbVD2UFH2Ip1NTk1Fha0ycE0f5cUWqVEaNLUk7zCw=;
	h=To:Subject:From:Date:From;
	b=s70UlnvxDupOChiTTvTSDpfCwvX2f6jcFNER2+6UdaXsZW0EslPHWFyJA3C+7DE31
	 1qP0DQqduBlbROH5zQoR5iN43LnSL9S+SU+KUOISl19XtmxkH4K8Yr8GHx/ZVdMIyz
	 8va6UTFmt5JtHpaVLLIPhw85Q20fFFnrxK89adZadJnbVG5Kz6Zhc8eUHbMxNzonRz
	 e1Uv95q1p7YmrUYEFPeBMT1we9i9OnT7MYlZMDxvf7p5aD2Iz6E5zIBau3/cNafYGV
	 WyepKvp0TqQ9z1EQZB9qL9q/U73t5HcUerBKWSJr2eejlMnhYIDHCfRUoY/+MUwOpn
	 yFvtrnQ5SabCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C32CED615
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172845755360.17462.4124979283220590931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c489ee6944c7672f1d7d3b3ef0c743c71e0f5b3f8e47fdea1b9a905d38afb010
Date: Wed, 09 Oct 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728457553
