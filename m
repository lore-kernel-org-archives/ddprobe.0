Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70256FC0C
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 20:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718828363; cv=none; b=NnMAYAnZY39XZDu/TrjL+/E57MHUVacU/kb58xmfXd/7JyO+9a5BvvYVLBhWJq0Gjf5vuuY/YNAIs0eoms4S00Fh7dJNqrmF9+FdVFaxW8uWI/POtzMNspIg8iabHVFg18zCpOP8Smvar0SbF+xjFSv2jsiZj/Bh7/cchzZOFtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718828363; c=relaxed/simple;
	bh=an5rRrLEtNMT/Uoh7Z5G92ic34wZPZeHRWwsQSMVeGM=;
	h=To:Subject:From:Message-Id:Date; b=jl8RClOq9qpOFWe0Gb4EDlXLGLAxJo5atSZ+ugIecFhGRnqTOCDs3hYlP748NR4yS0oaf9qY5oAU457AQBEi3R7cao+f5sm7+vb3k6hiG8IfOd1NMB9Rfk+sNtgWGEBLoMJd8CTbRm1t7xkB2FtexG2kOUoZfQI2bGAGVqlqUPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YuA9MvDM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YuA9MvDM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD925C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 20:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718828362;
	bh=an5rRrLEtNMT/Uoh7Z5G92ic34wZPZeHRWwsQSMVeGM=;
	h=To:Subject:From:Date:From;
	b=YuA9MvDMDI9i1xX3/cITNdr4A496YZHC8BZ2aVgXy0M8CVCnUasw8GF6lkQCnfh6c
	 f8CPYYLsDawe1vAgFok/ZDHkgntQe/J/2FwDIpsljPCzIZMjNQR0tv+7tNtceXnmki
	 n2NEThojThHUmXc29rWXwrKjlKImWPihRm1H6SOPrdM0qCFIJOWkzS6Vc7kqeUlfhU
	 dcW+lcx4bRisl+nm+wUpfiyv1jvtQBn+Ykm3C1Tvsgg5snJPBTOVc+nXugy39SnRy0
	 XexI9eU1z3DUF2ojKeMkL2XI7gJ7J93RcUXpc2Lv03VwZEfwCVvEoI4b+yFNew7093
	 5eWusZorCPuTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C15F0C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 20:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171882836278.28526.7050823155145004581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c4491e596f73144d3a532047a321c1e0f7ce964b7664962841b8b5d10a27e18
Date: Wed, 19 Jun 2024 20:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718828362
