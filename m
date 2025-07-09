Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182B22E11B6
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752068394; cv=none; b=EahwWJExtg6NCN8QJwrOQh8isvP4nt4HGpRbkaSKuOYL1iATBnL4tbTgZyxSLxhm7zSBkrv+5ihoc82dUcER9S2i5HNzoWs4Iz/nfVhnb6Gs7okGGCF2C0uMk6frK4RTFGUi3EB9GV8Vdw+Bm8gF2P8vTzTmIEP8ZUHWLR0t3Mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752068394; c=relaxed/simple;
	bh=uhvGTox9T/oL8FZ4TG4AzGZJ3acD391lGJ6loXWXOh0=;
	h=To:Subject:From:Message-Id:Date; b=QdXiAaCmjS6pCcY3FHCSl3abqrasIedITeuBpAm+J5XcxMcpGb7izc/kn5I5EOmNtvDxf4nR0pFbnKUWLJFbKw5D5wE31qOIB/PKoek+94nCuQtPtA/2jZr+C2HDQk3ol6u/oduW4m0q6QyuifW/9uDnWzOqN0GKMG9oWlCkQx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pvjcdsdn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pvjcdsdn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D472C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752068393;
	bh=uhvGTox9T/oL8FZ4TG4AzGZJ3acD391lGJ6loXWXOh0=;
	h=To:Subject:From:Date:From;
	b=PvjcdsdnRUjpYK7nNlTk1x/h8p77SjgR9pzIXAKlL4G81u/4T6F5OcA1ux3kdVi+n
	 1Z5aK7isFmr/9Db0uCfXYQttOhQpkCYnAiz/k6BIXT7IlkgI/R/jGgMWd291OlKfwn
	 UPa+kp1lZKfDyc5EzcpuOnYAnB1dq6Qb1zSToZ3N1wyaKaUKyYBacOWY2oagItgzuq
	 Iesq2roItKN9ELDzS/I5/v7tKaGIm15QVk3dxt1WBHHuLsDxasFQ7rpmbcqI1ALN9y
	 nQzVLIb+kZeLnJU31DsqMnHoXAk9wUW+sM4XKp7do5sqC/WrxyRo6Cmb9Z2ztEsAyJ
	 505OYi9anl7Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF97C83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175206839357.20391.12360923372193158131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3bf56982dfcb728258f7960a46ccbdbb004568bda0ffc281624ac9f7e63d181
Date: Wed, 09 Jul 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752068393
