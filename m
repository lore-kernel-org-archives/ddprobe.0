Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55437DDB8
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 06:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717224263; cv=none; b=WipAfVFgFnNwxtWiNH9zQ90v+uYvI10WGeeQe0sAHIzeM4xLwipZz4j9Fo5atV6ZuJxjHJm+uZWx6VlChU7Or78bxJUHtuaASp3rQZzlT+w9TbwbCwzLsQDk9oDwmFbzKfAjcjAPqBJzR/HumyaB5fhF7DEH3+SOlOZyQuoW0RM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717224263; c=relaxed/simple;
	bh=Xcet3DaWEB4U+7q2g6Jpuiy8VwIZARFLE6wBCNyBfu8=;
	h=To:Subject:From:Message-Id:Date; b=j96nUkK3DV+bnlkf3P0Id8CZz1NDp1eQMIrcrXG+gq5YCw5wjKtdQDdR4YEcgmdohbDGQBQM24+bS7/QCt28X1DLZd3+G2LgNLeq4KNWYi3kF+QLafrocDcFJcNmOCnUOKaL74RKy9Rv3EacoG0ICtVo7xMhENrR3BQphZZ2peo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d8NyFGuy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d8NyFGuy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4BFAC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 06:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717224262;
	bh=Xcet3DaWEB4U+7q2g6Jpuiy8VwIZARFLE6wBCNyBfu8=;
	h=To:Subject:From:Date:From;
	b=d8NyFGuydlFRA5P3ahwGEcRE1rgYiQuRvQ0IgM6OzicGg8TLIMdWmDqR0gFfg/hHx
	 DrZ82Wd3t6Jgy6E7WHlLvsLhxFy1gNJ2jQisEyPLcy+gRaPr9YUkm510HWijHY3FG9
	 C8Da9b8rOLz2aAJhOuZtznHkZf42HdZVbjtdrd8cjZHTo0ysYdYD+HdisCu/wSESTf
	 CD+FDqj5ktNWxoKR9RW3Ea6dwigrcQey2t7FQ1Cr1FopM8lcnq1HXN+Ur3SLKI2NyO
	 gxyijRkZsm6cXENIo3UdR+BPnahwvyeDDgn9indsxI02CHAC4dKKaQt8N93D2omtbm
	 MY/8dbJiol5Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C41C3C27C44
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 06:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171722426279.15226.1814854362969332601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d82e71252a338b5c62294d1071dcb14d48855586fb54de372b3522aca5a9fc8d
Date: Sat, 01 Jun 2024 06:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717224262
