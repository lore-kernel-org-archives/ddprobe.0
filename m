Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4115F449B16
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 20:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784580514; cv=none; b=PB71QSWmKkTM6Njx/nghvNxZWl5ixFFg8NFB/4fc0kLHRRHLcRTwf3iqeJoyyWGnoJgiGiqLJY+lU50W3gWWUh+12+mVK5cgLYK402AyO05wb3kNRppRu5qMTL4rTCr0qtBsPA578Ysr05YFyWy13Nh4DZNMzyUbw48Bvwz+TiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784580514; c=relaxed/simple;
	bh=3m9y5DhBnhfsQ38EBOxpeT3abrsgJDWP8l8uEQGRODU=;
	h=To:Subject:From:Message-Id:Date; b=TQA+iBIi2jm1sGpjJYOgWknfaNwy6oawHHchcPaAMH3Fp0CKNSeS9n68hSysExOy9y/1Ak2w6WHCdBALw81GZO97K7RfSq1B6DjyP6Z3eeVzULKY/GFUjKO3EcZ9wBrSXe/WOkpfeYsbcHrhNv7XWw0UKly3WgxLEiXgEp47jLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVYdhmDR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVYdhmDR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D294CC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 20:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784580513;
	bh=3m9y5DhBnhfsQ38EBOxpeT3abrsgJDWP8l8uEQGRODU=;
	h=To:Subject:From:Date:From;
	b=CVYdhmDRzimxO4F2Xx06ZZ8HT7vHsmYhC5IhSF5Foc8Lv5/qlfImR7R0cclWT41HL
	 TZ5KKhh6RFq8mEtuNaxmdbyEIT+rd8ntP8KOQDNFrildayXPbNlgX5tUUOFFTJNLUH
	 AzusA4Ayu/sf557V4rs5JWeT/iXnELevFiOQNdcjSLFkcCILLM7uyA69RmRhw6u6NZ
	 jQEO49oJP3MY5BAl7FKuUsJGh9HOOJ4QbK8CupCUuU6dS9Sch9bpESY57zXd3iOhnF
	 KDbkKI1RUCO2dc1VTdskfph4kXRpUNKSqiiwqNSVeynd1PhXPdEaLRLXuijRJf/RAj
	 cm0489dkTHfgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF41BC44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 20:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178458051370.8899.6041375541754450654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bc1e84aa9603602e86f8c45eba82a0103d71f960f51b748b232a8ab1bcae831
Date: Mon, 20 Jul 2026 20:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784580513
