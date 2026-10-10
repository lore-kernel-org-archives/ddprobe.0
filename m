Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6500D1A682F
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791592834; cv=none; b=cv2Is3wJitZebABRYpOwqjIzkD2ZvnvfnLqKrtqoRW/vQEdyqLyt/eaymFE53lgqvL4h/wHF6L6vPQunjTAZdAJ6mRLb0JjVJ5a0kXQv9AVroD7TGxOPyv3UH76WSKbz26+4A9aJrSx4jsVk3eSWpkhHgjOVqoEi7vHTHnXx0lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791592834; c=relaxed/simple;
	bh=J8mYyuUc1eLIghgPHXKuiYAAtTXKbYjp61n96BgHmCQ=;
	h=To:Subject:From:Message-Id:Date; b=bB7RCrK6bbS5FQEVBQjn4F528vQ4qoQ5PUTji+CqyejBA6cqK2C1cDoB62Z0/VnDoXCQK2Dme0UKqSE/HtSwqKqGhR1eBy2S3HtN3AdwhYZJ+YciVlKzr80gEbscQR4rEIElFqIF6jPYWUQvt8IjRV4jMzzKIo0tw9RV0XY5T5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CMHNbOF6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CMHNbOF6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6AA9C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791592833;
	bh=J8mYyuUc1eLIghgPHXKuiYAAtTXKbYjp61n96BgHmCQ=;
	h=To:Subject:From:Date:From;
	b=CMHNbOF6SmrXoC0bFpZIHP0d1dJpC5CjBDqlV+CHK2sxjkg5E8OzXCTVrQySLQ2Zr
	 8bKH1VS32sQ+p1AC+w7YuiE+Pb6tvqapgzd3KUaZo3zU30c7FkbHHZEne7/Z4X7UTn
	 iWrwMaDn0mQd4yGKUqG7IdHEfyyW/3huWsiN2Q2T7bhAj+ukCewiwv239GxhWOzEpu
	 w36NIcQKjU/aER8kbWOtuhlNwPSu8G32Vw2TdRBpvYWq2ELe0JM9U+8rBzJ1NrWtcq
	 d/XKL99wz3lNODpCpIU339z7AM+6k8nmzftq49nbwbDb7OQWa3pfC/cUHC+GPFsmzf
	 BbVeJNYf7s6gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0564CA601E
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179159283368.17742.5591655895379726639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e29d56060dfa4441b0a265376d2b051e23e1d648930b7a0a8e6fe836247dea0
Date: Sat, 10 Oct 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791592833
