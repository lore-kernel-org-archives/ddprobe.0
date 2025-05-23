Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D74D2957A2
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748012394; cv=none; b=B3OAAz4cdw6YwbDyvqqAibLjd919Bg8ATtnfS3CQiuhPIKh3BcfUet/GOlDaVeYLOE/9EYmvo5hCejMvsG2Tn4H/BJhOM7jtHKdI49nn0Si/LivrAFH8kpgJVc1tvRTHUepxspEwdGUq4qUcSBP0Jv/rmlksd/wRFt219XqnPkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748012394; c=relaxed/simple;
	bh=5REEInBqMnaPrJ2M+fj35QtPKohE2anJog8jc4WpkDM=;
	h=To:Subject:From:Message-Id:Date; b=s1qHv+T/0htPMZJJr1AdlvxMZcfarRdMVAOdbFMIYXWPH9estx86/H17qEeLppqyWlisvjmr1w8bKeULZFp8ROU3ak7p9dIaOFRwRPCCCZkvM6O/R37PmSLXyzfJ95LV5YajjKPhQV59qf6fpqPqGpCADhH5B3fpQS7RVPw6qr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bkAxGVht; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bkAxGVht"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDB6C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748012393;
	bh=5REEInBqMnaPrJ2M+fj35QtPKohE2anJog8jc4WpkDM=;
	h=To:Subject:From:Date:From;
	b=bkAxGVhtNE8PZ3xeo4s4Nu/Nug4HqJh9xynP6/XW7fKL73Ic4dyMRS+NDb7/uEfT7
	 MFdN4kkQ15JmNXr1GiZHlaTns+QuAEWzwdjr9eNA5/Tyv5tkCAh/SWydjPf3Ad5tV9
	 2IfE1SiWZhqW2uNLy620wnLeaLY1CLg83UrWmNJ0TkBnfBQZI+lY7KG4SdflfSqgXL
	 fIsQYIM/PaWnZsuMAJh8a76fgobfykzXfxacaMqqYxj2kSyjSHbuBKjMOww7/O6s5k
	 iy4oSBfq6rx8a9/2o0yen/gMHHf+FojxJOLI8ggon1HoZxvYoFdbu5D0z0aGDYvrUZ
	 fhsbgYGRTNl3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F12BC54ED1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174801239357.3800.17800642693451049561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65518b421ed1c20fa16c5b8670b0dd680066cdf036b79b32735b6047509dee4d
Date: Fri, 23 May 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748012393
