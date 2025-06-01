Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6D126AE4
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748750394; cv=none; b=gHeM49UHOK8NcgXRw8hPC97pqE88qW2gsWYFBMtXqEeMbL+vW6dJBadmcfK92jZAl9eCDgD/C6ptm40fmZE4VV2esmSrfrxwfVhkoUiWJOcu2//+pic8pZUEwBAy8Pl4qg4qewUBteJssU2SPXns7fagQz+VfdLmKE340lzq0rA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748750394; c=relaxed/simple;
	bh=BzN9hS+aePt4D//CQuZExHk5EJ4dUWhDkKz9KYJ9v7g=;
	h=To:Subject:From:Message-Id:Date; b=XNjTJxi8epuaVKbqch+Vlx+kGRJb45C4X7iLyhDu/HHtOIf4o2IJxLjOe+EYLmsWOq9BqsnKkhYJkD2PvW5128Vi1qeBOAjvCB6hJ0+Eoo6Pr2FwlFAEYz2YRbl6OCLViV2BfseFnz84Rqxd4eeeW3FChAxzzvdmAKpdqSAmDCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sa5qQdsy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sa5qQdsy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E84C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748750393;
	bh=BzN9hS+aePt4D//CQuZExHk5EJ4dUWhDkKz9KYJ9v7g=;
	h=To:Subject:From:Date:From;
	b=Sa5qQdsy19hAtpED96ZRox7tIIE/bHQA1tBPxt8+V9MJx8wGMB5nGOuajQwp84owi
	 fqDoNMfX7rRuNLB0puJylZ2/+PATCoRS7a5DHaJYJkH0tPK5ugxbIWWTy8Q/gkIpNg
	 eV9Eq8QCo1JJDUzcQLMvP876iLqdfDxpTj7UhUW2Otbw0yd9MLi4hwqz1TYee8gvXB
	 Xj0AmjZIVdiGo7L+ZMbuQ3xuaB6Qv2rPlwybZzjQ40qPCmoSkMWyo6a4WhtLsUSn9N
	 iebeDN3ojshSUNYRbuGApg0gSnyM3MCxkHdULdlXuYwSNaK16UKrdheK3oEmjBL4/8
	 RlZBkIWZqd2pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946AFC54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174875039357.7823.766147658652462979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2eaa9e3246bf1750505f41f2b337514a35045c51944881582cb08e3b3d33999
Date: Sun, 01 Jun 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748750393
