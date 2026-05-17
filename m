Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311243148DA
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 02:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778983834; cv=none; b=WWXJfV5+Zjvt7SXv83y8E7Rgv0eIMDCPb9KCR3RMXLW4I/hFLP23s1KMf13SPenJIR+PitIV8xGGATn3E+7BFPoscLvPRuJNTXJUkE0Ybxy4ial15iEu+7/v9d/SrpU4NUk2EHcjUGT6PNAk9r10UbzSAPPm5h3P/MdUFKE95tM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778983834; c=relaxed/simple;
	bh=Z8Urjuch0Xnq/IkL1RgyqvIZCKHGHrdRTAZYOrU9tJw=;
	h=To:Subject:From:Message-Id:Date; b=f6GKeZlxaoKXjtDTYpLaVddxWSz2IREsOvx6/Y465xxCF7nDer537w0KrolSYFRKGTbMX2HrH02GN0zoUHgZqqAdMQfvM6MgEW/NIW+URNt9WYyx8REJ4+P4oguMEHeV4u7/96IXW8/JJpu6NbUJ5+MPB0sAxZsc2EclSnSZvMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZWGBU4B5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZWGBU4B5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4481C19425
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778983833;
	bh=Z8Urjuch0Xnq/IkL1RgyqvIZCKHGHrdRTAZYOrU9tJw=;
	h=To:Subject:From:Date:From;
	b=ZWGBU4B5kQTRXOPq9tTCd3IEfW24IrRrQydofkGDztZsLl2PwKL288fjOSVkiKBWM
	 pe8uGx4IYmBUo/vPuYPLM5RylWouuSyWk6b2WBsEyCPgkTCfEoBL5dvf2oKyIZbJZ/
	 wExxv91PXoZsOowtYwn6kMTrg5/5YtxcvMft1AYcEvpar0GXb7JwqWxcGfvFf0j7iD
	 Xbv6zawEKO76AKvNjZnPMze7gFVWauHIHbmEDUEjXm+czsTrFsVqjSttVgGwb0e7EJ
	 a9E1Y/5GgzfPJEz0ePBPZtLaQcZJCVFUTW3HHxRROtgtQm2RAhhYLXGvJXC87MjVnH
	 0zktYSCwmo/RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAF0CD4851
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177898383369.15322.792719141914737962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 104035b10c868578db58a48448db746622b1b6687055953330e075c4325d0abc
Date: Sun, 17 May 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778983833
