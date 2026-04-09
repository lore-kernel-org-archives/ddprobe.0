Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB6C3CCFA9
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 12:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775738194; cv=none; b=ANi1MkxEujwTH2qTBnK8fCw5QFnMTK8IWwxAcSlDJinvvi5iFYzazM0gpNRpdupBPN9wKpvKBk7ooRqCOSMmHYL9yb4qH164vUMrHawT3UljIHkhJub+zUc3FKrxUrarAGZMycCtuqV/8yUch6gQmbtdanOLQ7VOOE+onOdwzt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775738194; c=relaxed/simple;
	bh=08OfhqjbLix/smIf8LlWwdm0cUDAKHyxuZcwzLVIApU=;
	h=To:Subject:From:Message-Id:Date; b=YY+PTh1YElKsRkdc+Crce00SIGKCA1T4Um4sNbmHKyxyhiTBpdh/zNtwhlQoD32EMoo1ZdgS3NJZZQ1PBa5lsr9Ryuwy8MovOOdxDkY5SYHhEpNjG+SMWZfgY4DuHz6OVmzkI1XaeWifPDgCRxWNKbDHhipIoSydDtsP3ZvUkTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lhoq8e88; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lhoq8e88"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0AC23C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 12:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775738194;
	bh=08OfhqjbLix/smIf8LlWwdm0cUDAKHyxuZcwzLVIApU=;
	h=To:Subject:From:Date:From;
	b=Lhoq8e88V2AQH2lewet7q/dufIYWMCfeMsKilXhwUCUKamDovRnybzEak0PYHAtLi
	 4+74AK8iMSMtn0U966eR4y8FjZ0oWGV0mAZzgeBWHiv65hcVrPC/8KprE8lMoQ4m1W
	 iU/IAIAIV9r/LuYhQXQP+lbUqd1tq2f1VHS6wKoBHCq1yD06ftixq/J0Ib5RGdWsGT
	 rVaJB4MmgOhJXzTIk7SMCYGSCxBYNLQkhs5MEngMdjPBMjKu9URkqgQseUze1yJwnA
	 nAkgfXMUxNEICzSet8FQtnQPeo8ewxfbkKhY11p4dxPeX0UR+mQbqU41Plq2DEx1YO
	 yR7OZ8g4Da0YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD6CCEA3C59
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 12:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177573819382.10260.10351189933253467780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 820b2e8c1d8b7131fe373fe80926fa66829f4153677b3352c7994c387a32565b
Date: Thu, 09 Apr 2026 12:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775738193
