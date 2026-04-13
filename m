Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A2C2DB7A3
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 20:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776113254; cv=none; b=F3bEr7+sqidG43gHx2umJqzpf3jrFvEUKTzmH50Mkfr0yFoisJyncc3+Z5pHgjU68xhUIpbil3fLXHCZTfiYJqXk6W2UBbVupZDG8AZTj16FdeV51Hly4pWeCtxKIaiFlQMUhgqQRXp+1YpruSwsMt31wdG71c33l0RHEl/Z3oU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776113254; c=relaxed/simple;
	bh=GJhAOQuVIWwJosFs/d+uvIZUiLcARQrKhsUWkoSlz9Q=;
	h=To:Subject:From:Message-Id:Date; b=d12WIGTfFUxu8aq4RuoITEaS1FHTXXhD7xo7SFRh4K08cRp0KuKMcnCEJCuEdZ6KHRy5m4+ndTITBkgRT/aHyrCSP71YXQL029xc6zs1nUInYSR0vGD1+UZhx1Q2ydt1Lhk/RQ9A0ACzS5TE2Y3FRMuFANrcQ4v0XSe7LqLeBPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mbMPcP6Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mbMPcP6Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9473C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 20:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776113253;
	bh=GJhAOQuVIWwJosFs/d+uvIZUiLcARQrKhsUWkoSlz9Q=;
	h=To:Subject:From:Date:From;
	b=mbMPcP6Yz5cPFQ6ZRHPrg1hUD2hsyoAlc2c+izkz4r18oFIFsT+Tvj+4G0ivcUF8/
	 XeMQ1achE5L0IjJutg4woAqQJrLoBiwcRFl/gpAVAJFeBCRBlHxK6yKRAISIXCNzRU
	 yh12LeNBE1Ys7xxBMUasU8jpCtYVRLpvs2d6sQx0i2esFRuFsSLhaziJfFvWRVYhHb
	 qV0URHI0+FVGT5y+5QycsEmFbdqjkkiB0INDi17rbnidK94sYN7mkFxcvyOZ57z7Sz
	 4xg0FHRjF43EyGAxl4t83LzZYwJulDkTiDZsRJAiPVwqwsRlJPYy5ALVlO27iXZho5
	 CqrdsauPt7srg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA20F531CA
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 20:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177611325369.30231.16531231845301925115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5672778ca777434e02e8a1a0b81c53565c7a5c46fd6672fbf642327419ef5b14
Date: Mon, 13 Apr 2026 20:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776113253
