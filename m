Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 579492F1FEA
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785648034; cv=none; b=R1V4Bqgc9Ltm4m+KO3HgusOJs1kpDrRk7UwBpkJhQXBPFfZIMk1ER5J8nQZ+OCH8jIYUdgNVsl2ONQ12bZnfYNzkT1KaG5sLazyC1FyPynyPOEYKJN/T+ZuXh2tK7/u1P34Kj+zNXW9sBsTRcppkfz88OlwXkRyepw5EFPvvJLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785648034; c=relaxed/simple;
	bh=RV3YiGrPvOzDK6SWaCRIP74Nm5BV2igvccPyX1kNUJg=;
	h=To:Subject:From:Message-Id:Date; b=f/0oFqBiTVy6HJemXAYU0qHxJ8+jYAyrXBXSAWd2/ufQzAX54nw1ZTsn8ZSF7aTE2D/0YE/EacWmFP9WdhCeKqOmsJ6JXIzCCqLv4pOu9YAzGx4rWzbZ4XPncXDeNZoPyFbSmnq659dsfSrO7P5gg/72IGQiTvE3gLiKtTf3lZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rCMZLJFC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCMZLJFC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCCBCC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785648033;
	bh=RV3YiGrPvOzDK6SWaCRIP74Nm5BV2igvccPyX1kNUJg=;
	h=To:Subject:From:Date:From;
	b=rCMZLJFCB/lvCeMXMqu1Otv3Pkx9EBR+4wRkc41VwbHvVcmUGY03baIjZJIRpEFtR
	 7/b7S8TbHFNFzxSeRJHqwDCoTzkX6Dh8sOyBu9tIFdNzXYzdQJOT6llTs0xH/y7Mmf
	 ze0UTZOE+63EUZXEXVuvOmDT6GQX6raaKYbDwjl8+TPch06mIDbXzPDtZkwqsPt0d3
	 DCplEE/89GXau+H39u/wTRHHdsMQYRewnW3SIqgmCO4Uhgd7YO9YtVo6BMbT/uB5nY
	 m2jP2sXuQnRBxfX87+CmZ++gLjRe7hhAq+rz/4LNcR4HZW2EowjCCJ8leSYYMKW/iR
	 Mk8HjfR/V74DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC33C55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178564803368.14865.1256740571804624083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05e97b1446ad359856f07a52e89dac10cdcb33455eef46180d636264fd207555
Date: Sun, 02 Aug 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785648033
