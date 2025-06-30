Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 600BF282FA
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751296794; cv=none; b=FMQff2BlM9dlrunl5yIUwN/cYWi3kTDoogMQRJ19/hiQxE4zxd5iygHFhVz4pm/GnwCtpUGjRLkLjGrqT0yWqHLZ3+VdzFoFlOSmn2YfLhn5sajMlLiuwCpLdvNJf2mR5PNrWLVyxmVp6lhivJ4uS1TE7Aana+FPfbCNjXUth8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751296794; c=relaxed/simple;
	bh=pOemJ1boEdW3a6Gu0XhHC4gB6PTZBZdUdgjvbjojf0A=;
	h=To:Subject:From:Message-Id:Date; b=p/jgpeTb7F5edXdKLdE2iYknfMamqYldoC/b4lTDJ0SOUAlKFq4DchMbhK8aFeKZdwDFXNy5zyGTfi7jHxPJrBJoEIbqetul/VDdbs1V/oyX/T0Zz/QJHDOxnwiA82DLHy8J4otRtajSgcobeJPBr/RK9C0juYn/4/YLm7VnoRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ly4hYf03; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ly4hYf03"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD47C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751296793;
	bh=pOemJ1boEdW3a6Gu0XhHC4gB6PTZBZdUdgjvbjojf0A=;
	h=To:Subject:From:Date:From;
	b=Ly4hYf035t/Y0xhxpFCm/CeR+slAepNXzaejB9i0OjI0Lx5ghJ35hUM/hm69XtBH6
	 e8C1lA4oa7P6K0OFMikVNi1C1hkBVtnj2+EWrhPLJ6FyM8jZ2jqhlC84Rpo5j+qLnC
	 BZiwPPoI+2nDdYOoVX9QGXuDchRReX7q2oCC/uUzUkvmYCdxjSyiTUhcMqBErtki1o
	 6zI+47T34AdJi2s0pIwTRgZ1CCKMMbzDY4k0cDF9jjF20t5EeVaKQs+sgiApWLKF+I
	 hXOf3RWveJXS/l6EaKOvUnmnHxoYbz/zxd2UYiQn/nB33kofK1Urg1mhM2fJ2GgzqK
	 oGd3d8Rd3B0rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAB2C83029
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175129679357.13104.8921146611163090458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fdc16e499a5aabfd298a9c725446ec708832e0f85604a3984bcc1d8549b8cc7
Date: Mon, 30 Jun 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751296793
