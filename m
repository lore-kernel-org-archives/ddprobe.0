Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68DDC336EDA
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 14:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771425894; cv=none; b=qKGxoh8cmBcWp+h66bM3Eba3W81fG+J9YGqulZYDlhm6fif1slh320/FH+gMlJOHKyu27KwCBj+/ZEfamTrUw1MUcooRfxCw4d7zqE/y0Hb7/xO4LLZOZN/GFdrLS0GXajLcLrgyeyI27005wTxcv0H1Kv8xT9lRx3sG72U1VM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771425894; c=relaxed/simple;
	bh=TX4QzgvjN+7HzdW/1wN3zXvW59vCzJdaYXBPLpSs2PM=;
	h=To:Subject:From:Message-Id:Date; b=ZePkhMNGZCy9NXyKRzEr6b8Bv85n3v+zHLoEzPlythx0dfuLaxnX8/IgtHAqVx6nPsmtrTrH3Ep6UdnWyV4IuvwZd2IdicWiOybrb91vudi+WOVjZpQ3PCToV9ZYbSAWDpJ3S6wdY1bgW66QXL/OnE/JSu65XpoTh/YxYkEzpjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gdMo2+gO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gdMo2+gO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2855C19424
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771425893;
	bh=TX4QzgvjN+7HzdW/1wN3zXvW59vCzJdaYXBPLpSs2PM=;
	h=To:Subject:From:Date:From;
	b=gdMo2+gOVmCrhXj+6su8KDEXWgoddPgsawS2wUHT7eEG6TSzm+p5Bh4sSwul0wxxS
	 4jFtj48Q2jDgNKg0f94RGNoyxILFDNb4tHbIbOHK+1Me6Y8SPxndlBXFW22xhrZAkz
	 4drKywnwEtQ6PXctk24TNojrobs+OWze9k0BMNw6TuIxhawAkaJwctqTr0atIHGkZz
	 xTh6j2wobCYU/HMWo8j2o6/7QOShFOAELcEyEjLHUBX+RXeNIMP5mAgfKhZnWjCk22
	 QAyHRNAVZheFatLkE+hP4Z2JgNNb8aRLbyXh0DXUMTzjUvnnvsioR9XKfrr1bPIkjH
	 LD1wsjwPY5tMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C048E9A049
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177142589362.15460.7167763136181680769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a814aef6b6a86da431da4062c161d75c91aef818012f707a3025b3f95fe321fb
Date: Wed, 18 Feb 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771425893
