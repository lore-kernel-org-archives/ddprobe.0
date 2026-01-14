Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F13CA396B74
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768404234; cv=none; b=E95tJDh/+wH72ah210SuHrr36GWI7vVmmY+4ljtztUQig2Ux2SobTJiAsVpuJaqYlgyLYSsfFocyETjQGi5zLpU+yt7ccrIdGD4sHhygDJ8Se4qDbhj1ncykuk6/9UKuziBj7xx1SgURGATX/UgjYYrYGjLmWr2XJuvHtMAwsNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768404234; c=relaxed/simple;
	bh=U2ov0aqnZCXzXeLNRqrRPdlW/7d+MoWtTe0GHmBitN0=;
	h=To:Subject:From:Message-Id:Date; b=PUhmTT1pWi/xc2/oubvdXlXYceW2pPokbibPu+xje5G4URQKJbXvMjvPXdqDrnUwKxcXGtpAVGQH+v8jSj0yiN9t2NTSuEAjodKtb2XdVxQAt0759ScDBoYIvUFmW4HnFZM6RrinJX7oDOdk+UCsrPtXmaYDl0ZttWSryIEQXl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s0LomCwi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s0LomCwi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2465C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768404233;
	bh=U2ov0aqnZCXzXeLNRqrRPdlW/7d+MoWtTe0GHmBitN0=;
	h=To:Subject:From:Date:From;
	b=s0LomCwi/OnPLkdFdnI4lbGR/v/ZbvcUTWVO5rerS5qfBqtQQldBax8EgGancHGtJ
	 mO2uhEkASW1ukn89EJfXGY6ib0vDmxMPhCWjbv62aU1VVO/KZ7yIGrXSu0Xq3QuRPE
	 TXcvMPd/t3luRROqlUmk4Gf2/UYbFv48Ehq+6xyeaG/UEKYIJ5QGHJ9+VETS0xarye
	 9Z4Y9G2s4BYHJlYOtRimGxIzw5uOFJOxWC4d0H+kh8QjegMm9wXl87NIflsj7auKca
	 CNY/Vs5M00XH4jfoBXunNSbrjzgHeo5uq2XH9fV08gfQ5kZsDkdcojcBC7HFdLIvnr
	 iwi67Q5OurHqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF90D37E47
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176840423358.11933.4391199461121611123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 412db77c28cfc7eeb1b4c5d5a966ffe781357b44c977732007b4527ef2e86d4f
Date: Wed, 14 Jan 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768404233
