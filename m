Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A6F33261F
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772140494; cv=none; b=uf5HPbMsie8uH0E8g3t6I/P8DE79G4nUMUaqLBr+YoPE/81Kna7zoU2LNHLEgIUK1UfsGt0zBsUUYRRkQ+1hNzA6qMFr996hQXxph8uwS8adqY9ZVFgJyehdctQJEg8KNW3keW+m1cDFVyIaQ5UvjTcL5lz6wRnFj0iz+rm6d0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772140494; c=relaxed/simple;
	bh=ILPOeVF9Yk04g5r5dG1cz7bN6tipLywialvGjaT/NzM=;
	h=To:Subject:From:Message-Id:Date; b=cxoqTGfH1+mZZF1QstPZ5gulICmynvy8f/mC4ZQbx5nGW4iLg02au98CFjBPvLmVe4Ww55uvpMGFBEbBUrQuIJ0+gOoktddOayNZFw1AdEqaId6TdbTM4EBaLO74SwH3DCyIQrRzuZ43GD7rGFraKwwm5PiLAurpXlgzafRTsDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IkT84ZvP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IkT84ZvP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE400C19423
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772140493;
	bh=ILPOeVF9Yk04g5r5dG1cz7bN6tipLywialvGjaT/NzM=;
	h=To:Subject:From:Date:From;
	b=IkT84ZvP2ouF+mxr+yNLAu/q+aPlEvA3JBzDqjjh2dB4gvGfEGCEhNe9IC6ImWB9g
	 gcUXRk/tbWCFzNNM2QBb7dPx4nT68uPtMKxRrcLuObYOc7tJnEFrj4nS1MrrZaJUQ3
	 ntPTEtYpCvSC1gOg29eylErOzTveoa6rUPp3skMGyxHTnxdOIZWTkJlizcW0JGzN0X
	 TL0dNIfaT2NiOVG+s1l9606VYXwzCORAFQH2x8nlxLiX5nnNCNu0C+0G1T6Q8ue/pV
	 DZKpV013hz6hSn2Wq8GsEBIfA1hUUErkDWeMXw1Hbi0qRDfuvoY7/4nYBVZcwOYE5q
	 RQK/rWCi7+HsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998A1FD9E14
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177214049361.2141.8625483808244255714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a4d8743884511710587999c9d60861a8748cc06fa6dccf4de46cad37a57e100
Date: Thu, 26 Feb 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772140493
