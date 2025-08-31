Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1878918027
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756648795; cv=none; b=VWkrlB9RwpQVbRug5QxfXj3RXAY1Vdyr++z3bBgJDTSCl1YwtlOWT1HEPsScBOmLLw55aYeyoUfc7HNfI5F6vzAJ6Mv0fvdyY7p6+NgDxHP0HgMQyJQKBB+8zY/JbDjdA9GiTAuwfL1Esiiaww+knsY1Au0fkIY/Pad9RLyv7cE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756648795; c=relaxed/simple;
	bh=i6q81ctiW1hXIlZSNJAU669UWBeagry7hXuXtSNABE8=;
	h=To:Subject:From:Message-Id:Date; b=aY8QwHF6sJiORRu+yVwk27Hfn7LLTmaAi1GyskbuUWAoWCqz0QNSA5Jhr5wxxDcxwUdF9vrs0HhVSYk6LkFgRiuI3diogHKx3au8EHKVdl/khym7C62su9DZk4A0y6N1YEednH/LFTICfdkc8QjwH9SylR8ubpS0WDIv2bK1go8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUAAqiR9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUAAqiR9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCC5C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756648793;
	bh=i6q81ctiW1hXIlZSNJAU669UWBeagry7hXuXtSNABE8=;
	h=To:Subject:From:Date:From;
	b=QUAAqiR9I5DnO04MozOe9hyD9Z0lydp9KnJx/Ky6e3yM3YSMBkqor0K8ehMA1kBDN
	 x1sktzoEOi4Xrhc6xvlFRvLhnqRhqa55JztGOPZUKIUgbZhAinteA6WffmohDE1xRV
	 IhMn/+R1fGW1Zqrv35HxyS2IoU/L44aQYeJJ3H8APah7gOddZDm2zYwoDGeAHP2Blr
	 cB+Po+qz2gIekj2/fH951diG8lgRuVMkLXpLgSOv+PtVDUr8GaMZdlemQWOwio9zff
	 Uv6+WbOKaCmbPAfDEy33E/DnSdN3eM8vl7WaojGK15IB9O8f8upsmAN/r4oGh+WRqq
	 /vGcFMvWAS2Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F333CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175664879357.26841.6632398574315154360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 449815a189ea3a5f55e4ffb01dc52ce690c719066aeea966d0811e452ce207e7
Date: Sun, 31 Aug 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756648793
