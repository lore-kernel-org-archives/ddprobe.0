Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F825248F62
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753141794; cv=none; b=dNlQaRempdex4zShVq9WaeDQtAR3ZtWeHxZWGMfU/RgqD4WybSBjpIJ6OzyNoZk8ZZCVGy2naNfg5SPYauPutIfFgLLa7B44uzARxKwJ13oMbZeHAlKqhX0yekwq6VePcYQb78IOSTDgf+caLMy1GhhILYGE7KW0Jrgwg6sgfQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753141794; c=relaxed/simple;
	bh=1vnPz8W0+nPeI5gjRFfyDv8p+5mTTtoQqCX3t8LjkGg=;
	h=To:Subject:From:Message-Id:Date; b=rO4JJjOLmcnU5GlfOz0eQm5Q9R2eOkb4r8eh3wNbsfeI8+3lv25uOjz/t9MOrwWZ1wkt7fxIJvPZDofd2adR0HwAgEazwCll3jo0LCA7nd8fRkQicl8UjOAmAW2mqw2srrfs3wLfz2FsHA5gZjwBodGftNlw/h6hfcWkz3eU+JY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DJn0nXFJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DJn0nXFJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F309C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753141793;
	bh=1vnPz8W0+nPeI5gjRFfyDv8p+5mTTtoQqCX3t8LjkGg=;
	h=To:Subject:From:Date:From;
	b=DJn0nXFJl5Abce+pof8mwvGy6HQjgoU6z1YmosrG9RMfpP8HAgDvzte7JXGaNUt1x
	 lgTEmBcYqDDljOjklueRKs+fTNWgKo/qbHfrdFpHxAUN/vfEwcVYtI3Zlp6Tpmt/vN
	 kZ1fe8dPqfN9xN+S8lkrxb0zicwA9ZWAx0tGlYHQoZBBm3s5FS5WhU4aaXHtGZAgJZ
	 q8TgU6/0iqAoMQbIIIc9DYhhfHTcoiLzghZ3+myoLzPWiLk/mg1DT2Rt0fg79CWOmY
	 Oz7BY6V7f1FPJid7Y6KS6RvTZXTx5KwygryCi/5i8CHJ/Bo47vQkn2mdAQpZq7tled
	 0rcqVAShWSYtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF11C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175314179358.17526.4408864868423548196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d7a39914fefd0fbcec02a6afaaf6b52f45ca121da684b36033012a9778c159b
Date: Mon, 21 Jul 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753141793
