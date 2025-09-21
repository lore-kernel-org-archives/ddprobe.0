Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4C123ABAF
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758449994; cv=none; b=dT7wCdOjrMgxBfBt6ds+57cWyGfWZuoLnuKfYm80+IU1byPK9Wuskj1b/E0ULs9U309h9g1PJo9VTTiiZOKVATbqwTxqD8I89XAP3DK6g94D4iT4ebrvlIAVQNlJjHOwm3G9b6jPazqBfISkUD2wkjC8P5VOeUugOkdktCTp2Y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758449994; c=relaxed/simple;
	bh=MRd7nCDJAySfQjtEatgkWsK0LqEZfVl80wtw9G3WZJs=;
	h=To:Subject:From:Message-Id:Date; b=H2ByIQwC4/b/vMiZRtJlh49LXLVF948broaSj29SFn6Xkh8YhhEmayrledqOckTEqPj62uYQtqDatiiVPtnDr+iA72TSCTawuZP9z5NHcvLOVVy66UqFb57T23yZPG//dWjc6G/NZcAki0OxstRYdW6UyUYhm1bZ3VsDddVPtzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZyIu+Qty; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZyIu+Qty"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3871C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758449993;
	bh=MRd7nCDJAySfQjtEatgkWsK0LqEZfVl80wtw9G3WZJs=;
	h=To:Subject:From:Date:From;
	b=ZyIu+QtyCx08Fu1g5hHsibQxy4Vn2iLk+QVX8P4DUbbQ+JBwbSqHrOim1agn5W6gm
	 ToEg9CYpfD0/n4atv4ZwoZOUjS3KU2sjo9fnJfV+l+MqOu8E7T2mPW6VYKe5sFZFkA
	 tg2IjCu2DZnG8vu4xSWp9yDzbT3DsHAqEyIYyiJSwmYfeX71jE7OyNMKolylECRGt0
	 40JYCQNVn5jzRS5tziUpVsZ+OCLfn92gCdBtT3f3I+Ts87hJFD/dvPPNikWn4Mp4Ze
	 trEUNVOtF+hFFBkZO8TfQOCLRaIGAQyZAbplOscyrlIT15EoNwB4xzHDcagobDuWGD
	 OUQEPKdIytQdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94418CAC5A8
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175844999357.1798.9287042585279054991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a079c0215e92fd103d0482e46602d4c980a088c7eda498a51b4a11a210f9264
Date: Sun, 21 Sep 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758449993
