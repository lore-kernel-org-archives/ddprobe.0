Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1387F3A9612
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 11:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788346836; cv=none; b=dzZQAJe4FkeCald/7V5wTEyjMVs1MJc5B8oavHn0TgnuFPYfQMHO6otvQqX47U/H/PZsv2/qGwGXz9dlik/ksLs6z+G98M4lxu+6IdeeZ263KNGQVmReHad9EQ9M6lIOm0LQE0iIHjexJP3rdz8VjmSFvnMrZKlDINDnoU9MtPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788346836; c=relaxed/simple;
	bh=Mt0x/Z4Ek8RHZuDw/uX0gIHElnarJ+ZneN+5sw7yfd0=;
	h=To:Subject:From:Message-Id:Date; b=WxsdJdUZn1uf+nc2Ak5Wgx9MWTIq3T/b7fDzqieWcN1SR6RDY1Mr4EdHqjkFU5DvBuB+dZrGuQHn/MzWByJ3QleaXSx15gJjf2s8Etf+CVse5tWSe56qjNZX42Sad8+h8fvCRzFxNq9BRzPx+xEyKhAkzTur7o5TopbRkkPgS9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RmGETxjj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RmGETxjj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4438C2BCF7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788346833;
	bh=Mt0x/Z4Ek8RHZuDw/uX0gIHElnarJ+ZneN+5sw7yfd0=;
	h=To:Subject:From:Date:From;
	b=RmGETxjjV78i9CHgTkB0jXp24IoMvAZHo6hO0kvGcQwev1TdNplIEopE0oIwvxvDl
	 6VBz2YfHCxc9MdGLoKV/RloFQDVIIm/m+x33+0DWaJXDYBprJi4xPqDmQh74j3ohZT
	 GzYUVN9810rU5VsRROaVF7XNapa4yBTu/wTRQZlBn8rGR3hP43T6BjhD04TO0HHXlj
	 lAzAlNIO4o/z6T4ppX6ihk0lzE3NDAtLitm2hTWHhA3qnq7uI59g5i4rYz1GJr4KCv
	 wVVy1coir00InENnO8sU1ou4j8hwWC+nQNcfJy09YavH3EP2O3GVfP+isyrZFO/aqq
	 M0YBVla9mEweg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC37BC624D0
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178834683369.20036.3975566517665737144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46f0202a526f838c3afa5df317fbc03a24916494b707b4f7be9d7c93f81c76bf
Date: Wed, 02 Sep 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788346833
