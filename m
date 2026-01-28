Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE16332C94D
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769570634; cv=none; b=slgNYHzsoWmt8xQrFb0X4kddnOR3opeIQdvdiqQoMkEvmlJSgNIcJ54IaI16r08VNYM37UYf4yWnqYhJr3Kr7BU//N86NG3VSKsicQ6pXpXBAMWamDlgUbjbEPO79seKoThynIOXDbqJVxC2x5m9mI/K4QTgGADD3PBfdw+69cY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769570634; c=relaxed/simple;
	bh=Oqt3V7Fk+AzcVf5P6rh/QcYfEdCG6u+6THVYBGCebtc=;
	h=To:Subject:From:Message-Id:Date; b=jUByJZ7T79ik0beNbWSprqmSvhGApELOj5OC22fS9iqoQ/lZgWp3qfj0YItCcmiyU2e8EmCJQPlCUWTxF1gbHM9jSU3I6BQ93s8fSjgclofq5ycldvCAa4PRi+KzLC6jSQhjDVA5OXAUr5z4jo0iK9b6yBl7q5elyeRWzEC2wPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZaVUkiEv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZaVUkiEv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E893C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769570633;
	bh=Oqt3V7Fk+AzcVf5P6rh/QcYfEdCG6u+6THVYBGCebtc=;
	h=To:Subject:From:Date:From;
	b=ZaVUkiEvA9/ghn3poezNt9IzCIjC35R571c7AuwPn+3sPjIr5kxwU7PSFXMBl/GF2
	 o7rP9VjkuHJTRJh1Bq7b2hOYAM/AnTuxZjZ62exVyBidOPWrQebBc6N6nqUbifh+Zx
	 2OOwO0rdm4wFJRG+NIea+kAVmslGWsS+IZGFxzv2KPvigTIKfMvIGDbBUiMnBKnrm5
	 ehtRunEM5xPfpzAj/z/1DllQiWDFW16LsLLLxFmvDQ97ffCoIg0HtKwnili7hUB/P8
	 WXh0kHpK2Jj2m7NTiu0HzmrerhBDX+5trpYVepUsMx3iZX2ZvRCYsNJ8OLIFJrp/3v
	 CYU64W44BFJ/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90761D35669
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176957063358.22397.18381003439835940347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80c5e54f524aac3c2a8f42edd839dfcc3338926aaa9ebc9a2477979799229af7
Date: Wed, 28 Jan 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769570633
