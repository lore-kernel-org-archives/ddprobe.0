Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1B91D515A
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746219594; cv=none; b=kU8mDSFLKkXlb6k37Z6h2sK2zCPjSPuH1E+kDSrUMXVs3wbKO5PePuDOl5V1kFVJYjhFou727uySB1JVu7A8y8T6tTu4S2o/6cFLZWh7rnhPkesYSFdtEjrKL0gQHCAQjL/S5CyGEb9lNdWnvxcvakg77aGIV2p3OLunEAn2m6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746219594; c=relaxed/simple;
	bh=JYgvY+st+Z3uQ9OBnEYFkA6Wcyy8yJ4NigJ65r3P0kY=;
	h=To:Subject:From:Message-Id:Date; b=fxxE+L+nmyGxQmd8m2G0D+rWG6QpWkvCwOLq0diuuaryOi94BsbgRMfixJp9iWlu5pUm/d/ocfjtFi7fqU9Xh9Ak7PHTPvqIaEdqvV6yZ+GnLj8fSq9bKMUavHa/GOIBNtnVfkTO4Mk037xE9ZbPLNypRWADVViDwuY+i/RY+SE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r8h29YtM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r8h29YtM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1461C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746219593;
	bh=JYgvY+st+Z3uQ9OBnEYFkA6Wcyy8yJ4NigJ65r3P0kY=;
	h=To:Subject:From:Date:From;
	b=r8h29YtMmsN0ZR0SbsP0tSbZGeaMx4zQiLhes4zU8v6eszW1zRSxZC4QEtQEhnX+k
	 wlnKdt8xKsCndMcdRk7Iuu3sWebmCRT/y0j+gqpJQjCtfHM3mARmQTYkfcswWwh6F7
	 Zv07eGWCFasVhmISxB8GRFpFftGRChT0v+KQU3/A1h2BP2ui2dqcJg6F5qCo413LSE
	 G1Aovtsx7p072IA2J9RMfDeYh9Czb/8Zn2r0Fmap2N1ms/E3vwnPRC6E2cXEZASS62
	 3h7GgxluiwzP0pLqCJ7k5omCUxQHKuUbkmCaixBiQpxBQT0pX7G3mmzWwLxSKoZi0b
	 C10Gp7xa5lL+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91041C3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174621959358.2981.12553911359671644223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b686b7f878c2b5aba13a0a8618b708b6ca2986338d2006b7c4b0a4b12db1b772
Date: Fri, 02 May 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746219593
