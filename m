Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472313FF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 08:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764664375; cv=none; b=kl8C2AczPF0mYkd0oNn/Y80Yk7ARUWNKETCB96FhUa8FTXaPagR9/hjmsTlsOhAxmQSL7N11d+GjPMAV8NjjWZHw5xJZ1myRcwUpiYUSyT/dzE/1oLiL01qTvY03FdfLPNj9lMwIKO3MOC3aHdxwSc7MBRg4Tt9HuQINuGd8jx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764664375; c=relaxed/simple;
	bh=5HJD/xtyU8H1/t337+3XYfEhUGVBoCH+gN4K9bhQuk0=;
	h=To:Subject:From:Message-Id:Date; b=m07nBznU22YEGqcCSlhSYPySDnUxA+YfHqCcaSmzG9c4PcwK7Fh7WLbH1GY5OUiby6ld7YnSuiQYpLPrRGKAIAABRg6ihkB7QAJfNjDIKcwHE/soxz4//iTN2OuV0nMlZJ2puOQ9AO1xxmBCr560zwrSpIhQnxfWnnhsqKPFNeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PRbYaaHm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PRbYaaHm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA78C16AAE
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 08:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764664374;
	bh=5HJD/xtyU8H1/t337+3XYfEhUGVBoCH+gN4K9bhQuk0=;
	h=To:Subject:From:Date:From;
	b=PRbYaaHmXd+CiEcQyv1SJdAIUZBLJ2EhzfyGNvzjOEGN6oveDiww3E+TRc3PdDQJ4
	 S8oFqdBWyiFLOhP8IhanosE7RZHdWJ0vJCPjlMjrD3QGEJZA3Waz4ad2Ptb+jpqQyQ
	 fVX9nVkl0jQ7Mzl5dwE2Yz05AP6Re6wkYO0/pkj6Up6G/MD197/t9cSiZLjcvHsGkW
	 by/Cj4Gv0qjRS2Lk8wfC/C55bLIg4h4whsrV+Xb2C3V4gapmZu7IqifXgrxPr7Sav8
	 i0eIMGWlTci5CddxWMDnZ81ambzvOUMxmSAkuXDXtc/yAzaS3RmE0hYUJId2umVWR+
	 YjydiBG7GYyQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AACCCFD376
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 08:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176466437362.7025.1325026978985083003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3307c82996a5a83df63b5f4bf2f337b5e229789621ff5fb9420bacf3dab3330
Date: Tue, 02 Dec 2025 08:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764664373
