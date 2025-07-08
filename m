Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5129157A72
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751987994; cv=none; b=My610ZUV3Zr3sksW3jCCktCt7j42fNSTCbmzJNjRr9kvgCa/iMldENhziXtCrOQFxtHcm4c1seeC1V9REEKeY59mr5eXRm8wUbX63lOk1FU6Aio8cmwd0F7CbZrR/xT4iGToDC4BbuXan41Mde4rrTV0zsjS7Lgi1WpqxqGC5ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751987994; c=relaxed/simple;
	bh=2bgmau0VwnPjlsvC6Aqjcng+3c2MjHDnrftg7hmdbkc=;
	h=To:Subject:From:Message-Id:Date; b=TT81txlS/Jv6DNN7iQg6Lj+Ks+IfWjITGVeOlzzgxl3fWJS3F83SRNzOSvNbAM8+I4P1J9SEfRxw6KK2xytCKIzR9GMCEu27TW2Abhv/NaMd1sWI5VuCi4nmolIUoMa+KC/cxn8yCMtPqviFj4c4d4xFP9wA4SCoGgcxsh8NxjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXGosuSC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXGosuSC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49A3C4CEEF
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751987993;
	bh=2bgmau0VwnPjlsvC6Aqjcng+3c2MjHDnrftg7hmdbkc=;
	h=To:Subject:From:Date:From;
	b=EXGosuSCnjQSVbUH1w9NSbOH7BK3vAKDa2334HuVGiuBYj/WpOO8B/UGShCROQhUh
	 aZm/mZsEuYiz+4l0AUSNmQ4K20ptAcefIkE+rm3KFRD+f3ESoIcX6oHc99p+ONRa/J
	 4hr5J/mRbOKSjdYkENbrrsl31MXn3NQRGYH83j19WKvDk8p+ZHNLzMZ9aQLZvvC/BE
	 ouzrItcQAVwmJuAIOkOm3PVf2QvFfYmkUQLYn3aKT707Ocwb0AulzbU9a5+qh8uNdM
	 XKD95oMQb7J2Jsf43PRrvY6XwSLEwoRTShJUHSeIJTH4YGfbiPLwWWEif1hnrBXXgU
	 o2RI0DLGvtUiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D39C83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175198799358.15278.4781353128863510521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d753bcd1509d9b836eb9a9cd1277d27275230ad44cee6c12a18a3d5b76eeb9f8
Date: Tue, 08 Jul 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751987993
