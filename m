Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427391667ED
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 06:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716965663; cv=none; b=JGnRtqdAy8S6ULh5aX4Zgi8xONDSw8PhyhvO1n31CpyIBNbQDSmp7Yzr46p6BnivSyHnWeer5WnVKyBGPRSr34ycIYXE9QCn3ftXQmi+3ayiLhC3KyT6oGAa5pCn0jrIZpEWV1Fyr96sXUdBEeK3AHlDYSYw2uvdtWfTbxF/qhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716965663; c=relaxed/simple;
	bh=HGQ7Zdf+iVUpwh+2R+a0uh4Q9sXSpW5fNYRlxK5TnWU=;
	h=To:Subject:From:Message-Id:Date; b=bzp7YooUtfob1k/87POi0GmJRd/pQRF4hJOn8E/N0qYh7cxI+fHgIz3XoZFFaaQ2iroPMavVYor/yEoX9dkdY8N1tW2DT8to9SxaiDyJkZ+mQddzGG8AKcK7Y81OMjgEiV+d8g5IW5+XWPMfP7O0+NkGR6htDcHqgXai9VJmmG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=alqhsTTu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="alqhsTTu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D577FC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 06:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716965662;
	bh=HGQ7Zdf+iVUpwh+2R+a0uh4Q9sXSpW5fNYRlxK5TnWU=;
	h=To:Subject:From:Date:From;
	b=alqhsTTuYcOp1WHBYjzFKnY9qMTeYCSADeus+D2XVjQTU170DAsPcdTnvqIs3onoT
	 lVSdtJsBkdwdDubgiSRUUBC2cYuFGSs7t6jdSgxYqrLvph86G5SthQFVuI2FSJlSxx
	 T1gchzo7X49a1lyKBLyqyKorvRK8FCTTAtaulHYqK6Vjuvh8zdC2qOtNRwSUkb9j4e
	 1tdplVqbLr65HPZve1a1vPN3oDIwBeFlA85BL0FCgupd0mrgbEdMEChOhFPoaEyX9m
	 Lg+BLQ8fbXbVFfoDk5quO6yiWrMWIleCF1Mti//WRgGDGt+yxxNMJAHsK6wqyrwEfo
	 4JTzjTMwPEQ3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF3ECC25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 06:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171696566277.1106.16422170769696504401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df213e8713c4707f33e1b3b50b6a010f0013297e4f8f9b23d8c21e412fb9e842
Date: Wed, 29 May 2024 06:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716965662
