Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C6C26AC3
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 01:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764552774; cv=none; b=PIzFT5KXeyRO2XoygRPXlTDxsoNb5FfbyWu3vHBgpBQbSCq7LsS2FUX3tm8D2c3FyMzpNCzTuDILoywP4S2IILuV3ZwM3M3gGm1i+AmL7S7mVsbCRDUVCH2NfhCNZMMo1Tj/JGRsJCkJhUIcld4yZRDufat3loqWx4N7RUobWdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764552774; c=relaxed/simple;
	bh=eQ/ez9frb/6Vv5TYCVd6bPLqqLBTPmOqc9JlVm11HF0=;
	h=To:Subject:From:Message-Id:Date; b=YBWeSTRkVviIC53drxnGSjxVzcWuUwoGz/MyfLEjkXGenZUrHQiGbODK3CFYmzF1nJo8OQaK2h8rjhknz9XR6t82s1cy+GsC9NtHIk1l/FXa8rL7SaJ4e5peywG5BoXJHIdbrAAn+nrTEpsonhsBl1M9366+sVZfyTQro6kXFf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GznRVfBy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GznRVfBy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6422C4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 01:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764552773;
	bh=eQ/ez9frb/6Vv5TYCVd6bPLqqLBTPmOqc9JlVm11HF0=;
	h=To:Subject:From:Date:From;
	b=GznRVfBydNLycCQ76vmPJFvqCGDeExGEND9RmWjh4vBTzpqxy/2D4FuU9SQT98l66
	 weG/RYPKGV6TIbB5lEGzrkFtBD1TJrxJFC8My3Ym9eRemaS1ODwEmNH2Pdj++35Wv6
	 IZ/uPEFRI1XqYOecjBTzg4BJedQfJczYmm45R020c4T0/TlqVYjteTgXBX/XGbGTvU
	 av9p5zVfak8DoYzLdYDATQcYy1fI1nXC1+S2y3c9pTtKiz/TvbTg+eRLGwBX3Q1nWm
	 AyjlPCYo4iqnyqDkPqvv34kuUcOWg50aeQ+SB7e3RqgsXS4BQ0+Kr+i+XXyXbh1Mj6
	 COEFrD64T8ETA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EAFCFD376
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 01:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176455277358.9787.16935817972520647137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f352d11dae9f6358d9c82dbcb60b7608eab7c667a80494427eafc9e61341f33
Date: Mon, 01 Dec 2025 01:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764552773
