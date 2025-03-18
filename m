Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06FE7212B05
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 18:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742321394; cv=none; b=HchXGciXEUMsm1uNHakj3IHxJ4G6CdGFu4BIurt4BRqTMJpzyH2dbZTfQdc+4c368TRCW3QFMseJJYzICNskUxiA37CTg6KnNG2OGlIvtN7WXJOniRZrt1q8/4YKfDOYOehFehgmTRHTSCcTCFtJUiurmIjBtcBXXXGZVY39324=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742321394; c=relaxed/simple;
	bh=VrJM6AGxLZgVTUowSKfzg6iyca/kY4RXPcRCI5dRePo=;
	h=To:Subject:From:Message-Id:Date; b=VWuSskjhgviBQTK4MoM/25C+lC3AxxjzfEM62Bv/v/p53BbhXVebxwF9jV5sw88A0Ru9x/tES+njMohASlRrwQ6rbG2DCBT0f45wJMfKSp8VjTyr6CjtHq0PQ1g73eftkvjg0sOPoavvXDn2g63CnCzjJ5+AvGYfw8yC5EFftSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GjKN2rzB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GjKN2rzB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF31DC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742321393;
	bh=VrJM6AGxLZgVTUowSKfzg6iyca/kY4RXPcRCI5dRePo=;
	h=To:Subject:From:Date:From;
	b=GjKN2rzBIlWJ2Oz6TvDTK1PDU+uaJQGnDvlpedZ2+BB8HD0ZRY6cj7DnHZdLcnMF8
	 JhfTPO71xEcWQ+0Ybk0LRd0RgsvrJgLK9k2OJaS0UzoLaq9Oog5c2Kj9MgRRD3afxp
	 O3QYooJYlgcOHBfznx+IdroJBZQ214ugOFhsPMEaP6Nt9ASBHEq3aNa3jfMqZ/Gluw
	 1jZEC8K4/IrN/hX7fa1R24cnJCNf6Zr1zP5aBlFX2rKvc1Mhs8rXhp61IDbOe/O9Rr
	 oI8LvIlpx9DQfrd3p8stERJmCVFWo+rhOGctthAQi3HBsfQ4F4rXlEjFmefhyR52o1
	 d7FJbvK+3N/yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8A6AC282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174232139374.7162.15091852049098835744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90aaf72fa96064bf51d28c5ff9a6ab219171d98ce3735b9307f89a1ac4ea3cf3
Date: Tue, 18 Mar 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742321393
