Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3753136647
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709029697; cv=none; b=N56s/rfe9RwUoEP87y+1vDeAbChbKPNND3dkFNR9tUNwmIr9X5y8/usO1vSNsQiqAB+eAPMZLxZzB0hXdJ9LP0/1dfYv4yr9jSmzUwCCi3OR9x/D6Kew1jffVxBPS/y8NLc54Ld/N3emeTbEyE/RjK1QMoNVcLKB7Y6NlR2XyqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709029697; c=relaxed/simple;
	bh=xQIWbZNcTaHhhmJqZ0Ur34JCVbGCh0wkqNhtKKLn5KE=;
	h=To:Subject:From:Message-Id:Date; b=RPQbt6TFh10h+uVzrLs3JFeD3jiOoiDV6B4QbEOyvT/Sd9oLk7ygt2FL/DEjl3OF3zzEaqAnDlGG8JTZ94dkFJZtlsYPZdPR/ETVzc5gQ11vLF8iJRnwXcerQYiSPAWwwqApVXXbpxLHWY52SkQM17xQv3Kq/O0lKrMQvXqEqws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZrpFSBL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RZrpFSBL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83582C433F1
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709029696;
	bh=xQIWbZNcTaHhhmJqZ0Ur34JCVbGCh0wkqNhtKKLn5KE=;
	h=To:Subject:From:Date:From;
	b=RZrpFSBLITrhEeDbKGiKXskJ49bL3afN7RAle45BP+t37VTwh/Ek/CbWJ+2U3BaVH
	 aChcDnaNa9TyTdSCMaAxFGN8GFFH/LqRBLOEJjJgjOyavOpyMDxHzSpmwcAfG2UEj1
	 0mpBbfp47dWo0ke4qRckzUQ7s3jaayI01iTrdFjeDaFPWyWX5U3ovbObSlK4u+dI9m
	 yW5WooltWSdejZ8QMqJkxNDvt9uGaU7IQ10qxox3gnd76H6zzPSX1m2xkgD9Q52MCc
	 UlO183/L1AgF7OUadggzORUz3JKV5Ms52ym7CQxs2sACcGgpJJ5iOf0Vl0k7V0nhTP
	 7/A8fWMbtABYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67189C54798
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170902969641.22012.3574640757319022418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6f0f00bd4fc0363a64295192e7f018956e6ff463deb16205ad6c6503f7534c8
Date: Tue, 27 Feb 2024 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709029696
