Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D521120FA88
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736519153; cv=none; b=F2EcqjkJQoPKuXskpqdMJJeOEgE85zwD81vZhOLLgfBtQrAgEaSTKetQXpOWN9vUYfPfvanua4k2fh/VOmKTfTgVExb+DRVvfU0PtdJIHft4GUfpJKHhX3JdjA/yMJIQKxM9jPLsXzvgxp3Dy4hWTE2jMyMc1grnJoSvvSkPFGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736519153; c=relaxed/simple;
	bh=+DDr9C+BvD1eEQCvBhuxSKV4368bbNDTjsxU93JwZG8=;
	h=To:Subject:From:Message-Id:Date; b=H7V+XZdYg6o9epI9LIzVfNc157xxn+vcIJVeyKztHcs7ewEKNbz33qTrXrwUCG0bqtPmUmgUp4wnhPJltWn3+QgMLnkKPAVL6ZPct/S1rA5WkYk+8ay1r2uYgAZlp7ErQVQrAKs5HQPqTNIhIyXFaCvEDaeVbWBnnkDGe0Tcq4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HHzUdHTH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HHzUdHTH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0839C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736519153;
	bh=+DDr9C+BvD1eEQCvBhuxSKV4368bbNDTjsxU93JwZG8=;
	h=To:Subject:From:Date:From;
	b=HHzUdHTHjJokxEvpcXf1BbYYmmSkzlwoaCXXoUM0O7oR+I6SEQoti4ucP3HK8AwSi
	 DTCei3PdPC4E2TnxxSJsj1RuiAm5pg68HBM+toPxIfKh7TqOVF62Y6bcfyPpuuZEHI
	 6CNHYsA0SThK6rG4n8Yn+jxbNkOJz7SqWITuaPf6tVvGSrf+fjWxJEApNBuZYuHiBv
	 IDsHrMk1nqe2IeiOTtBEgVZImdm8oTs95rQtcvS9ulAp9a0vpDU7ejW1hJfb1doIWg
	 Hwo+QMGxgg1euznDYQNWRtND0N0ifcnH7AUvQ++TLIkpx9qEI0g2ANQ+uyrgs0RbWg
	 mdP9lMeh50F0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACCCE77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173651915362.15425.15575671540962927814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72a1b1827af9d5f3f393ed25bf120a4d50f7d144117fd8bbf579b4cfa7da5c5e
Date: Fri, 10 Jan 2025 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736519153
