Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05EDE273FB
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 13:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705842497; cv=none; b=ud3kkfue8JuPDyeEPkhZKdlKkUBMu66IyZOqO5XaJPiyp3hOIoFC7YESXpkI5ODMV/EFPcEzzXgEF3T/mbg5qPGXxCTbuqugFNxAFkOSc4IIPRkSPrm7qU5C5KC1wREhZ1C2XJ9fq9xdCMxfi7FdXoE4ZcieqY9rS7HfKWXQ4hA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705842497; c=relaxed/simple;
	bh=g6wYvY/D86YRwoDLTjGiO9JZ5AdpBdMbJpenvpx9VwE=;
	h=To:Subject:From:Message-Id:Date; b=bD3a6+AcagJdlErvyL+NDgNsodaugCXesnVlHHFi6Lmo1a6Cq+AXOnqlrxdRYwHV6oeXh+GmOyRgV4MMvIfCRDB7WA1q6ELFYthbKy9EnO23LBM0g0lyCVUWZ5KiSqAYdySsGoTRW2J5UqoPn5Y+ZXrewryBL93xzLelnIYEB2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X2f3C56H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X2f3C56H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 784B1C433F1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 13:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705842496;
	bh=g6wYvY/D86YRwoDLTjGiO9JZ5AdpBdMbJpenvpx9VwE=;
	h=To:Subject:From:Date:From;
	b=X2f3C56HCJX/vF1kEuZxPzgvq8CLxNUnxggyC8Sy8sfETIvdZHf/kWOQmc/mZZFOd
	 EyYC63bBLdog5dRUUPiervXHgSK5kNKC2avH49SEYEcawXo4ibuU0pQomc1QaK372O
	 Mb3pr/IFb4J20YYH5P6B5CqHk0hgEps1nsFmfUpEPaZMh7k+th0aBOZ5taT/QgpB6Q
	 2C9IUWBux7fPswVKwMS4jSpNWdSd4MMAmM+fnZ0GeGnoxeboN1yeepNqmcNljCdvGn
	 B9kxYyTdE41ASUfw2imixDaUp5BhlgUsA+becl7OXK062teODQ9qIPGoab6sJGg8tP
	 A7zacDB/i4ybw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D3C5C47422
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 13:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170584249636.25698.225318846614422649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65f63b84eee4a77caedf8ed1838824e8797b661c0a2214add34d15cffe87c7c4
Date: Sun, 21 Jan 2024 13:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705842496
