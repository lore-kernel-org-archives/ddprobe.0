Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D872E3700
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753508394; cv=none; b=SwKmN8NvxGbz5kDjdTZoSAKu/bg/qpRJw3u4DV8NnwuM1VqUdb1o2JRZVd7G33Fp2FEPFIyOQivIhm8OPZ0Rr9nVu28QIu9XGQ/tCnadp+yHtUNywGe1imZH+yNsmTQJ0EmYfDsckBfIY6+GeHicTS2uUmqRTmbxq5N6n4WBK24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753508394; c=relaxed/simple;
	bh=6ZhPUjpk/taMdE6eIH7pcQyafIc5TSE+9aDl5bsnbG8=;
	h=To:Subject:From:Message-Id:Date; b=ejUztUU4XXiX2KlSUT8PrRkXdBkYirPpzepIoIt+9FNODz5RpsksITSNP3xYL9WLFDgA7fGVKED3B3SQWjmNsxtKLG/RcciSCQg8soi3uhbm1LYsZMDVG+JtMm+xTJjFh2zRYhWKEHxNvTcticZEUunzqtddHcFjmxCHQEbVemA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dDja7MO/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dDja7MO/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D17C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753508393;
	bh=6ZhPUjpk/taMdE6eIH7pcQyafIc5TSE+9aDl5bsnbG8=;
	h=To:Subject:From:Date:From;
	b=dDja7MO/upMaWG6oN8+kMYJG+9zyosQRu2ql06nQwjtlAOm7hLSU2iDNxovoHNrE1
	 Oiuf4ulQh77KmNB/gPyn80u9mv0H722KmZAbRiwUuw+OTakig7rOBQ+4idLJjOhk04
	 DktPodZA88cVYC1PUSJzEeMir1s1HD8+ZBXtM0zP45MxrXVGpWewzLphDQbi4nSPhB
	 GU53a7YmnUh4K2RcFJl15nexoBf/2SQcB6c8sGWZWYKwtfs+94dPeiaL+8ba1ZfIyj
	 2Xx20iHK2+EpENVlYMgH6XHy4PSa/dsKViVcZ92B2Z8pW+wD+qCOZy35jCwfKNLJgH
	 xD/yLAyN+RHMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AA9C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175350839357.15545.12889972353056206281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bae9c6e67c195693b36c83147f9c24b542956fed7de577bb34e40330ca0f508c
Date: Sat, 26 Jul 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753508393
