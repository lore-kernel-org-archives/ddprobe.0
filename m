Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F68521B9DA
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760774994; cv=none; b=OTALE9mpzgHBA+kM2lPYCgwrPuZ/G+FHAy+awTxl+Z9a6HFcjg+/uL8mJb1fCgSHgymYPLf7mxXxVdU4iQz+rrZ68VfvYK9DRh0TYDTuz9rw97h7l6NL4cIBT8/HdcRNE6NFPm8BNmGVoXL2P8EVaAk7m/ZA29+up+VCwCDtF38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760774994; c=relaxed/simple;
	bh=eTKwyR4bFmR0zRQQmqMsZWUK8ERNJm8cNbucAtDylSM=;
	h=To:Subject:From:Message-Id:Date; b=i5kGBi0MCpSxbC/GQZCV/7x5oZQjka1sq+XhNIxBfhH9e4JoJK7Yid4mbCEExH0cxbhdhEuuhRbNYjiVsfBCPLhmbLuCPPmTxIGTx9WMB5kMAvtGEFB/cMC904vxs/QogXT4TeLjgO6WcsW05vBiHYP0ixnvW7jhH0TevT6FwI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N+p6l7AW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N+p6l7AW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F3DC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760774993;
	bh=eTKwyR4bFmR0zRQQmqMsZWUK8ERNJm8cNbucAtDylSM=;
	h=To:Subject:From:Date:From;
	b=N+p6l7AWT91OtfRWApGGx1usuwCuloXi/HTdIV5tsMytCNMyxQ4GcLiQ7/lLyys4I
	 OEZuMjWT/ytDrVzpKdrjFOUWlnGYX+PFnzApvncYEi/fxyLzqDx1HKntt4o/gmXAKS
	 QImCD+roASiVqm6KRBX/IXyu5QxAoLAu3LP+yHjc9SRNIM6L+dVtWZWYjkBtjaCyA5
	 Yg+83qpF2SlG+VAbVv5dMBxcFv5uTB7ye1wkc08FA/e68J7Rt1IR6Ll21TrtnLEI1O
	 nEQiPDkjkEY2/gCIkfQVmVqt70u01v3yTEElrgWrBITirPTv/dNSeXVWm6rh0rniKg
	 o5it9Q0v/lp5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94740CCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176077499358.1381.10378366046552012715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd7981c230f6d9b846ebfcc99957adf52fcd2e903f6f4a83926595854180853c
Date: Sat, 18 Oct 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760774993
