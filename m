Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402A315A5
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 00:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718066903; cv=none; b=mpvxjxztPTjqSJOAJC1MfkdfWCQVgVjoF2HwCRvBC/nDnVP5R8JhsWkWZ/Rpxf3yvxSG6t+7jsRzDw/VgzmUHn7U7O+JS0qv1soIc+oQeMLlq5irx9mUwFQEEhYw73ki/dTNlwyyEWXdVL2iI69nx6mEkPoBSuvdpIuPIYIsng8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718066903; c=relaxed/simple;
	bh=1O+grvBDhgVW7SVlHtVv1+LFiCT9J9BBsDnDdJQcgVg=;
	h=To:Subject:From:Message-Id:Date; b=hMoCYkdzuJz6U30iwA/z51+G+LRZy1PxmGC8q19cbCBp2yjh6PaanpSEzj+n0DScCAg6bcEqHK4B9/as234DpkSVLG6ma6uNXfNkaf7SEuvvikDh+gF2L2gxuAZkCo4Kuasp9CnandDIjK5920IdseuHw0zCcngCp00s6MqoE2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bGur7ZQj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bGur7ZQj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3702C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 00:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718066902;
	bh=1O+grvBDhgVW7SVlHtVv1+LFiCT9J9BBsDnDdJQcgVg=;
	h=To:Subject:From:Date:From;
	b=bGur7ZQjrO31fljF7xde4+I/tjXRYDFsvwIDNoygl2nJlxV5fmzNlAPCsNXe1TcQT
	 u4rPiLsaNB/bCpZdHMdblJzeJ5qo2+PChl8sngo4mUU/LzKMPLr/GMD4WY1qsvOB1u
	 k+mBhnEGH5Q4246ScG4BYrw9ztRoT6WVp6pRQAs0CijMGqfP53mVWkU6FCV62ghGJy
	 QjBDzrgY7fq4/AULAm+PxJgD0OalgEZlT7drJ6QgG41wVUACwznikD8O/DDZNwQ4Ml
	 FclVRw7RkQ6ACUO37gZiph25ClAoK8naKRtLgnkP7e4K4Gha+8RQaJAGNPxMOw2s+f
	 pxEAD+DXUJDkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C0BC27C4F
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 00:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171806690279.19945.16622345298656727466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4069f7b090d80ca0d24b0fe16edb156a30330427bcc27cd922533ea3ab24c9ca
Date: Tue, 11 Jun 2024 00:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718066902
