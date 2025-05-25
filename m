Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327CB81741
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748206794; cv=none; b=EK8v2Apz4ClKrLT0FD7gBylF5cKw72Wb8PhOEWYQv+xuiQbUoyqdRmi5WAtVIa3kzDtOEZN24N9lRv6fJv8s61LlDGN8g7z4V+1CSDQtv4BlA3QHJXJuD+P8eiB3qxDzHHYoNoGCzNxddjYPZIC3g4fshPDLV087TP08AoTOtwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748206794; c=relaxed/simple;
	bh=syZBrvF9bO2hIYe8qhwRhhs1htCM4akemsitfTgyr8Y=;
	h=To:Subject:From:Message-Id:Date; b=heQu9d06iMzg/SVTUtiCmZN90uQ/T527r3gnrJmp37C8RO/BVL1ifUGdIkxLzaWCHYM3zSKGJ/iw4l8z9mvCfclrgjTx4k9UW6p8VWRUQiWxrPYlIR/ld5Uj0QtMiNrz/ufpfPqR+1ixcbC7m8XRuvIUHsy+8L+UvXHhXxDKpuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=phfmUh74; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="phfmUh74"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DAEC4CEEE
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748206793;
	bh=syZBrvF9bO2hIYe8qhwRhhs1htCM4akemsitfTgyr8Y=;
	h=To:Subject:From:Date:From;
	b=phfmUh74mOc/3If5kQgj42v63E7kkh/rH/bNqzyZuRTb2iRx+r0lzVzRhC/Rj4uX5
	 VmO4uhj7UTNl1uIQSEYpAtCuygQ+Bt58XJiLmJ8CX8K/B8R7UofpmWbtQFOt0Vatn9
	 9AI6Htht3iDfUCh4SYtoV4pUH9GszepbCK6S7xaGTj+UO2+zunhduVPLIcKLKLwvHh
	 EUypAiP4kUFpgn37gj74wXf1QV7pBqdiDPKIWOyhVzGd6OrwRNg4fcFz2K1Brm/ziq
	 57FCb87ogFq41eV0DafbUVE0lhkf8s4Iq6NxDoOn57CH0Ypi4H6B6EuFRs3khQGaJG
	 9k/JCZihSpOnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E93BC5AE59
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174820679357.1736.6994141897368801454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65808af20924ecf103968799e00202b527de6e842d6fe80ba8fb5cc1f8c962fc
Date: Sun, 25 May 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748206793
