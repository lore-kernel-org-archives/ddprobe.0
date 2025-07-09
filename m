Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369292E4252
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752072594; cv=none; b=UzzbZL8e0RD6bDOYk6NeToNsKgiHaQ7APQrAGl5V0YcIXvuwGaMo1JhWjvhEl5V389QoSZzlKSarrUSWVjyXnLsxusqHcl/teJn7L93nI7ffbkZmCTCMaa8zW/qyoEKnvujKKe8biU3Zwnxl615Q+hkmPGifdxJE5eNyXdyxXuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752072594; c=relaxed/simple;
	bh=coN9fWxcd25A8e8MmTRCH+o0GM2D+W1UZccbhK4N97g=;
	h=To:Subject:From:Message-Id:Date; b=se302YChlnrLL4uhhY5z4tL/OPa9N6cfEQFZY6a+RYOFkKkc95EGoR4HbVN5ujONyCLAA8blRch8by5mUTZABq2lWWADaOJbOQxt+KMvrbROIft4p7TIlmWhXJl2xWzRJzSm5iB3T8rPMLcTeyBa7NOlwwvxfc2BFXHEl3IhI/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tXFxc4eU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tXFxc4eU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A54C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752072593;
	bh=coN9fWxcd25A8e8MmTRCH+o0GM2D+W1UZccbhK4N97g=;
	h=To:Subject:From:Date:From;
	b=tXFxc4eU5PJ/I3xr9ExPhmBdSZ8mQXHyGNNoXSPo7pmXTMbPc/aINgFBPo4Ps+8/C
	 1GEms1hWCKPJ2BFwczHV69bbo9+JpcXcojn8orp3p7LqFSd5AeFK0t/UzSKPjnVW4i
	 qxdsTrVYDxmfWq5OmX7Ag+EkuFuenEjvRX0ml9fooAwUbwcU/VQkZ/NIXwEaznp47I
	 efdCrG3snJ8tItUa5D5B5AudaC3X0sxrmS6yVJpMslca7pXXiMeW6zuHnezknSxVH5
	 lya6tYZ55FoyLjAWEgGDVnG42dXvIxKFWapKL3b95ytYrQ9WFGDdPrPgq7ajArCONV
	 R6Bg0rB7LoH1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90954C83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175207259358.24229.10254167873037950998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e54f2f5a2831ddcf36a86524b9bfec665701d9d024658854e3530c5489179b0
Date: Wed, 09 Jul 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752072593
