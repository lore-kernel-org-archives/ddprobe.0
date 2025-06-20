Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4AED15C15F
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750386593; cv=none; b=GCkUzA6BvIFqFf6j1edYgjz05njvW8Wy7Lgxk2c7gkzs7sW2tDpL25OtlROITuiqdbC2NPiFbPP8OVNyWCqtxljV/gb9xWdrASk+oWizUbSkKtpy399fyLbPPJrF/vaRUL8nbAnhuuX1XjBJslO0Bn6Al0LDiKYRF9ICFhTKaPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750386593; c=relaxed/simple;
	bh=hskkSOQ83N+bcZAG/odlXgubu4KyX3L+i1oCy6Stm6Q=;
	h=To:Subject:From:Message-Id:Date; b=FUa75lH6hgfUx+UpcOLRjDOYRHtukdzZdDUa/z7Haw3EmjtAFcI/pi0Xp2ZCuJXh4ZiTwbG0OAmjBGaewiyqry4jat0yaVjUJryqdnLvMvXq6UnYHL2TxVx20xC6q10amNm/HDLG+0IXWkNUREGNG1VFKHHcXz3CAjHJxG/TGUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HN4TrtX4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HN4TrtX4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AA4C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750386593;
	bh=hskkSOQ83N+bcZAG/odlXgubu4KyX3L+i1oCy6Stm6Q=;
	h=To:Subject:From:Date:From;
	b=HN4TrtX4KJZGMbKluqoth039p3xoihzDAQervSgVWdp9bJileM1KRboUnfR8xPIoq
	 HqQlzozzr/f/KUKZ8GnspAPTR4qRDaqhIikNpSNJAelIJLcpttPyc5UkgCiqCftZMh
	 VdeAtOtHv9zoV9BwCuf4c50ibjbgcw4vcxkrqV2gOHReLx/2gWsr9tawxSblgskuw+
	 fBn83OSSl3YuDwOUc52zluMD4kqgjokUmi1+n9hpZlwGWUczyV5cxCUZCbydMtXzXW
	 mCx8cpU28UbljTpSZtojffGY0aWdUHFqKE3dRtudjIt9eWirIryKG7OsQ3yjWIRWAE
	 G+vf1WBNMHCMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A7CC7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175038659358.30838.10893709457973253326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0014633d978bec7a98713b44904888b9201944cb8b85ac8791b0c8bac57821d
Date: Fri, 20 Jun 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750386593
