Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA5DAD2C
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756001394; cv=none; b=qH7xjII/gTlqV9BAJs/1nlg9Y5nLiPTWGCgo/UsdYkY+rgubAkER8Hhkw1pshpTs644L6+EndyT3K6FH9MuG3u7536ckVJ4m4I+Wqm9mYNDoAsixxkexMKXrd8xC3gvh7qXJD/bTHmxIUzAV/lGmlXKt4Pqn4mU7qZq/zgippqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756001394; c=relaxed/simple;
	bh=cy0Ocf0UfHdrozpSJgS8FSVko9UXgSjRMPotqS0yUGM=;
	h=To:Subject:From:Message-Id:Date; b=Bp3Gi6PA2ycCQ5EGyLAkNE8LLDOiwic9Jke1q+5N9Vpche320/PTsdgHdGELEScKfKDan2KwI3i5CuZg/n7cBeByDhsGeH+ToChE8Yl6TATgEP/teTrBhkSAXZITXPaSaOSxy2icrZtM5yCsJ3/LEMmTYJ7Xc7UmFFLMxxachY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pqO15S8q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pqO15S8q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A829BC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756001393;
	bh=cy0Ocf0UfHdrozpSJgS8FSVko9UXgSjRMPotqS0yUGM=;
	h=To:Subject:From:Date:From;
	b=pqO15S8qnNGNJX0iqCLK/ziP5q9959ZDPaBd+/gTKU2sSxr2Zcel83C8kkAhcqnB6
	 D4kPXxdJ5/QT2bURmWr+06mhVq4NN3XKR5515XmrarWE7e6Iim+JQv4XYW1E0Wequt
	 d/9pUbIbySaMKII0g5cWpo/vDWYM9JKbsOYZkuziSqWdfcZGMbvo8CTEVtzJYlyBl2
	 BxnWFmp7ARJEmT0zRMRaCFdmvZps4JhfdnvOl8+VCTAas+IekPFjA0Q/80ezICcnl0
	 OP1YpRfgg+P7/3TG3P27M37Fk4Bk23W41GF39GFWl6bBM8fOZ+jc4q+sIHTjlz+miN
	 xcweSTDRbYdSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9160CCA0EFA
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175600139357.3511.17148618886473181528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6fc5d4c3f2f42d00d2f6581c126a78184aa7df4db0e5a70a52ad01b3c3b161f
Date: Sun, 24 Aug 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756001393
