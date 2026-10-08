Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0E33BFE2D
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 07:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791445834; cv=none; b=ZdGk1FoT7Qbm7zvWpItjLRLXxMVosdezSHN2eDB8axf0xTdpR3+esZ2N3IZlr/aht2RLUh17sTSRxj7XTEFqxILLzTtaKHRnWk3vS2mdnueTtTEW9G8PA0t+YTaz8/Om88hauBMP6T/jIDy0Aaz2v73q4N/UE98/q4sgxPRTUYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791445834; c=relaxed/simple;
	bh=brArQRawwsqEUmDswlIWoIbjuaKQH86SuzNr45fcl9U=;
	h=To:Subject:From:Message-Id:Date; b=YOgGxnY0HnHoJQgRdLo8XIv8zpTI4xh4oiOnZ8g9dXaxjzs43p58UlM4mcym08nSxdsF5hKBay9J0meE5wp6bL2O15MlnFknEVPFNV71WrLwD7CYd4nk41IxsVBZprxuZp4sIHNCh9Ue4ZcSTZYPC0CaKjaRJss6kSG8o+rg+zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TzRlJwf5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TzRlJwf5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC8CC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791445833;
	bh=brArQRawwsqEUmDswlIWoIbjuaKQH86SuzNr45fcl9U=;
	h=To:Subject:From:Date:From;
	b=TzRlJwf53uqo9yMNNVTLQEErqAnh9Qlfu+T8MXQM6bw49Lq6+k4psTr0gjVUI38Vj
	 9JzMfkTCp5kOuzmrjVU2A/IsxCOCCRXtd10iIAeclLhjoD+IUOnFUyPG/AkAa7K3HQ
	 ar+qqww9R4705kbQKnb/CliKqhidcyAX23sJThs8DLLtDOLzl8mBRiXX7oeCDCRRgp
	 BpjMtKb0/oVgMGDSTYIv31ezE9UnYaMghSzwhtfF1FMq1qbXEkQ9I6Q9waaoy1B0eE
	 +Kp/FOJvrWJwFI9JRr0wLmC/pBMVgpMa2WkWQjRtFlv7gVPUP/sB+xiKTSzHwxm2kE
	 8wFbEsu50qLgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD95BCA600A
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179144583368.5374.2132453357087199548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14cd65575423dfc4aabc5b8de330d87f5591bbd05933ef26deeefec3e5acad55
Date: Thu, 08 Oct 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791445833
