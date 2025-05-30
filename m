Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2875121C9F9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748606996; cv=none; b=ZX9RCNU6BH1HiBzVSA6MGzXNujsJFHbXyjk3pBbidzzoeCCZ6TjJmPYWz9fNkRD46bW7wtNjicrGhzcHkerGx/YXk2q9iyUsJ+CjJk3Mvh0pcg7d0ME8K0PzGVZS9y550UfIbipxBPeQIHY4cvqAakjgR4MnBnVKxT381zsi4dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748606996; c=relaxed/simple;
	bh=5BJnxpDSPoptLYGNLIMEeH1ZzAjXCb0LRHwT3Iy98YQ=;
	h=To:Subject:From:Message-Id:Date; b=YHJFoQxEXY+HRnGmu9I8qnPiuhPDdx7xquT9tJ6c/t2s6IrHX3HpAeUV0C/t77LYVqtwbyfIMqDSdhJi6AnnBPiafzs9VVYRwV/0+iko1NUBlU0YnKnJFyLEw2ZysDmhbmGh9v281AXyL1jJm8AdNPvS4n2tpKpmt1l9CoQOK+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WQrZNhc1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQrZNhc1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3926C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748606993;
	bh=5BJnxpDSPoptLYGNLIMEeH1ZzAjXCb0LRHwT3Iy98YQ=;
	h=To:Subject:From:Date:From;
	b=WQrZNhc1bJaCxHOgvb2YQ5UmRErf0ljszoTXGNTxb71m03SVUnzwAaHoyN2br67Hx
	 ga8jtOMCYDmdWvHV/SzoFznl0RaVTcrcn70MKrNr0u6MgJ5xDNejFNJ6Hy16o2WUWd
	 p15i8bBQxLslA9qb/2Un8UGZLJLq5vvJLxtHEd4zrZoyb/mM9MkB97Bkl15/1yG2XA
	 V5aFGrYDmWBtPpZ5CCI/IEHqGQadbhFQdwiQ4U39tfIbK0jzP+XnJ4oDzkxKqz964Y
	 7dXndIKvoXWyyvCdOGJ6oZboGd9RhGhl+4tJHcP3sduq4lsY2sQZu6X68Ckj9i3CTK
	 CdyBbOha6cSlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91240C5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174860699358.3139.17424982009747221159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4385dc6ad6626e73eb4c556aeac36dc8db4cf174c53f58a3f5c6044bb276bbfa
Date: Fri, 30 May 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748606993
