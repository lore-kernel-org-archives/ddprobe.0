Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F9361F5617
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756610994; cv=none; b=KxPzN/qiKZc6cb6RAA8fBNJ1ikiwNx3h7e9e8E4AozJJ4aMANhbXnxviPRtBgUMVz/JX4fcxlrA4EgssynPRUBug8mtlGbnceANf6nk+5ERf5ETDyVqBHr40w7e7CGhWQFQWkhokP9tlmrnp6zjcJTPS9Kx/DYDOdPz8tlukJ7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756610994; c=relaxed/simple;
	bh=padRgI3RBBgkWXLjdDdsKnBnui6E+/Ver1EJ97o4EAc=;
	h=To:Subject:From:Message-Id:Date; b=N5XQIjoF0hfJK2a4UpFf/fhW5c5XMweDauRk63eH2eeXW2S1I1VKc4kapCun0ykMhbJb7zwXy6swcMvkn4mhN8D/dTrebs3fK913BOhZCWXr5PZKmPCNhe/csq9A0QNbGxb02fIzBLkjSAF8S4Qlpz1hFmtoJnl5Fhk32xvxkHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4PZd1mP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4PZd1mP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A580CC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756610993;
	bh=padRgI3RBBgkWXLjdDdsKnBnui6E+/Ver1EJ97o4EAc=;
	h=To:Subject:From:Date:From;
	b=b4PZd1mPiW3P8AOuifHkE7lR/P+ZYVN9x9b4PD0CQ7NNUf/qj/8yIXW3dKEdVnC2L
	 fjccnUyu7nip3vj12fP8vlhz+O5AEXloO7rRIQcKAmMI2ydQNvoj4Y3cbpS1Pgio9c
	 QcIY3ShaRYIh7sPbIFsl2tIljktj59Fboxd8gy3T8OYP68R03BVNbKNnlSnyiNy/dF
	 2L4unN8sLM5mfffqOL2GaokSomVK3OWlSp7XzPyl8tcIx9kUkCwRjBu27j9MTY1tZW
	 ok8Whu3GG7+0sqtB4Sqb9mi0iXkSt8B9j2reIwUw34/n8R/TOL8ugDzf73osIj2b1v
	 9w3PcDpjFf5Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91150CA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175661099357.11324.9940667540991515949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91491bb8bd2f7c762c34049811cbe6cd90a95a95003cbf612dc527b124d291bc
Date: Sun, 31 Aug 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756610993
