Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF8814A4DF
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744808994; cv=none; b=ry60PsUcrs5AZOnWr7fcXD1NIU1oyIP0GQqToOwtqfhZ/IohuWbr4pfrfoPN/mXl/eKvXbVV0Q6Q/oAzIA8rfZ+FoBk40I4gnLlk96gVfe2w5ONBwBcYMRq3NW76YTEcFk6nze1tnSoW3/zCqIBLfMI4Slkle3jnjCdHsA0sA4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744808994; c=relaxed/simple;
	bh=Ts/u/ziVCS9z0+bx38859zQIRwmGdaBWuI0mCT5Yifk=;
	h=To:Subject:From:Message-Id:Date; b=ZPDoqLuMpm8fmJ2SnrzoxAcFsfKB9wuWi3ckhzAZNUfiu8D/SpHUKVISAayUj3Pe0tBFrBjYI+a0YQk9Gqq+lfHOiwpcuNXMYIEopvgLULznym4Ya4HKgqb5LqlV2VT7HivNWWwjz70ZrVObEnZsl97U+hC1N/ydeAcMILZ0gsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOzxwP9W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOzxwP9W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6FCC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744808993;
	bh=Ts/u/ziVCS9z0+bx38859zQIRwmGdaBWuI0mCT5Yifk=;
	h=To:Subject:From:Date:From;
	b=pOzxwP9WAPkRoI8d3lq4xT84aTpeNnB8Qvvz+o7iaAStSwrI1L8qA/tREsB7SPSLM
	 KnMuJLMR+AgRzTRRVJpdrozljvbdasQysG93h2cvvwfWyWsq26ebNKL9rkIkcxnkbs
	 DwZqNNpmC8gdCkgSTR0l5pbn3TpL8NXNha8IPQvhJf7eOBCE10YccXIwtjKPXXaFUL
	 FxR1brorIsOZrDE2n0hp126PukALG+xtTrtK1L8HoVGbjTW1YbCFRUNfsC2Vo+zIKh
	 MFoCXhQcMoE6GdNN4NGn6tX3NfgAnZF7/TJbSHNncf29TDbaKsntC9PhIwXA5uNYY3
	 fqRwEAuzcNb3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FFBC369BD
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174480899360.10078.9166140289303595696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de1701441ee8ca26bbbeedcd8a9ccbdd9b6751c21cd4874c1ffb8e61679cc3e9
Date: Wed, 16 Apr 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744808993
