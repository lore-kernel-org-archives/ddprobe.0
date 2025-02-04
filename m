Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B17278F4A
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738693554; cv=none; b=nTLtXrt1BKWHDmOD90Y3NOUUdW32OmG5lODSgijhoWk8YpPEle9a3qdtQoy6ce64DFJKNNV4PmQedS113HbMOAndBZDuES8fWl7aOSve6VdIRawQC+rFHhetCtcag6HVDaSXZxotBMQzNBmG60iuopzLWLVck20eangl5PRXToY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738693554; c=relaxed/simple;
	bh=44a2qcI+jqCb/NSXUR1aoTmC64DjRT+6zViJZ0mPtkI=;
	h=To:Subject:From:Message-Id:Date; b=ZTQ+2FiyoLSULiyJpfWSPOH/HHSYHXX28YvlwGAtnTcITncX+Nr1sy8V1CS/ThXPtlrogbahe9yqIBUptXkSEUGWiEUqQ1BM0dgcmpWDD9IvMSwgnHsvLG/DMacx5HjqGhRfvagih7tdC038kf5WWDKKXZcMThVTwJk4S+gOhJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eUUzV6yt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eUUzV6yt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB400C4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738693553;
	bh=44a2qcI+jqCb/NSXUR1aoTmC64DjRT+6zViJZ0mPtkI=;
	h=To:Subject:From:Date:From;
	b=eUUzV6yt9ayw6GA+VfJera8xYhGtJZKPuO0ueKvu8/o1TlUpbcagWBhnjPq/ZTGmq
	 Ik9uihKSYEHJnHV3DLaLz53InPQFlbKf8QGTC4ZUJz7yZbRF1srcCMQMZN+tKFj452
	 LD/CN8G98AMzIs/Qv3QHfjY4u4N7wf62Q8g2u/QCo+tBDkTz6USjKRHOzRnJFtqwj6
	 ewvd52pcD1pex9cNGDXTZ5OrLH9cYlst6ypqSDcZtn/Cr0jKgRRfqFL1LX696yaHrD
	 XMNRjZdIxG34MXOJ0v8HJqtOP3WQ6LC7onZquCWsjD6J16Dvhxu3eus0M7VMq5/xRW
	 fkXRdEiEB37JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94198C02193
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173869355359.12485.2823608622396345820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51a4a9192fd42a102a2073536c7df1eca6a133b4a2fe84965e767fd42b9155a4
Date: Tue, 04 Feb 2025 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738693553
