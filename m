Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314A913D539
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767825834; cv=none; b=mO+jMf7Dr5daXqvKS2v5787VFOnstoiG3bMJTvjg62zyKbZd5HFwFqZl6HaAjQ5WKgP4koE8nMasGKTG5QKGQYdqxJMf+tmn0Tglu55/7nWisZ+k/Y162WNmspV9yl4lib2Pu5GdxTiqxyPscDQwQEF0ECJ6ddEax6KXgs77+c8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767825834; c=relaxed/simple;
	bh=OPbZUtPyxLCXq8It0dn2heLp+u6aB5hilCq0RKZEhn4=;
	h=To:Subject:From:Message-Id:Date; b=SJz+c/MZzjCkA/6+LsNXmb6LTUuiHUt9NOQDlmpr3BQ0ORdiFoWYPovFHA/rebdt0RV+jWDt6k9GARScs02COI/OHLrbmBnvpid3bdIEADeAvmDKhxod7wlLNBRFaKXB6lxYYQ5yRuivAxQw4la3kEJbEln5E8BgwTXGFXoesu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RAyzPmAd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RAyzPmAd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CAFC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767825833;
	bh=OPbZUtPyxLCXq8It0dn2heLp+u6aB5hilCq0RKZEhn4=;
	h=To:Subject:From:Date:From;
	b=RAyzPmAdL1OR9GMRQiN1A3Pg1+kh1QLCHpNaHtxHI3OP/0QzEQOvxPF6xPd9B76q1
	 5tBG8FlVreAxzMwJfZo2FOPgUeWqKCSsJMsySycAdfQGGKp96bk8UX7kuBYybBX7w6
	 vY7ObX2ZCjabxBepSPFbynqLA0LMUD223WN9sgdvdOSuTsTGvB+pe2w3VGlsUP62kl
	 mLshTmNWzJXSXdU81ZJaoDUQEV8D46yu7DtI2ZgPd2svtlB5xSsm6EpQjF9KAzS3mu
	 EKs1tDPjOaefPF+MQhR3JYgKgFN5QcA8jT4QJ97dn7CzNDs3m0gGYwtsPHmpKuyxjP
	 g96KFX1nwI1yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9072ED0D16D
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176782583358.10373.10153184124487816903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 079077dfe7461764153465b4091a48b2010a07cb7f8083df12267fa11582b57d
Date: Wed, 07 Jan 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767825833
