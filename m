Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9D2175A5
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751698194; cv=none; b=uNDqukDntcSK7a4qW/WgqT8ifIbtah8PWWtVFP7Id1A+yJyT0Yppkp6OIbSwrH+oBCbew8CKM/xMUmiDOJBfsx3bf30BfXhB9lOJyGHxIydL2ab4roGmW8sbwGY+HDzF7dkr1/6HnuRrDS81GGY5zD1SOQWHh/KtN5GNrzMNpQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751698194; c=relaxed/simple;
	bh=J2FaCd2OZrx8Exl2fkteDbfOBVEaZ71Jf/pBtPzB/bw=;
	h=To:Subject:From:Message-Id:Date; b=eMKA1y+eeKvLNGJCELNJz6yAiTH/kDLg9Yo9pM8/YcUx4i3rvzV+5FZfhAOVuuXJe3OOayzSUy+qaaT3kNRTQXKUyvn0736N2KDwgbI4MqI3KesBulDK+IkS+OXQjBSPX0ksZEr6er76vhpx7lyWNQbHo8oliWrV3af68xd1MPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O17uxLC0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O17uxLC0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B4EC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751698193;
	bh=J2FaCd2OZrx8Exl2fkteDbfOBVEaZ71Jf/pBtPzB/bw=;
	h=To:Subject:From:Date:From;
	b=O17uxLC0r5X/UFGsuFcc62c4IVw1gtodc4gOvPGsWZK4sEcjSaOJscO80/qTCbuSX
	 /o0SwxDwu23EOFci4VmP1sZEF1Fj1mNYJ9eFPYP5DmOLvMLgubQnF2vLmNtxVnh+wN
	 J7Nz3p9m5Siik1ebUC5K+TkOQk7/SZUGih7VAxgRPgwliFgtz9jLyDOE7rk4cfb2AF
	 aGTJM4ayzzeMjiZZAeCWPACCnacNYMBtaso8DRnRJQ4idNaQbEZhXSrFCyaQuZey6u
	 LwgwkY7xErtFWGVrlvqtNZEbkoRXZ4ojrw3ZYmT8WHbN9INIL25mOEbzcvIv8u9YET
	 1EfzqMjVdrEqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E3EC8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175169819357.17259.5523661634598455642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44b05514e0882207ade5b8d0d04d03357e84b023cc86c0f38a95a15e50f480b6
Date: Sat, 05 Jul 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751698193
