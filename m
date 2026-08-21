Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 542FC3C1F45
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787292634; cv=none; b=TB3VvXUicy4oYqJKygfZAG5hY6yknI/wk+rmGbtZ83HCOITsFVUZytA6H7+7LPS2sVmi4OxR6noE7fPZl1bFEDZnf1EdAWndU0kXE5JBQ1M0p45/bmcVxfbarhgwdqcoIxRbksOrnDWPE60X7PrUW8gjd77YnBeD68hGHmAAi+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787292634; c=relaxed/simple;
	bh=uhjm9lSXllv77Ro8TNB7KrtC49chX3+p8jEL5r+gAFE=;
	h=To:Subject:From:Message-Id:Date; b=k5rmsq8wupypOdzHmDjhcHiddvn/aRX7RiNE/PJt28sewUSHiFv1khRrHIuVF8uOeWu4KNX02bm9voobbCjb+BU4IYQ0KOGICXUTQcIQOqe8fU1MNU6ljxO1tN1ulREGe1+kHgBPM+udSPOtyU/zqY5S4SPIoKDpHLyE1/AQAzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZ9jj89J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZ9jj89J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6937C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787292633;
	bh=uhjm9lSXllv77Ro8TNB7KrtC49chX3+p8jEL5r+gAFE=;
	h=To:Subject:From:Date:From;
	b=XZ9jj89J1qIUqjg4EmAqe3QD5IrZww4g7Xc/sMrvVEB87wy8GJ//NyvV8uXLN3qYl
	 kT4xYYcDlgTT1XOrolTOw9vKJY615ngvSA1979k2uE8zlXUehoI2/ZIcci2YXbXTgj
	 ypD12mlUghxOL9g1uKQfMk7ICbqzuzEN5sjM2hMuPOc5dqyuJW38Ef+Wip9DNz1RWP
	 rJKwN0Jrdf6duBqE2Ec3dEioyjGBy1c0XKZoJRa/TE/A1xB3MJn4b2m7NOYGIiiVhY
	 ydaUvpaGKH5hzEp+gb72A+2YThclySXjPch9di8APqT8DaVvqe8NMjcI0Y04adVavD
	 /JfTNi+21Dkig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0D17C5DF88
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178729263374.24440.13627814998670106562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56c3fbe740bc72d18aac221db09e751f04432cc4c136805b55ca905c67233c49
Date: Fri, 21 Aug 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787292633
