Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1851917C8
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 03:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711252097; cv=none; b=rDERqPQ6fM+msGMoqLqVv2pJC9Vk7RHOlHSzPG1Xs8DskaS/vXnCtawKTjeUpm3nl0FWT2i5pLcNwitaJd0pdys3GvRVdQiqazotGx2LvBR3CT5tAC4F+BqwxwsU7FnbIayoPTWoUF+nP/eh72rEsybhm+ozMmlB+E3NqjD4MuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711252097; c=relaxed/simple;
	bh=KJmqWVsvFBm9IN+rkAUBrt/X1Yfm5pNvqupdx2y7UVo=;
	h=To:Subject:From:Message-Id:Date; b=QOuFzUNYI6WZn6RVaIKeprhVu1mfFfMKu0aJfXKZyZgHUODYywTTIt/TwtzQthB1/Ym/JuyUURQw15peISPvQwqevrCXWLNW2mOEbF+D8m2kqF6R+ANbb7A0D2zrk9TLqcRPifEwftDCjU2GmBwH0pzu2UAOjSKuM1DhVX+M1zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mWt1ZUJd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mWt1ZUJd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85BCBC433F1
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 03:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711252096;
	bh=KJmqWVsvFBm9IN+rkAUBrt/X1Yfm5pNvqupdx2y7UVo=;
	h=To:Subject:From:Date:From;
	b=mWt1ZUJdRfTcoP5Rh4mNiwmCjBUGv2lDKYkliSaV7HlLNk8smp+HBfp0ZwzEqrlp3
	 wnCeLv2qRkggmCraYpDLqaZ/WRHN63jPLTj7S9AqKT/nBtCKzLHMYhW3MYYccwQNCa
	 PevpGwGrtCSbLU3AmmIJbPp2FE/gue6xiueFAj2ibq2QzwziCklI3Y5yYKlNs9I7dW
	 eg5un9HArVF/DhvQ+x01WEul2iNy+GecFzRefqjhD2fJFqkzE/rAH3FioxHYJ69akV
	 PtQy0d2OPFA5wt004gplPxbGaL+zddKef2WWaWB0NuK8dzNaHHdtkLe6WfzkxlopMq
	 G5lzR0KIPM0Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F151C47DD9
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 03:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171125209641.17595.13701138660376498273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b87acacaa691f74d21628f3264e74d56b0e182023a3a8d81c359fdf90e174d66
Date: Sun, 24 Mar 2024 03:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711252096
