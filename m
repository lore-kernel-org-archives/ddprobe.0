Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15462221FCF
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761191394; cv=none; b=eUJ/FqwSRATVjTMzbXlu+GXjM15ohdUEgsIogfUVN6JvqYz41X2ZNb2gNH9H8KoFfbGrb+St9E82rXwyPupIa7dvswPgjbmrmzjfnxpA3+CHc4PcepdTNx3Mauktzf3OeEspuHxIeCJa+RT9rCkSmxib9kNEdpbXkh8KoVEy9vA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761191394; c=relaxed/simple;
	bh=Wi2Leoi38oqvMDt81nCgYeeeiuSfUQKhKs9eoJ47rr4=;
	h=To:Subject:From:Message-Id:Date; b=bLp0G2sYmdsfxQbn3AFboAG+WFWxW/wVwuMO01rSSV7ybIXmF6WrJn/geJQupeAOo0FXjmVip4eI81jeAYHXOHjzSbjFbEo2/x5wM97yoQqK5CxQ0gcngGt8VL6dPByE/uvdqUgNxZ6OOi0VKPx7jqkdizcMlV6BH6SKpC/+zrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fCCOQ+fd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fCCOQ+fd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1202C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761191393;
	bh=Wi2Leoi38oqvMDt81nCgYeeeiuSfUQKhKs9eoJ47rr4=;
	h=To:Subject:From:Date:From;
	b=fCCOQ+fdFLtI5aCGls0OZi3KFO1qciiqSTF4dgc4mI0QS2w7FMd+iRUU5MwxdB9zc
	 SVx80N3R7hf0svINo/Rzp3VYyour2DI7Gc1gGcNrTuRF+1Cda4MOgymM6nk9c22rNc
	 5ILADmFv203kzRbG4Clm7pkfuJaVrPV/vDxtbADWANeA078w4a2xchrIOA5/shFrsh
	 MPlXH+Wv/MzEbiXEPu+8EblJM6KTWoQh49ID3RYdHjo/iFoNJQTGgiY3GFU13At4m/
	 QwCU6LeCYAsiQpj/wrH/Y9zbH1pu4IJMKdZbjEn9kY/rLyfr2UX/yCK+0Q+EFvd22O
	 6MmD5sF7M7/Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F24ECCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176119139357.11804.17514422787732920710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9b3c146cbd6ec6eeb277598e4984a6fddf6460a534cf55fd9cc36d52058dac9
Date: Thu, 23 Oct 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761191393
