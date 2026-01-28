Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05DFD3451CF
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769626434; cv=none; b=qXgCjG00tTgQddNAWDepCKqOxYpyQkmH7hWjruIgnVRMDbHktiTfaU44hil/xqAgTphYY+M1I7y8F9pquqtROMDOf3wNN9J492xBsQmoBXogZTsT+0jQUVFo3r8/2aXADvk78gV6hW3NK9krTrxJdSWAoOHX4J1Bq7K/g4qJnx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769626434; c=relaxed/simple;
	bh=ia6IZDCjth2ePRkkN5j8I9o3zpwk/wDP8WbtER44r4U=;
	h=To:Subject:From:Message-Id:Date; b=EKW1lIDhTeh+Msm/mpCuOT6myg1uvVABLzd9Z1OnKlzSbaWvOYn9T+e1GxPM0C/Ai9dip7QZ01pNdmXPMH9Hmzn1L9HEJFso2wBMwLO/bw7SJC6PpCrVgQ74pXImTnHQeJv1ksUo2nu/MFYoqp44/HRhKtCrll2qIV2esZBpmf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j16zNgio; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j16zNgio"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF6CC19421
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769626433;
	bh=ia6IZDCjth2ePRkkN5j8I9o3zpwk/wDP8WbtER44r4U=;
	h=To:Subject:From:Date:From;
	b=j16zNgioPLcjQnF7nkFi+VoDouk56kIZj1rv/pCIQ5gI2ixAko+ZxOPQL4+iddPH3
	 raaBmsOuYadfArjt+u9/RsLPvziK0Kzx31P/pGYyyy5bmin1ejF5JylSbEmsEp/OOP
	 38H4eruIBxv/CtlXb1kplEaSXeyCsvwi26iSMJGKE2tHb0KtBIbRg3pMjW2eSScVr7
	 FwCneUib0hItcZ3DZ+P5h6XmLx3+7PpAzKGCVD0ap/5VbkhvbS6jtcN3cKDn9ECwGd
	 7BGFHXmqV9detaO+veACTFSbntZUCgcWFQlzCIoH9om5MmzqpOBOtofr/V+7D/bE4V
	 ySNjJ5y1VvydQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9161AD46BEE
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176962643358.16978.14889663668608528497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fdf690021f104d40c9c2627e9baa5c51d1b35e1fa07a2f61aad4db72b775f10
Date: Wed, 28 Jan 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769626433
