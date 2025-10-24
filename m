Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFFE9305059
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761298194; cv=none; b=am4yNL5jH45HvFzxaeJy1LZvLUSGAv/Zpo+pJmHXEA4+NGxWyck1aXhNJz+2ViNLhmTa17Kn8sqqRZAmCk3YpPMklE4Q4q9MZDLrMw4+Zf/Ub5wYRmVnvUOsnZejM3cTGD9eA+LQWbdcntnZ0LTn8WTM/atwloCX//dk/JodznU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761298194; c=relaxed/simple;
	bh=BQ6yFo80Gr2ZE8pqISjtJXMZn/btlkQL7bEOSknGgrs=;
	h=To:Subject:From:Message-Id:Date; b=OUIlduuqQ3m0gzrO+xt9rBpmEsV5jF8egXSRgneEtcdICoHKAAsvYHtj7xGm6MoLU8bJZe1TDRhewjNeZc01F9+GyHfzNO0vBDmRwQSLUW092iW5Mk3HX1cW1qiZftB5rPunUs4zODTVGvwc+ZYSBaZgEjgWNuzdpae1b/N1WK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LcZZ0cjA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LcZZ0cjA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11F5C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761298193;
	bh=BQ6yFo80Gr2ZE8pqISjtJXMZn/btlkQL7bEOSknGgrs=;
	h=To:Subject:From:Date:From;
	b=LcZZ0cjA2hZ1q50RJfpKkDrXLEMCZH4K/vLRWHy9Bm+2loBLr3mGxC5cuqxHOsx2k
	 MTRk9OxIIYqnMetx0OhUINbNMaJaNiN2Hs1VQADsuwMbVL9HERMbCUSExdlhHP4CwE
	 MjPkp2LqkuGVSDkwNJmh/+h1H/cWWugJ3HzJZvq48+AYGyzoMVTUU6bcvURQdz6PDK
	 moBQViApeskzfcSA1cSHuVre5mfXHcA/8s3BiOLKocxBKDjERARixHwYabZzVGqkgN
	 5xeCgCbgSQ2Q5/M/Wky9S7NtmbzsYyPL19Yb3f0L2/vD1xYCOeQ2zbYTMXDOeB0c83
	 8LiztjdwHv7RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F21ECCD1A5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176129819357.7278.10451721341772290722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f1363894571dd82aba2a46059457724cdd27edc1fa99fdbbf05e771b61ee36e
Date: Fri, 24 Oct 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761298193
