Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A51329D275
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771145094; cv=none; b=TIuJkPuwnKuk8WS+DdAj/RG+JWzArVNAhj7Nb9nWkQi0Ag+zkrJutQFFFcAZd1EvIJ1hujV1iFIq6bJypPFClI4BK7kGYcmm9NbqGOO8Qbvsz4D6vJ2HzD+NXQBycYN/RN3UiYq7Kh0pzs4BTIQ5hakCS/o/iGO7HC28ME+yzFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771145094; c=relaxed/simple;
	bh=duKT9XBmLtNSGyIyWRGAhRpmVqENksZ8hNVCJM1TsUs=;
	h=To:Subject:From:Message-Id:Date; b=SFq6D3IUtyjX8/lybm/42uPqOmNogzdbwiUZUxUzz0MPCAWylVPWrnQ7s84naNEh7v611ZFiTRO1Egtuvwq2hcYaiIo0GPEQtbWy0yYmBOXwaVWHEylYNCGyZGmmBnI37Hw7HyDLvuYrPwvmjLP6lbW6euct8aYO6sSgErYnppA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ja3+5tKt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ja3+5tKt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB9BAC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771145093;
	bh=duKT9XBmLtNSGyIyWRGAhRpmVqENksZ8hNVCJM1TsUs=;
	h=To:Subject:From:Date:From;
	b=ja3+5tKtcm0Agvo+JbGPV3c1Caijlwx2nwsxqgClps4pO8iYSPeYxzPN8VdZiw3Sx
	 KLM97KnqeauriPVTwqc9j7VkkHD6p+7cuWsSkZNWKPafa4xuOiqPht1nYp5J2OSwaC
	 UkAf90PCnQNzdPXoKY1c1iuovsLhDbHfpGFoVuUTS634pSKwQDvwEh5fXEkU/YKZXD
	 gGMfzjjFssbyT3VQsvzv0aB6bKJFzgyB9Xupf5O7LiBPxZ7gQKGnLC+bN9POJqoK7X
	 z7sDGAb7p5z8jzxTqS9gDGOm5TR//Z+nQNXQ8ZKGQGM5LdZDqXDvP4bNyPfmld9NO5
	 HInKEbi+scejQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0388EF585E
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177114509362.918.6833295983080976887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9bc3769b00cc10ab95c07914571c25c67e351a9a47fbfdf63c7af63c85de881
Date: Sun, 15 Feb 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771145093
