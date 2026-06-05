Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358064D90CD
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 11:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780659874; cv=none; b=VURSsS9RJtqNJ81CdZn/WaY1taKWQR1j010MRwEDkYRPrYbKsn6SQn//cUT2zFfelqtSoDBbRkzOwa3nb1HDL+SMdzktvFDvZenxHTdTZQ8fJhTCK5QWVd1B3g9Bso6t3VRSrdOu+jBOxMqGUxhHk5/PZiHMZnPmtOpOtapHy2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780659874; c=relaxed/simple;
	bh=FZv+HrQOaHYYRmk7AMPgSpC2EfP3Q36R7JPMmJqpui8=;
	h=To:Subject:From:Message-Id:Date; b=ITZua5TxIcTPU6u53lkHskFP3HGqVYkOwyT2UjOxV+9w1mTpSa+/e48VTMv9Fvau/Okg4vs9CQvqtpEP1ARzajAjFrPIgD1TjEh3uZosJEChdKDity1UWuyghMgY9KzK4mgdz5U9iT/snfQpdmtL6oubRnfFYX+RsHYiImWCruw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hf6j6vZ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hf6j6vZ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF72C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 11:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780659873;
	bh=FZv+HrQOaHYYRmk7AMPgSpC2EfP3Q36R7JPMmJqpui8=;
	h=To:Subject:From:Date:From;
	b=Hf6j6vZ1DNiH1g3jc20QOP9SbzxfPssAuRg+CUNBMMMN7Qz1lQQXcKO1PQqI644V/
	 xrX8lVTXGTGhPCQfELiyWcp9q9au+A3QszzZXn6n8F9hx2r8b81gsGjw/VQqjOj4Q4
	 tiLGzKwvz9G6JH1tgQRTgHA++gdId+RbzDAjtpeCPnX0q2xa4MpL2G0+tqFQyq7jEw
	 TUvDRW1mYd8m6JC71ld/V74hABzsP2WRsknqYKFSVnOCq4gMmDbzKkjB7UbRoye/Q5
	 0iglyr5Mz/jevzHmZlMuAC53u/fr0/LgpcygguOSObR1wEk6wZmwOEobJmVf6BA9U3
	 0sFwb+MQHaqRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4F2CD6E74
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 11:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178065987369.15292.5837985562531536233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b668853653af07476b9de7dcf1158d425e410b08ebeaf72f4f16ad29e460f01
Date: Fri, 05 Jun 2026 11:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780659873
