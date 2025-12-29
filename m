Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC0E02E413
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767039833; cv=none; b=XDcVySeXrl6mnkiYwZng3TWvCDueAmzkfL/87URNsIYbkBnnb3XQwn4rX8qK4Uw6F4XqCTVkirZzRQ/zjK9eA83VP5R47SR13X1wCiqguaaqmWeTDFr5g2XLvOO8UNphpy2Cd/6LTeRiPImggVC5gLhycCFTbo8xjBGSLmtIWmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767039833; c=relaxed/simple;
	bh=rQOLq6WvtDfpuWqjLz9my9A4QYO18x36bZRsOCUXIqo=;
	h=To:Subject:From:Message-Id:Date; b=NLnJ+DkJp1wuzuXE741FPBy3SKBEvgBkfoUsnrFuQnNvq6+M+vobcLqxSFozv7CS2qaRVQNSuLK9G8VHpUQ8we5vz7G2pqTPM7TuElvQ+Uu1qyHaZqu9h3K6L8gfn0lHrDTJPyRmzSnpFqEiABla/nyo9Ga5XzACrmCizW9Kyi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EPuSln6A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EPuSln6A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F25BC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767039833;
	bh=rQOLq6WvtDfpuWqjLz9my9A4QYO18x36bZRsOCUXIqo=;
	h=To:Subject:From:Date:From;
	b=EPuSln6AgNpwLTOq9YBarC4TvP2LDryJYgoWBpGz9yofa8+uMgDVt6HF/HMfAjl8t
	 xj09U0Q2JB+J7D3jHsfA3DD5kBq0ioTthqG7skF01w0yCQJ7nNEicCuFHDt4z+g5Rr
	 nv4cmLEdgBLubrasviVE7hVyutAYKu2Bg5aZ1ULkfRlzBDAcQCOsvF4jEl1A2J1rdT
	 hKP5iVNJxEYx5QzCesVK+EBGsFW7kvdpggc8GimfVO2KBVbXWQ2Fx/urVu1CZrDBdo
	 hJ0cCbEaKP1M34OFD8Ys+HIT9vBFCYHNrZZgsvMHhCzOiDKkkd94T7y0PtWHikx3Kl
	 C6//RLqo+x1Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BE7E92FC4
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176703983358.27178.1856317531454103977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49ea7287f81f1b4578f90d2b03476eb7dd604e2c913093b9abe4753f915dcd24
Date: Mon, 29 Dec 2025 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767039833
