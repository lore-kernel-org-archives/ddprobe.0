Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3583BBFAF
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 16:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782576514; cv=none; b=lDA2yRiDRgeNxvtg2swYdjyhdtbZLwdt6ngycHGuZwRH22hS2w+E3gqTvFurU8s4wKveD1htYoBdZ3rH95ovFhuTMG7RtsUTcaG8V9iiydyp3g7T8RCmyjNU5zezgQJv1heCysVnmP3V/mxfJxrdwFBZhMcaCne3voNu2aB6Gok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782576514; c=relaxed/simple;
	bh=uw4nYAd0RnCLtAV48V6t1knyrhfgz/QYI4j8qUzneN0=;
	h=To:Subject:From:Message-Id:Date; b=ffz7W7pS77yDpBH16FFvU0zGna7saQeeZIcvbCJ/KsaDEVBSs23Y5GZdC9QzxMUemOFVlgBpwtjVVRPItKKFqv5Dh0fKvI9tuQL8unc77nQnUJNjCVe450hJoKAzgzAanxaPQFR2Fnyk8kA+TBZ4th/DZ7XXxjXAYLdy+S94iMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nEDP4G5j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nEDP4G5j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C332BC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 16:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782576513;
	bh=uw4nYAd0RnCLtAV48V6t1knyrhfgz/QYI4j8qUzneN0=;
	h=To:Subject:From:Date:From;
	b=nEDP4G5jr0T6RmTU0cKB+GSoYoKLaihfM1reK70puB7pBs9OftVa/ZzJ4Hu5XOdme
	 XB5qCbqt3rtkCB/OzLjEGal7gQmuxIZQsbguSokSGJucGgVwqXW0M0jBA00Yi0ID20
	 1Uv5PPYgrhxBBjK91BslegpoZPjqLzUS9uLA8FnIGeiyiEpiFzET6iygE3qTEN6sDH
	 7OE+gG9CgjZz5B4QWkyudhhSSlmFXpXJQqScGseSbpstWpFz1VmVXs/ZV7GTGShXAC
	 d/ppXIfJzJY8BARu8LxHKW77eajtzCgjLCXB4fPFfYv0YCpcFhRjXrecwtZ5a3YiVo
	 NUmPqZ62utZOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA178C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 16:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178257651368.6316.16131608397476947431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8a4904d2ce56f22eb1e73f57b800c623867f10c78bcf254b589459702e443c5
Date: Sat, 27 Jun 2026 16:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782576513
