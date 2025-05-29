Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3640B246762
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748548794; cv=none; b=g8/TuqvpMXiMNVeWELeXVCLBWf6hd6adJPjgKuVHny4qaj0bvypSeCvEffXoStob7ajsOieeVKYeB1ZAdTbgUOZhtwnxAlJFVOGwf3gdtqgzfRrcTBBWRnLTfPdtZc2cMlgEtGnMY6yBK+LrsjV3r/nde/iGjUFcaApX2VCw+3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748548794; c=relaxed/simple;
	bh=qPabmMdT/n1whPy9l9RufSyG3awEd2LX4AZRgGHYloE=;
	h=To:Subject:From:Message-Id:Date; b=gf6IiYtDkhVDqqXUtlt8r8Gpmm61TI/Dh9duuD7QPaxgv+PS4oTrKYnB7NMf3yBG/sRT1wsjm+8f6P1s/6Nz/NYLVpcOxq6msUfB4uCpcdGK52FhGyd8BGrvmYbpjin0p/zJPYyLm3rTT+x2I4WOMf7BdSPYykyodXK8YL6FJzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQCOdYo0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQCOdYo0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEE4C4CEEE
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748548793;
	bh=qPabmMdT/n1whPy9l9RufSyG3awEd2LX4AZRgGHYloE=;
	h=To:Subject:From:Date:From;
	b=bQCOdYo0MXrufCwr1wJFbcd3xwtqdq6Y8fOhDj7RJAhtkCvCrMdNmf0P/It9KngLL
	 8VxO0wIm2UsrJeMgdf2o7LyQ+ErsJdtlbB6BLAmA4MQ50UH2oZ67BKw69QRSQIXAPN
	 OSIZoR0DsgcLtglnDCWqfzZFujWU/nscFygN138IYgie1FnjoUPsD3nXiBVwoDV8sX
	 wyyxHwRkZsspySyiGqQE63+dcpon9kx5WThi2xsyXzidSnJb4TJ0RZ7QBnFg9uUr19
	 0qGa21qFVlJ2tQkrOJ7xFBRPDaaIML4UjS7VmZIkCD0+/cYvQFDQhCfpg2hzvzYsNf
	 GOiZLEN8x+T3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2C6C54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174854879357.23278.7575368689211212596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cc3415e7571c71d4a5c90d69d997c64137499372260798e6219924a6d2c406e
Date: Thu, 29 May 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748548793
