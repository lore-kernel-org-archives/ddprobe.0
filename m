Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C26A1B808
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760938794; cv=none; b=sbQ+SXCHcH1JZ2cC+XgNx4VtNQ/TSrLnaCIv7Ny3pH988fMqPF0onmfKTPEWlULYc6J+Zy8Le2LAMwN9WDhRuMhzXgyb3flPDv8xTE9ST++ON6H6W/u/pA9+IsTS+GgjXgfwqRKIzmLF6vRS23kJNIJKkVoPaNBvFEVYt1g7b1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760938794; c=relaxed/simple;
	bh=QsYCm2YOuuaHGCzC9VMTvuYvDiT6AV9TllGD3onBMpY=;
	h=To:Subject:From:Message-Id:Date; b=Z4VVoUTSJY6wiP2VyVgc3rK6v+1VQbMtyf8aCqoSa/xAsgTjUyBFI4GgT7E0sCTu3ROrZfjL7n/Eg1MXJbm+tY3r5nNI0lGdmIyJuSLdJw9FMgJs67y+YB/cXmgzpE8dik/md5WKYeQSUKWNA6LsJFszmBrtKZ+ALxIQXSsASzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O0znCnNx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O0znCnNx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31E1C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760938793;
	bh=QsYCm2YOuuaHGCzC9VMTvuYvDiT6AV9TllGD3onBMpY=;
	h=To:Subject:From:Date:From;
	b=O0znCnNxdQisb3PinaXv+c3pzhDhHc13QBEF5MZpL1grun10aG+Prt5Jx5oCSWzmM
	 WX7YCHHIZWXJfBkkdEkREZX7ybowGYKcYW+yOVvfHY8uN2UnaxG1QMG7v3SzPZUTgq
	 U+z3KYlzszIjPjgHtHU75Xs7n0pP2zNDiFqUNcu6yYQ6wJIUKCOgWPM+WE2g6xrfLG
	 fW02DLWY24IfSVC3bnmcVtn8IRWU8qe9EuIy328h7qGVxhomKhh0B2XeH6l3GfjOHA
	 IAw4A9kfDdVTPuDI5LIglVjXThiEyt9QAIGfTk3X6qQziCjFE3MQnKY3Pr33pK99tx
	 6sfgpnJhlBsCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9048DCCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176093879358.18332.7186725658165071558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 612ffdc761d930cbd5e5f036996395d81e9638d3d0b5021f2fc9e5697c637e9e
Date: Mon, 20 Oct 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760938793
