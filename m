Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE0CD29B
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708685297; cv=none; b=KbGugJyPveq2vMbE2/2diiky5yU+yaa8Y0xjouzRVcgoLSeDR7PT5wNk+gqj/ZXkahG9C3zKsrDAgrC5L6MGrz5HKR1LZ4L/d69rC1S8oS9SUY6ZemdFx7zAeNO/Uhsv9siqWqyFIEcMYivdI6usVtgYoEieVEtWt1pvYT6MSdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708685297; c=relaxed/simple;
	bh=vnEJEvo9FrT+lQuniibewEM/SVL/biLN3zzA62PFPls=;
	h=To:Subject:From:Message-Id:Date; b=u6G6cYYsboRTUmM824rTOU/zqtBiuXcoT8RO1Ylg8yZncm7NL+C7zER2UFEytni/KYXEuz3rWhTQxBOxDl/YqvyY0/lsCZ+FN09mcsuSqtgRyv/7E3tdLvgaFRgw3aVU7j/FXQsjYwWVmo29iggk0JOXe/anO9ST12FVRKhfnyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BcX/x9MF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BcX/x9MF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CF7DC433C7
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708685296;
	bh=vnEJEvo9FrT+lQuniibewEM/SVL/biLN3zzA62PFPls=;
	h=To:Subject:From:Date:From;
	b=BcX/x9MF/T2gGrNvdXZwxkg0Re2xsdWENf+Y7kDQngrSBEB4vro0ma+g8mVff7r3U
	 yFCUlYennTFwveWXs5t5LpiStzWKHIXe1FYUknhWTeyiCc98Z3XFbjQXlArexPOU7j
	 LQjqwRBnIGpcxn2V52WdWDE+YJSY97cs3tOx1Lv/ZJ0SpmGsmlLjmJ31iaJa6Cd2a5
	 Zww7V/T7lnygq+KMfKH0mrhewMAgxqkRL2dZwvMR7r0mVg+KNSfaJ75XBBhCJ0hVhZ
	 8PsotSJy1Zk2S9yndhbKun3AA4BaPK2XbvOaP1mbSyQU9+Kr+h+xRls63aMlXX1DB0
	 Hlzaj+RNHLMkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71C7FC5478C
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170868529643.14047.16354737102390421267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25dc52748677978b1f17223e9eca584e505e6562d395fb7a646dd030f24ada19
Date: Fri, 23 Feb 2024 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708685296
