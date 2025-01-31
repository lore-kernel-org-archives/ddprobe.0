Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596A51386C9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738347954; cv=none; b=szSZmXjRuV3QGO+13q0ty6Iyavht35QuyRnstPN8nF3Wo81FWJ09kWSL3XEJvDaz1tDatDQ+jVAG0/P/Nz0PtLUHGG+jfK/+UfyC0qD8a58isQGc6NCHFWx//j4SDO2dZgI3h0kZ11vOodITMKVx+gjejjaxhbm9U+6wAk2gHEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738347954; c=relaxed/simple;
	bh=cTa9xWHUg6sujZjvTv8ROU3zOaU5nR4zr1tnXmAXhEA=;
	h=To:Subject:From:Message-Id:Date; b=tjUQ2hOCWgIFXgi6C1AEAD51U+FGuKZb+irFqCt0UFV7x6lWLhq37+QnZ4PIo9jQvlb62nhQfaEx7Tn8kakMT0faZeHHqLuyzkfs2OpVV31hYa3oZcRjFWt8ETU34VyughHkQxD2vhoJtk/idCIwyTm45eE+Y0uTzB305/dGFJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YFlbF1dc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YFlbF1dc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85AEC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738347953;
	bh=cTa9xWHUg6sujZjvTv8ROU3zOaU5nR4zr1tnXmAXhEA=;
	h=To:Subject:From:Date:From;
	b=YFlbF1dcEtjp28qKN8HaPLJ5EwIzf8kVUmg2mM8U/Q/Qs09bL6AbLYTn8uSh9wHx5
	 Nf3seBAme7S7dtP3aw304G9t6IZU7RlpO3EHKeOe4m+L9MZM+oR4yX5qUt1mCNikEy
	 sC6/O1KIn8ZETQgB8QWrk3+uDsRJkKADGbimj8agWpqBf7nuUTebAwAZaYpivX/9SZ
	 iLVZ0dMqHXqRg2+WDtJB1fmn2mX2NO4AreVrDLHwN2xQkP/TVt//BOQumCFn7xd9MU
	 clGsEqH8zWcsTzD76+zeaz819+QsKWGKhPYo1uzcNCymlC+ZgSCHQPxuBwcnQFvaqM
	 AYfMmPqUlIuWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944EFC0218F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173834795359.3511.12529242117466917151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1ea6cb97f4759d4a12aa794769151c70dd1862c7c9ae8fa4dae339e20596db9
Date: Fri, 31 Jan 2025 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738347953
