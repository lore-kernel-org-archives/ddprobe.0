Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB226DCE1
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 16:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776615454; cv=none; b=ncfuL6JiTdMyEErN84YjHWgViit/mZrXpaYfDmc9N51/tSZFPipCY3OKoEIR5Dotz2LpY2nnI+82BA3jRaF3wGRdRu0wV/hCGyB+pvMoCxxZAvMnzH2MwbDvvNgfdAN9AkAMmJ6xeWZjfcSbyX9J7AxKADmKyMr3nxLQKDI55y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776615454; c=relaxed/simple;
	bh=3+kGr7uxvwNy0oa5FQxeCZWAbq9JJiHWkeJ+pRpEZlo=;
	h=To:Subject:From:Message-Id:Date; b=FuPbgtP30y+znujEeKdyfwnIWgrK2npZCIsr5qImVBRSrAI5xXKIAeqmUvXS4iKYZFOVD64wSHVEVZQnUhUPIhiFqs0C5vVMa7CnVCcXM0N4wCGMh/Z227C5U76GA/PRSMKTFeu1R5+sWyGy9ZhGTns48r3IgVn5+2b4lPUcmr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B09rq1s5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B09rq1s5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE72C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 16:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776615453;
	bh=3+kGr7uxvwNy0oa5FQxeCZWAbq9JJiHWkeJ+pRpEZlo=;
	h=To:Subject:From:Date:From;
	b=B09rq1s5H5PUCaS7zt3VqFuj9omgrpfJObBcSxVuu2ZRgPVcn5GOw2oeK1GXkJb1C
	 /xDVJOK3EqhEC77eEeNOC1lEDfsTZcX0rFKY39YMOMwT0P1FyCulEypvtGjyaFc33p
	 ax18c+bQ2/eo2V/QcVFqYFSdevX3Zg8sAnuwuNDbsfUa/0grH0VeopRJjt6xJrQw9l
	 DIDZ7p5Yml/47lED8Fnlcm9ZZVVaqgkYhWvX4r9spvl2LzMPnqXY5IpHdK0HbhaaM6
	 jZ8zsqbiT2wIjNgkF/dzz0PBAVxBitzX+vpdXpM0MGEQJ8KT5nxAgsMR1JrtIT0UAB
	 8JoqNdgAk+8Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD136EA71A2
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 16:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177661545369.29737.11300412549123504444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58115010ee5d444c7541440d27bd34648d84f3637e64e3e7c3713fc6651b80ee
Date: Sun, 19 Apr 2026 16:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776615453
