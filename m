Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353002D63E0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752666595; cv=none; b=dn7wD6t3Nr/a19k77pAsdxCZYKGKt6/S1SWKMjX2iHRbt7Vtb2SfRZVrnU/i7E2kJZDO1Fiy1GIrxBb6IZZIHlczXngXyzxAJRYymwlSaB9ud6NbE6kO8Et/LVQuqq1WhNxLmtuw+xWYLRene3l7LyzbMI3o17jFfirtQKA1hzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752666595; c=relaxed/simple;
	bh=VoIoaGLjQ4/g7xQ3O4ELW94ZBg6SA2yF4B7jCl64HvI=;
	h=To:Subject:From:Message-Id:Date; b=j+9m+HjRuzZ32CdLpKEKw/i+xNCsgzrVeiaM00VLUbLUXTZ+DP85jRzjfSnr5XkQGlei31SdOVGIzygvw7CY0JO2x4w09F6ChWXzml10TUOh7dhUp+1LhSjvk/ibC80Yv8AXtK02R7KfM13UMKRSUitQ4EbhBgKsY6usmtdH0Yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aMvOlrsK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aMvOlrsK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0044C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752666593;
	bh=VoIoaGLjQ4/g7xQ3O4ELW94ZBg6SA2yF4B7jCl64HvI=;
	h=To:Subject:From:Date:From;
	b=aMvOlrsKBov7tXtrGxdpesq66KQM/smD5GmLAMloDK7PkGQoWhtwQPt9ksNce7dML
	 kLgsXdF6BmORp/S7ViY+LeC8DN5wwyfQfr/+Jo/0mLyk9oM+LoLWlBLIgVAA67DxnZ
	 JToMJN9VpgpUVWcVKUl87Mi6IGoNvUIJQJmrd88LbftGIFHdAwNuRLWr6J3JthPRFx
	 77+kYHYmbqZ8DhrKr32QsXMTpVScZJmUcZlytC60iRXPG/TdToxIftSElrNzaj0Xw8
	 XBwBCRKAXGu2+TKWzvWdg33XJMX7dGUSbNQQrjPaYXgk8I0PYogrFiHGJgna1zJa2K
	 TQK5u4kGNQCjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB2FC83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175266659363.13546.5220506245739066700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ccd4fd5f445ec90967cc16ab37a373b39c5de930efefcfe29f288c80814b423
Date: Wed, 16 Jul 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752666593
