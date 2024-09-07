Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FFE5A55
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725708354; cv=none; b=EVAX4NuyCRALffX/XWeVYnO7QHb3vCbDfs74apnwosCyjsAnYkxy0ebZPIWLgEfHysmd6Mf5NPn5htAyqX5HOwTMfGSLMx9K1PKh8Okau8fOcRUbJB+dqr2VpF9Jf2LbMEREcpAO3L2k9O5SNPBFjsSn3q9hPB3oP8XjQkCtroM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725708354; c=relaxed/simple;
	bh=A6frQo8bsCWfTE6JaqPucYeDLf4nQK+OolHs/GYBG70=;
	h=To:Subject:From:Message-Id:Date; b=giEjL22dLZPNoxf9d6KLKSpfp31KtK5TX1G6YhoAaQbyyx+eosXkrxBPZzVDIwawSa+4lhYbzt2NFH4z0LvMNax2BpZNW/ukIegfMD4niel+w0+HWkTK6wB7Y5/r1thI970cpE7z4l155Lpy1eswQWNU9IMEZVMTI3cDROTTtoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cz47QANp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cz47QANp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14A1C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725708353;
	bh=A6frQo8bsCWfTE6JaqPucYeDLf4nQK+OolHs/GYBG70=;
	h=To:Subject:From:Date:From;
	b=Cz47QANpvvdUbDvKSZ84z4o8hbLfJAFy/U/pCvIJNK+81XEmJ5fK8K8O1I1R2lpnA
	 Q6W++3JFYrvemMOEKvk5Zr2jOVYbw1vFRAfWkqFTsStQJf/UZhz5/+F5fJTOAQZVId
	 0QpFFI+A7zsYDmbcozF8q12MVjoa3Lx9sBDR/54k0OlZ4tCL3MU4hQP3Tqx6q6cWfG
	 2aA8UXvEHGYFg+S9o2N+Mzrw7vcoDwuhH6JWWoP23YJH9Ciza1X+zmqYo5axKKYOr0
	 Q9d3DMO6H4iP9FSx5zmx8cTcYDXV82xp8esS8she5aYtcNth8NavuJwQESFrq064Cf
	 K8zhmKgLxNX1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A02E6FE55
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172570835358.20829.3105087231488852638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7b25635e616cf883280422c134c8203343feafcd7956abf19109d85bb8a1781
Date: Sat, 07 Sep 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725708353
