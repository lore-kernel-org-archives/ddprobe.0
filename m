Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5032FF176
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 15:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780155214; cv=none; b=EVYdLfdb++BhLCy2VDXEM5AJLlIMGYWDry8oJ2/DlM+6TkR65bvZA5zimb5LKAH2oguxDzK36lbwN9RYqVG88kHpd/Lx4+fp0hmggn/7aes+RznnF8iLZpurW4plvGVnABghq9LyAh9CjwbaeFtsoUGNMfmd5eJRBhYzc8fzscg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780155214; c=relaxed/simple;
	bh=rmS5gJjL22rCQlLjNPTGMeOEexC+LSfpjk2UVjkbPek=;
	h=To:Subject:From:Message-Id:Date; b=CIadFCrw/yIfIlOCpUa9NgqpcbvdKvZaTRHkQKRqMgMLxuWONApfzaKh0qRwVwbYYye+W+oB4Hh1Lo7AFBdWPGNu4Is76YswgZoyS8yHfRxXRMETp17eUylk4PKZRhXYUMoTd7sh0l40u921Xy5I76LA0Vqd7KqSGQE+B2R8Z+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IMChGyyt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IMChGyyt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEB39C2BCC4
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 15:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780155214;
	bh=rmS5gJjL22rCQlLjNPTGMeOEexC+LSfpjk2UVjkbPek=;
	h=To:Subject:From:Date:From;
	b=IMChGyytShJeJB54CzGCiAE+3bIdKSmxQGLY5sV8OxKaPb1BRYkaOCmnlBsC+pKrM
	 pbIvAx9Pt5l8TUUKVjBkufLfiWmyRAb9GHdZxazy0uZpVGmsmvDFQc7vR4z81b4sD4
	 PA8bbVlVMVC/tvU0jH7IBEkUM4T9FfLCvuxgTmlDfAqBqQ13WES6eeBrtNpz0xBt3X
	 E+7cy5M6yi1b/N4rZE6aFg9IqcfjwjwZ2PE4NRRE8mbyRNSPRpLvxump2ViYs69P5B
	 A2bKIw2oihgHaQIeJmyMgd5V0dgz0qlANjR+1sN6vOORphqgMsH2BHJeyfulCtgEGb
	 DT/huR4iRpC6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB9B7CD6E49
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 15:33:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178015521381.11438.3428873884452459373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b07dad6cbd8bcdf61454c72ee331bee5a09853c4896cc0a25e458658db21b372
Date: Sat, 30 May 2026 15:33:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780155213
