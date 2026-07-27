Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97FCE3246EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785162634; cv=none; b=cw7T2UAoQY7d0rYWdDia2nt9Pd0NkTdUx/eTHUDFk8d39+g3FHcP5+yyI232wiycN1OZy/5aCSO88P2tFHULL3WHF9XtKOIq/RBJqL6OmbWNd+a90ICFMuZW4wWPxESOqED6XDmY15fvk895S3h486LmDjxQow+kz5o2i67ENLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785162634; c=relaxed/simple;
	bh=97aNIgFSQLpoNa0RWQqWTF1V7DC5SEd36I4HxmHFWLY=;
	h=To:Subject:From:Message-Id:Date; b=crcvDny8ZVj5t38VfsLPkyCvmbCiyvijtbE2M+GHz6wEM1R4NlVEV31XIiOXtZNKXOGF8bBI4aZgu0Z3V/QFf5fzGgTJn3w0TgS+7GHyP/AbYbJOlSsYaFhn+No0arg4BiqcpStZo9NOWDYdZ0RgIuk8/oaQFGTlhoqsLPVWNjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o4uymntD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o4uymntD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC12C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785162633;
	bh=97aNIgFSQLpoNa0RWQqWTF1V7DC5SEd36I4HxmHFWLY=;
	h=To:Subject:From:Date:From;
	b=o4uymntDNdbh9k4ZGt0ATX2jy2YHbfY/XQJa/u4PaR1Lt8i27ijvjDJ9SEI+u1CTR
	 BarfHWuBBj67y0qEsyjnhR3t3I/NIDGYKNpU2grdabQtFz6w9Y8dyvxBLYzwurvB2K
	 yBpx+o6npdGNYiUVcsNyOZ8qqopMW+jR+BNOmyXIcH6snXDbmqRFuCtPF7TVQ3ms66
	 yhd6Xea9kR016sMend5GE01tFU53XEy+djNeqIU6N5HKNjkJLQdlZHG6Vpehnp2A63
	 jdmfjo70UP3+XQk5/JK718iHmYt8m9V/IGEGDlazbasOHuerLCQfSBIzW8H8y9L0ee
	 ugZIxWFcdfbSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8099C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178516263368.31673.389647010961877225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4abbb7af42923559ca55f04224fdf16999e8bc4adf4e3da50767a084125c4099
Date: Mon, 27 Jul 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785162633
