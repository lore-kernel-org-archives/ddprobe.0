Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BF3217F7
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725755154; cv=none; b=p7xV+sOcZFOLjuM2pUHJEWVLJHiHJv/w4lFpbRZM8PimjVFsJYW2OMooxRnaGTXCFhk6Zl1lV7Vwa9tsPbcd+i0VW5t0eyCp0EQwyFOxLBkn5rC1Z8GDtdLbMTMioYPmOKC3v0Fty6l/jBePu8Psiyy+cBsfHJWV+jTVUzc74U4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725755154; c=relaxed/simple;
	bh=ou0SF64jmrcolksLlzTtNxRS1F1rVXFx4MgR1Si9vIc=;
	h=To:Subject:From:Message-Id:Date; b=ewNJF7HFGGw3g/cvSi6HEplJCxx/Af3bB8aOoQW/M17jLbmWO4b+4p6cIkwHmlFoLSAgSSsWCBGKHn4n+UpFf6TiVgPCDtSLo1beqIDzjZai5bGCv7/fHNDI+XZENJN++PAZROoikSY0HUCgmbn21m3ggH0Qe7XGzgPw5kBrsEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=urjpPTaM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="urjpPTaM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B46BEC4CEC2
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725755153;
	bh=ou0SF64jmrcolksLlzTtNxRS1F1rVXFx4MgR1Si9vIc=;
	h=To:Subject:From:Date:From;
	b=urjpPTaMDE2T16URBsiux/loM8oZx6Beu6dvKIM09aMC5kTsQvNUNNdLWSAu7AS+0
	 kD14SyJeqfTQA4SFEeyXpO5AHuzLdvu+LP5XSFfVUU/T0BnE71D14samoKQrEA9rQN
	 PyJTNWp40AL2mqu+83pOyfkBRe2bd7BBMBOR/hzO0OtsV54yKE/nsDnppq9CcEgiQX
	 x0c6SKEyxzA+u0KO+WHKPw25MjvsvjLnmy4UGA3D31Ds7SD+900Yp1oAY32PCz6oB7
	 PmpeeovkgflFzG2RSNDlcBy/eRv8nFVLrvlCv3nverDcv2kNQvHBJJenT77Fve5nYa
	 1JQTW6U2NPjgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1C42ECE577
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172575515362.1380.10633732053444939289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3266ae15d8871b25b081cf2d6e31509fd2cd315d4a4ab40994084bf5dc7fa04
Date: Sun, 08 Sep 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725755153
