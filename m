Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01C9C18C36
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710607697; cv=none; b=q40Njn56IyUgSj4QlGFbNj1NUtl74YzwY3Rwj3z0FVHMR6v8NQB3heIwy3HuJRu1OTsW+1h6Qcv4DaQVuDCVUk99o8jzu4xBcvNnTEgwL0lLc/NVvFV3iuMp4bnJ32GQOoFc99j8en6V3Yv9SVy+x62Y/v5qsn/YpgMCF+3krZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710607697; c=relaxed/simple;
	bh=7usTeWHHJ9ZWuRGAqaZQe9v+o9NJ56Th3iKP4Q04/FE=;
	h=To:Subject:From:Message-Id:Date; b=mBfQB+KWpm0Q9/P6s8HaefgE1nN87MNioHJgappmJvvGf7mHrw5FKHhHGSFybh+I6ye0LE8iIbV6faMoKySBMvJHlidczKkvyyJyFCDXZ7N3krZTGtjDgGI+7H2f4mPQ4TLcOfQgfMPz6MKnUFjHCWiGGeBaPJERKxPd7PbEHLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+9QGr8+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+9QGr8+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74201C433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710607696;
	bh=7usTeWHHJ9ZWuRGAqaZQe9v+o9NJ56Th3iKP4Q04/FE=;
	h=To:Subject:From:Date:From;
	b=c+9QGr8+itH3O3PIwqQZdFyB7A0bY2KNl6WmwICmN6T9p/6slPMJu6DNaAG63ui2m
	 A9ke5eXsHIG5EjIeqUSBEbECm35S++Yg5N/GmCbQUQWYkD7C4lJZXEjyZD7846cot4
	 VuJkZIEVw4ql2ZSZSW3tMLN2fFUkL0Ak9uoflHihZTTm7ngLESS1mMA8jgYKCnAwD4
	 NKAqGTfq7kyEixr32QkX0D4PZ5/LnT7/KAoVgfpy1zYX/QEeHdP0t4XwMRRd1IYYVZ
	 Jn1gXBiujHx0j9FBP+zdDjYjZlNuG46ETAyxRRP2mJR8R2/W4uMK6l3NwVP4K2WGfe
	 emMNjIXCFfXNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 608A1C48BF6
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171060769637.18590.10534793178121615986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b994877037360a6aaa6a05fa85f499f0ab7414e7398bcf4319b4b7cae66b976
Date: Sat, 16 Mar 2024 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710607696
