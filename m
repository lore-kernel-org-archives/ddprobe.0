Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246B235BDD5
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769882034; cv=none; b=nSXmBQcmc9X4LYhPvkztCV7Dbnza8frkwBDkYsxdIHL3KniRC2XIsbuQTBcKjeTlEHZyZfMTJHboF2g26M9LwH+EWIV17yKeEV7cJqUV9Azn9hAYPYqKgKVT14YL/s3lXL9t9Ipq7y3lwfrEkwMiHuAsSLLRYjFVH+RO0PuC9/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769882034; c=relaxed/simple;
	bh=fuHx9D7cwclEKamDxAB4kgk9WRLbMP0DY1WnBvfo09E=;
	h=To:Subject:From:Message-Id:Date; b=tIEccwNojg5czmYrKy9THN9sT2/KVyjO1Xd4bdbjdl07iqD0VE2rwNGR1XyC5y/mqxl5mio6TWYdRLhoXifsCXlrP8Yg052wz7p/Ztk6GGTVYgCeWLAilZsJ6CvdJpzn2XhaAqcj6Cw5ixnwEWmw5TQuwwMom/WOh2uaaROnKxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KlJXD31e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KlJXD31e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2EA3C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769882033;
	bh=fuHx9D7cwclEKamDxAB4kgk9WRLbMP0DY1WnBvfo09E=;
	h=To:Subject:From:Date:From;
	b=KlJXD31e56qYiHHDvSvBr1prHcsln/hmp0bhEhBEQjf8TrEAwY84MgsX8GRFJgb1z
	 bwJL/w93UhZLec98VfNFfzesDl7TDYFf7YXo2nrgW0s4HsJX7tPAtiTNr9KdTQnRa+
	 QC6S0T9mHXSR2tS/3xeqZ4DZKFoNlUxQUEJe2J8DjwVxQeib97+uj/ApuTUSoEGQf1
	 jRKXNnqbhzcexZYvIEcjaG3MI9BoSheq2SJJjcYu5zk560E7DAWajkLxrjGQsB/Bos
	 0Te7lTxFp4nAwe48JZrkIngL0/F85C+/tC7eJywnLcqhI9hFOLDLskOFdjQfnOU19Z
	 ImafTSWlmSQyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99169D61037
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176988203360.16680.12686673647660743177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf037a99bac6e2f55c7d3709ff61048633deacc48ff79551cb8b629356632995
Date: Sat, 31 Jan 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769882033
