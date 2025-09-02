Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417E0285068
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756811994; cv=none; b=CSNXO6MI3cCaMb/ZJUbzmkEzXXma/3t5Ayr9iER9YQRlMJsbdqr30vbD+0cyLZ7cSRn1MoUhWIaFv34D8lh2SqmV+vDuk1MjhVkHZP3cDAWZKudAJTFh+ywijD96jBRFZPWlEmofWXvsQEOSZX/a7S6NhYVXY5G8xIOsrGZDYqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756811994; c=relaxed/simple;
	bh=7AbmVdUMXnzfh3Nx8VVWacK4zaF9yQbNjauaPKhGUbE=;
	h=To:Subject:From:Message-Id:Date; b=TuYt7xRpV5dj/5LhEyBRtT7efNj4x8vTCYwJ3aRTAn3nPFhjuOBeDrHTwVr/3sDExt3Qpdv6WRGQx1q8NA7bWkCRMxu7vKy0iIRhnalTtY/tdsNV4hf6i5AELME2jJRq+EXCMaMo2xT11qwB3IB2TQV0t9qznDUeSI+kOpzQnXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nw0RUFbt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nw0RUFbt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA870C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756811993;
	bh=7AbmVdUMXnzfh3Nx8VVWacK4zaF9yQbNjauaPKhGUbE=;
	h=To:Subject:From:Date:From;
	b=Nw0RUFbtdyf8us7dT5g8Pdq/FhwVS/mGjB1OSXcLc+cATKcUTRikVacSC3F1phlsq
	 8JTSmLS+psg5XUSAt42kPHONGiFDml0Yv+tusmq0GV2/iGENN7YydQBt06cnPXBBRt
	 LDeMqJd16w81bvwsGfkGd+uc/V6bBNGbwEn8DKr309S6z6/VL62/UukljWZ442nbaa
	 8LOIWETTXYyXqD4T5LLqAbdv4RUS8c+2e5foQCeGQB1/CSOn6JC3l8cSTPcn3oEI7P
	 ZNLBe+A6r6c/vumirZPOP5IWduTxiP5zYA+LL8HKJl//KmbKwUCfJ2T3Jg+fVNJRec
	 waEL0Y2PgbvVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D91CA0FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175681199360.15025.9797514548663343375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59f7345c2d55c2c0f8a342fcbf130805082c6d82bd5b53451f8719be4daeac65
Date: Tue, 02 Sep 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756811993
