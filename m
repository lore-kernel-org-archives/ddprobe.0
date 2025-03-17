Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4CA1FC7CB
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742254794; cv=none; b=hAIQGxb/NO6wo6GfVa1RjBFL0OnCToOFvn0elDbmrJGYX3qRVcgqC3ritIjWvY/fdtlcATd8ik7MnnzLi5pFZ0CxNJhil0gLgArqsNLiZcKwD8+4QR8yIfxYcy4+wwXyR2RCdtJujpLNnKGrtFyUZiJy9P0W15pNif2KmfiUWTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742254794; c=relaxed/simple;
	bh=YmOVv6GKMOpU9FoDXPwaDntCf2+jlM5L4DrNOSzK7XY=;
	h=To:Subject:From:Message-Id:Date; b=MrnWyuyXDH5Cp1eNNP3334lkI7rsKu8IfD1/i1wv6bgmKNeU12l+41zNI5x9bo/viMtBSJWdMEuu4LlMgJXMavpmsE6SjrlN7K8NP4fLm0zVkfk96lfFlBGf6y3v9Bt/Ne/XeJVfrsY0cdUW8NqZ+1QtH5tD1Mva+U9VWVSyOQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHl71TQd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHl71TQd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6213C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742254793;
	bh=YmOVv6GKMOpU9FoDXPwaDntCf2+jlM5L4DrNOSzK7XY=;
	h=To:Subject:From:Date:From;
	b=pHl71TQdHb5VzuNiT1rMXOeybXfvocpu3TEBcpaYDYUUQN66OWl2p4ID4ykW5t/uG
	 IN825FoJosZLO/4Iy8OL5hPVZQHhCKnKe0z1WoZ7FEeiwwY2s4gG7sGbVd0pWXqBgt
	 gQBvGKwhUOhp3Yx1/l/H7XtGKnD3BLSpMY3bHhmBEos0PohpIj43HjdF0jvq5eMtMt
	 Zc1ucAGQ2jjBdqkjRCP8v967uZg1FDj8aWal51+fKsIhuyZtLu1oi6gdkhT/ByBVNz
	 dEXuhe8h5QWP4vMrJQHFeZuCFoWTHwZhjQ3SkFLfG9QSUCZa8J7TpfGJrMMMiep+j3
	 ToURct+mWsfVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BCBC282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174225479359.7664.2929183744734812555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a9f34dcf2e959c7c07eb64031efebf1d53256282a92268fd136950192e5eb9b
Date: Mon, 17 Mar 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742254793
