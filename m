Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4172C182
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 06:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741761534; cv=none; b=O9OrNROg8NCTkcNcqfdlxf5XxRcnnMK8toz/i0zsQ4bxUarnX9kZO+xbj/iF42CO5fjgCAnUI+f1vbqYB1fLQPCqva7hF4S4z8ZlI0P6CHig75DYYuX7FUzDuk4lbRIpOpRc/z10YjIRQNpIG50+PHvZ4m3GTTwGmWRaM2xIdSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741761534; c=relaxed/simple;
	bh=8xrfoecz3qu/ZgNjDwOYb4sIAlcuNZsSsBLJQAC7vnA=;
	h=To:Subject:From:Message-Id:Date; b=WVHMzaVi6AAGeYr1aQ6uH+i/2cyqgPKK7uz7/JaxwtJXE0BR1rF6GxN1TRjQczo2vJlq5YgW3894pH/C8DUNTM6shLnmz0zheOOzRf8gNgW3UlmIQm102P4C+t11mmZ70loBRunNiCjGNW/rj+XsTel9k5j9ar2Sk3BPS+6wR0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hfVslg9i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hfVslg9i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DE3C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 06:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741761533;
	bh=8xrfoecz3qu/ZgNjDwOYb4sIAlcuNZsSsBLJQAC7vnA=;
	h=To:Subject:From:Date:From;
	b=hfVslg9iXX4VzhoffOy7jAJbc755wdDejBZRpnRGDiJfjBtBmRjQDUlKx8vn40ETv
	 zkKVxyspgFxOkDptj+7p137SQtmeiTtA8BFx94/3xHE4BPFVH8UrbD+kYnm62QJzMC
	 q/hsCmDAcKAibIRtvO3NZJwooO/+osUQdEwzvMy0J4ba/XJcMTsFmfPgUiUEU1hohF
	 HqR+xX0kZXFdkHhwEGt/S9R6Wd/9Xez6wTRREfUfIot0TpGfE4IUqpCxlNK4ivqzPY
	 wc0q1D+DCQ9EGfJ1yluxdUipOzLAqgi+zRKRESyQxSepsGxhmmDsVgRfHSNEJc+Sbk
	 kEbGy0RdlhdHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAB8C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 06:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174176153357.24202.5912040185948485031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baaee35c7a9ded67eadd7a027154739bfcd5ee16ba8a5ec189aabc1a2b1069bc
Date: Wed, 12 Mar 2025 06:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741761533
