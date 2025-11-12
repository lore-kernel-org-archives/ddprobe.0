Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05A1F2475CE
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762970394; cv=none; b=tCQV+Xf5gB7emNY3Y8HuTzzxr4bRjBhmg9m/FMUGMwU13BD6Q113J+T6DnzDsFb9hWPc7cUlwu04G6orCvjqVX791SjFVqtvhEdLNTNZUN8XZtiQrE8LVScbbloD3PySpDX+jSmNpx9uy9FmFrnBbKlHpaYBt3zIaK25QDM8tms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762970394; c=relaxed/simple;
	bh=tBjhnRuVS8UH7XCqjt3nDPiyFpx+Abf4sZtVFZCKuvE=;
	h=To:Subject:From:Message-Id:Date; b=uVsPhARIangp3hmsaU7vcV2TPojtilgE2kclMjENICKnahoRt0vP3Q0dBpGK60CcAwdiuAdRu02KTrU0knlULZos+u6QTzmqCvmkGKEd7ChctBCvOC0SaS0w52Y3I7sqExJeLpUyYv9JMRqyG5/DVaJBLD4rakqaU5jbiH9sSw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jk+4tJwI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jk+4tJwI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22F0C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762970393;
	bh=tBjhnRuVS8UH7XCqjt3nDPiyFpx+Abf4sZtVFZCKuvE=;
	h=To:Subject:From:Date:From;
	b=jk+4tJwIyGJf4nHuZBXO0J3YhEkA/RBxsl7nXHA8Zwl2VzfRNFrZvsggCzrvQTtdK
	 JBs2vRGvCAeGdKFJFo8HlCAWqGjUjZx2YJgnjlIf/3YXAPXJRbKp5h+E2fyPzRFoon
	 IYxrI30H1n4u44VrEp7C2SgnKHTINesy77wIrE3vnVBh7+LiGv0sx/MLGT6BLm3SKX
	 41uevdciuBlMiLO/VdzrZCbCdv72zpSzokqCIaFLxXh2BISESeFEkZEwjKTdaaohyy
	 FweFYIFOsAfrks7ZEBj/EXdxO9lfAtQZ64xY9xrmVPaxjiDRHfdxaEd9sWA3H9BrTw
	 JOlEVg+uUe33A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EB7CD3438
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176297039358.9469.9366303596352259492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1f904459bbc03000b0c2ddb6cf55febdde34f32f4fb7040a3d2eb1e7c28d08d
Date: Wed, 12 Nov 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762970393
