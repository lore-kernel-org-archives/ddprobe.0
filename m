Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A152AEE1
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759130994; cv=none; b=lfEGrUkP4736Yk5xgNBmMXuQgV8ebBK5d6SbmwAutjiWJw2hdYlXoJm9uESRTAaFLqNWPgF/7TU5/ROSUmPI+c6ULMrVV4ZjW3DwayoUaz5Zc/G7MKePCwIzkQmVrC+qKLT3FmpjkO9Yf/r9XkzZoDWws5rOdrHXyz2wMcGcKek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759130994; c=relaxed/simple;
	bh=aRf5/fHFahcFnj/u4ebLkhgO/8rHKNRp9FlXUulQ7hw=;
	h=To:Subject:From:Message-Id:Date; b=rYLbSj/Us7fsAognMIWtL/iO81w8aEXmxGsBzbg1Fn5/5CFNtRbmrsSrQ6HGg2VNLVJKrj4J5T2hzqL8USs66XTGm7Y7fx4xWm+4RpVde+NssG3nmgYiZ+jR4ALANea9A0tlP9hustJ3teDgzCiuJIkOr35magGeax+DeMTRg1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GnldsiKI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GnldsiKI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3921C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759130993;
	bh=aRf5/fHFahcFnj/u4ebLkhgO/8rHKNRp9FlXUulQ7hw=;
	h=To:Subject:From:Date:From;
	b=GnldsiKInu7Dd0s2ob8Z5atCSju49rbLp4hWx3TNVv43oqqeYLAuul+QMDocMa3/w
	 pGzIszjOS25NzR4LjCIz/xlGEC57UVYf4uojcZFawlxYehhv/L7611ndr9HXpVPj3M
	 rIAn3Qb07un8DBeMG6r9wLY7c4fLN22RAUyjLOANNYteUQEQTFEnCVWx5TfY7sY5NL
	 21+dKbf5nmVwWEWoGZlPtofW8va4IOMbQVtpVKq6q49LUfZze2lV0qVxYWf6/pqGY0
	 RzRLQ3573DR1I/DzP4ALfj8pgulOZRsu1428g/t3gPlfm0wwUXolzKcbtONs70xybV
	 swuQBtdDOc5Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F484CAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175913099357.25883.7397974155838039548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53a8cd441ac473785e817d43b9621b0ef38e157e050ec9ccae6dd11d50a6ce6b
Date: Mon, 29 Sep 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759130993
