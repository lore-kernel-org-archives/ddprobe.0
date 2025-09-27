Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D784C98
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758990594; cv=none; b=rJXDyq/97EOovPYh/HDE+fc8lCWEDUUk0bz0YQT45j3KhMpK1uUyeHEKpUgcKjd2uKV8gZtKr7d13xiACfyHezrtyzUCzz/jf1VfD+4vLW9ILnML7/OoJqGF0o/gOQzDPpHTlnO7o7tBoIcb2e0Oio1Ve6MBi843MtVhWdxSPzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758990594; c=relaxed/simple;
	bh=GraOyN2fWnx19clDbS5DGpLvXz3MEyCwHKUDzwBT+NA=;
	h=To:Subject:From:Message-Id:Date; b=hH4mVVFBGTm2p+VWcWJRCbIqJUB2n2JNXAK5pjsvbqaC+KEC4uhhI323uRY46hR9zLKefC8r9kKwI109yKLKLjGMcQ3vJaEKUDL3PHqOBkp0nePlLEMFUJN+a9Iusp3ZOes0kGIpm5HRd8ZhBNLOae6NyjC9HKT1OFUTw6gQVzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tMh1X5mu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tMh1X5mu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE58C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758990593;
	bh=GraOyN2fWnx19clDbS5DGpLvXz3MEyCwHKUDzwBT+NA=;
	h=To:Subject:From:Date:From;
	b=tMh1X5muoayx55chTa3edi5u1/00VuRgwqUlB4xCvk2dTqvVCPOxrw4gcab0fQRJO
	 +lb2cOrK5ZGr8LYluBlM0qlQ+rmoo/LRR5N3xfAW31XCP2m4kUm0wQ7rQ81FsQ9M8P
	 k2w6dx8uPKcsX/9j4S21ihKsAeDxTv6OXFbKVb1GzoJZpxmbTyVjIACD6NcJfbt4Nf
	 twDU2S9Y0+06BEl3SR6bQ42DUaF0HYqTFa2odX+jUC3FAZFQXK7XUVzljLjFgS//Nw
	 qH5AMgDnGta1qEILhqCZs9vKVF/aarSnxoeQ4B3TFYFZc/yWbD0ERexCvXoauQz6DP
	 Z5p6ZJ6VkQ4+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952F5CAC5B8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175899059359.16487.11505240064933342560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cbcb231da0ca38306c58df2ee34593be77720c4a6c8ad6ea45506f8aeb5113f
Date: Sat, 27 Sep 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758990593
