Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A027433A4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745808596; cv=none; b=A8JH2mlhRlK+D3/P+wLyRF28J5smGIIjNNYdiQx1af+Fy5MxN8Hz9Q5KuHEYFfXo9R+SNkDHN0v0Rn/ESObrgGQ51PJvXHKkd4sGhzh9xNrEOHxv9K1heDNCl1tCpdQZgBJmwf/HGFZNHf8kx21k6+tBhC2sgq7yBKZfx96JgeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745808596; c=relaxed/simple;
	bh=Jsk9lsZPiDvrgCd5Yu3ejaz7LEYNZbmBu1bW/OgepFY=;
	h=To:Subject:From:Message-Id:Date; b=glmLeHjV9TfpHvp4xdG6g9+/4inNFlclBk/A5K9NJCg5SD6zM7Q/K8UWeuelEM3TguLbnmmLiNrHmynfI3zxCYfT2K/l5PnwILc6jqAoRnptIQhB5mj40qIUECgEPTwIVRyKu+j4xbODGWU0qO8lllk3v6atyraDw6MiQ41w9I0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BCOvgpW4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BCOvgpW4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C9A6C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745808593;
	bh=Jsk9lsZPiDvrgCd5Yu3ejaz7LEYNZbmBu1bW/OgepFY=;
	h=To:Subject:From:Date:From;
	b=BCOvgpW41CzcABIkK7u2gz2aFw7bfHZCghKMUY95pFCzd+6UMmMNAEeH8ZX1hQZub
	 BI3U3b/3ljdc4gvJtoTh3sTGA62vhfRu3K37PnBUlrv0mf2jClDakToT+iiodBbH3+
	 XNenjg1zcI7BpzxDuTCZb1gvZ+fWRVVneOq8741SH5rax5CczOun4U+6JglQTakVLy
	 Kex9lVHLvMuWkiVIqyC5X5GYqQc+uLUqVHitExmfPdEFqoDePHJdZci5UxMX0IdGmc
	 ObQut4o919arUD1J2w909g1LwQrPA+ftCLOqUNpc4piRJYF9MtrsN0DXuxOFB28mU0
	 up2HPzsRcHZ2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E662C369D1
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174580859357.426.11775727167350617954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d751ff49be9b19d6ff80f7c77d2056610919e782d0f742012516b3df50e3e67f
Date: Mon, 28 Apr 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745808593
