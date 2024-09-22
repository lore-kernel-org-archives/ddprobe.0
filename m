Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483C02C6BB
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727001954; cv=none; b=Sn13IU1M/+syL3YaAqP+9SgVz/aUQX5LJdpfa90b2/PtDgcbRwgE7jOVauVFOtQRa+scTE/zgLrF6Lm9jGL/ZugXXwEjes/3aoDHFrL5onplwuRcAwVuplcyWuG4LRaGgikn8IPQx3WICFO5vrruf/wEtMBa/jOyxlsV8LPOB2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727001954; c=relaxed/simple;
	bh=mjmNwbxK6crEO/yHt3QHabKvw/HS7Kj6aM264nIf/zk=;
	h=To:Subject:From:Message-Id:Date; b=m9pXr3mcB3vAUw5v8zrlkwWlp0UEiYsGiBGThTgPI/Cb54XQSlLoENAQBfDkOflctJmaEB8qK26hmtPLUkEbU12fvJ0gv1EZzh9y4bC//OKInNBi0ZAr4thIgWRgtFFjpuP6ruGZtxnQa0hWD9ZF41M8COhd5hzKNBrjMjQ5M50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hg7Y2WXL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hg7Y2WXL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B461AC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727001953;
	bh=mjmNwbxK6crEO/yHt3QHabKvw/HS7Kj6aM264nIf/zk=;
	h=To:Subject:From:Date:From;
	b=Hg7Y2WXLUbNibWWegt4r+H5F8xtltH+nkSAiaTmWbEnM2ZnxWv8tF3Ww0+EyaVdkB
	 01XKViXZxLOr+XLaLfLbKRbqiA7mUNAj4dO8Ywx6vxxrSe5jZ4u3tShRTIAGeaR05X
	 F/2JwVL+W//AG7fWwgzXXSpii8bFId3nygivnGa1eb04xNon/1W88bUciq3YR/tDiV
	 KZwIUDyzRd+nnCHwFjB7xeq9Xu3XLjSPeUdZRb7gUNYtmfWXKmKZ72YMREfpMz6/mt
	 tieOGWrzzGWw3n11rcyLgTStRMnbNhEPLIyL19W7YthazjO3ldqx92ayCze1KkUA5Z
	 WEsbweuAUdgEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D106CF9C64
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172700195361.13235.11849543243960347404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2ddf3e3bce5a8b353e0ae3238c7424346d528685242e0f0970087f93b1ed104
Date: Sun, 22 Sep 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727001953
