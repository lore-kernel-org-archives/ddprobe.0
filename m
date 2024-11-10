Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A7614B075
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731275754; cv=none; b=mx+JSi8xq/JJNpZqi4oIrW+PnqBsHuyh2Aj4jD8MldkNeu+bK+XqHM2Ks5x3epuWFn/EbdxwUQ0xK0OIpisiHWALk54e4GHjx2D4A4zmcJBAcRuk2lgfMmBOAbUZtdNm4Oo8d4E3WnaBuPNHhYsWYoJCd5lAboiy/WKVg1FQB3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731275754; c=relaxed/simple;
	bh=4TySl10JjH5BhfFmjZoKBNBRcKsH7/7fMLRrwiOoWY4=;
	h=To:Subject:From:Message-Id:Date; b=lwd/yWrwtJbwBoVfgB71W+h8AE8h6FKtwzobaBLFkiQNoBml5fgiILqYEPFb5wXFIDtUV6oC3ZF0BZGXV2kVT8JKAkH0NuM/3Gm8EshqdYksY0rBQ7CiuOXHfwq8sMSeqcPloqybLZOkFHJh/JRdDFzkaoQJ9X2BV7nO0Gkshrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hOxibPZ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hOxibPZ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB0F7C4CED0
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731275753;
	bh=4TySl10JjH5BhfFmjZoKBNBRcKsH7/7fMLRrwiOoWY4=;
	h=To:Subject:From:Date:From;
	b=hOxibPZ0SOBjW26c13WlcwaUhkpMddLNYta21h9K+rsJYFRQjXBS+zJ6/MRi4Q+T/
	 AxIeZ1G/j6Cdg0afQH5DW1ZYllQIdoqGgPdK/ywH+cGq4KQfwy4q0HIgedBP5EuyAz
	 I7b082oRkUPTY6/4A8tkoCb4vYRdMs9xuNArFBVSWGoghjlR79TXAVjzPe57njL9rB
	 IAzL7wzkKMfE5HazmAemeK4UXe6CFhDXRkik/By/5mcUsKegCx/a+ti9DvBPjmmPk8
	 KScxDgRoFBfJFVCOOK95dY8qbE2/5uj+yMKB1EtGe8fQ+61LQvtJxqsNaOowk5lBQe
	 AeL1byxMFyX5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3C1D12D59
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173127575364.6405.11808764568819142933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0b6dec8633aeaff66c89052db51c4ddc6055d0d1ef281b5986336360682b70c
Date: Sun, 10 Nov 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731275753
