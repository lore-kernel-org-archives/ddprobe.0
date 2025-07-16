Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2C426281
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752641394; cv=none; b=frvOZNS231DR5UOQhUJZNntQ7fV5j7t/6nTNtf3YXVwW3kKBKXAQayDjlbhLKxjj1ALML/M6rgDtdAndj6VNThSVLOotC46SW8aNpCxWaRbyTo2gzh4PWIyVy7O9gnw6T0TX0AZ2jVXFStJpkCiQJlvIuByOyauSNHiI/zhTotY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752641394; c=relaxed/simple;
	bh=edBPR0LxuKDaktx9XATEP2+R5caOh3K6ffveLIwitIs=;
	h=To:Subject:From:Message-Id:Date; b=ZW7uu/wTV1CEJXBmkGY4N9Uhn+GgEIw8daEgQGUVTwj+KsR7uDMuEhq5FZm+0hbNp6aXoty8Lks8WFxZGnBjUc9jzzi4PtdvMqAl7oN+l6b38S/Nu+ZhigusX3UqBGc/3hEzIO6M8qOub1T9hK7XpZEglfi6ACpo7aV5RJDoOOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cJNT2ssN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cJNT2ssN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B1DC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752641393;
	bh=edBPR0LxuKDaktx9XATEP2+R5caOh3K6ffveLIwitIs=;
	h=To:Subject:From:Date:From;
	b=cJNT2ssNQumuvOusHMWDA+1DMZwZLZBP06IC6j4yzd9gEQAcFxkvZb9YRzC6knsrT
	 e4N/Yqg+JSRyThD24YLktl2WeY2jPOkhY4XuGu8L5KCBNWFYgEpgnPenJ1T2rhmPTH
	 7OWvf72tQVSncIeFaVOONW5prGWh0O+99qe9DfUM9hK+Pm9qjW9+vQt2FYuTUTPO0f
	 5AAUNqGUqQvrfcuF05eczh5yZ2HBQ3BZS+8tWc+1U0tfVCjQwrwsH/FevCre/CHiGA
	 kXhflb9/OZLfT/IXqwiTdEhZscgYZatH8YSfiS04sTI2ANujFb4VrAvLvXM3IWu+Nx
	 W5L0f+HY5M8Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E880C83F27
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175264139357.14963.9448298776928177311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68e8f295313b50510eb78dc0f1f9e0d000df386ca8247eaa6390064ebf4619b0
Date: Wed, 16 Jul 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752641393
