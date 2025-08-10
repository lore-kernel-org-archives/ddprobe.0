Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D060A1C1AB4
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754826593; cv=none; b=drY//CA+mDzUxaM6ZeUWmg4c47w8PmETgTOwDn4y635DsBGKji1bk0Tv6BlAakXz4j94EmomysMRIo7YEuLSQkC4HhGgmW8HafP0bMjlnLvxNUKV+fdfUFyfBsjUWXB7khk//Bh5TuHqTugy8oIg36ptzxjXKCQcjVxmH7RfRIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754826593; c=relaxed/simple;
	bh=BU/9Yabz+xrh7/QsYpC5G9xNUqtWFxd/u8fjNQKzRZU=;
	h=To:Subject:From:Message-Id:Date; b=BCiM3Bm0BVYuC2oIj7smCPTRIOW+QR9s45kHiaN4pBep3hStugrle/VCxhHt2jFwYx/l44MZqEyvOZHfWwG1Mtaff1i22a5jCx7pRSzpUIoYtybHoBmEWxVbcJVHC0Ef1wePP1PbVZC7N58wLWZhYs1RtQRqCKm35HoyfQft6Hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R9uC1LKr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R9uC1LKr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CCA2C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754826593;
	bh=BU/9Yabz+xrh7/QsYpC5G9xNUqtWFxd/u8fjNQKzRZU=;
	h=To:Subject:From:Date:From;
	b=R9uC1LKrrp8uk3wIfPadRjWC04kneXnwr90AhonGiDDuzsMLOziveCyZZ2npKFfdW
	 zYj99pgLnsIKZku8jdwe3oE+NPt//YmsLgODKfEh89xlvBUnxFIckyvhNgnKZfIasZ
	 ZVYLMMbq8SrC72sMwd8QDBjUBGNMI9XGYfoqSvslmnw6cFk1wCjX3uLBg5ahdkpaI+
	 jJ5WIPqy+Uq/10obqLLjUHh+t5YUmfYc+RxkIKXidkunx9iGiclFOyGaAd5EbqZuXl
	 Lm+sYlMkw/goX5FGrjNUl4wTCv7REN6kQFR2ALgZmhullyCoqoHQwoK9s4bRetrwGC
	 LtonVYM7kHLRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DD21C87FCA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175482659357.31651.13099564237627391793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8456d9a9f8b621b4b15bb89ca4b4aaacefccd80b3363b57653cc07202f77eb5c
Date: Sun, 10 Aug 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754826593
