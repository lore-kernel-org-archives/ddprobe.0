Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F2C21B9D2
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 13:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765719774; cv=none; b=aWdeM52FCqn3o1niE/RIzNPIkGw7NPeIpa2MKsuUGghG/SEdxUTpB3dC9O4B9icahalJ64ADFM5cyzo+4qiiqTFk2Dv8Fp3MioFD4EYBU0WXaHb2/qakYjrJ3iQRRzGCdCvwm2qasm6gDEOVtVheGR0OOFIg38iDmAjYHS82pN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765719774; c=relaxed/simple;
	bh=m8ghm8m8B58hZ2B9R9HO5YcXASBoOOXY21u+kCcU2is=;
	h=To:Subject:From:Message-Id:Date; b=jhaeYcqcHxatwVw7rxz/yiF2ClSza600+o2TLTwSznRjQnVT1t+P9IWLGvmlnTukAyjKP6InRcS8/pP/G/ZPlsngkh4SOHFjKeZechl63SSgCeztjEt6kZNZk6WoebyOVT7eFbGJ4YqqBRt836LBctCOTvLaDaAQ2RjXcMGmO74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3Ut1ZW6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3Ut1ZW6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5FEC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 13:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765719773;
	bh=m8ghm8m8B58hZ2B9R9HO5YcXASBoOOXY21u+kCcU2is=;
	h=To:Subject:From:Date:From;
	b=D3Ut1ZW60jMSjvAOPNSsFK0NLY8v40bXhQHEKOtfPjCpujbZr1eWunnlsFT8L4k6l
	 ZMbrcht1way7EUh38UjOPxhC9cmaPe5R+p8izkWo3yXR9UDovVQPNJKCv4Gpado47B
	 RyimYCVykZQuKnz/hXOF8mOGkZKLI4adWZyMRxp95zhF+GZpI4axIGdVtGG8furoxH
	 zFpyyH48LGuDFbWt4zZWbw3l4o6j4QTzq/ZYajHcZ0bgA3pQmv8tcFW04NULAKqPGx
	 JryAUWjbaqEg6o9q2jjEYo34Ee4aRZ981Ey4QEyK9Ztpb1hFE9l06GFZ10ygwMZr5N
	 i5Hub1oT/5GbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D45D59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 13:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176571977359.21445.5415781280186927534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31ad16fec151da34e87a3b914a939bcc1a3539c63a2d8e144b7ed73f2a87a3d2
Date: Sun, 14 Dec 2025 13:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765719773
