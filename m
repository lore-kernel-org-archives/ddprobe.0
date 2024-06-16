Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65BC142AB6
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 05:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718516303; cv=none; b=DG+tz5fSxDDwQqQyTHD0zLyex/ILgIDPbIBP2x571nlAfPxZQhMPe/acBHvvfUwYAzVLilfbGn83JqdA78DwXO0n+m3On6lLHaLf4g1dTWShSnu+yZf/5mcomqzS+vwkZLCARN5Prtx961X84OcgdLGP/80w2oKiPJtN/EPYHqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718516303; c=relaxed/simple;
	bh=iC9HHqkcv+X2qT/y5tjrHGw/kbsCut5ds1+ncSWRBak=;
	h=To:Subject:From:Message-Id:Date; b=uaVgPk06lI9NWNZCKwsZshdN9KQC3h3mm35bvUddd0JYupybwth/g+/lWTmvJ+PliwnBM8R8BnvXzbn6uZ6WItHK0GB25O/EdQAN27MCQa4ATg8tRKwLKRJztcHR9mcjx6AJfCPdyjubuUcMT8En+RsUOrRpkRzjSaGiGpnQWLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CQh9qqk6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CQh9qqk6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7004C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 05:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718516302;
	bh=iC9HHqkcv+X2qT/y5tjrHGw/kbsCut5ds1+ncSWRBak=;
	h=To:Subject:From:Date:From;
	b=CQh9qqk68keuCUtkFvHXoyw/CkwECTAfcR+mWcqvaGj1yFp6H0FN2eL4ztqRcGtwC
	 6GWZT0gMAkEw/5i4p2IJCv+4xblqP8fjqcAid6lVnyHwi7e4MBcQg3r9eF230a1p6l
	 sHy+VSKGH9HL7QKa8u1+Jv4Vfl/Ft1R2+5DzXx7E870KAlTMT5MNtjd5TYfQRWd+yI
	 2lz9rPECVtsnnNLFtseogxuFsYWTNH7CfoJNt07agEx7kPTTOU5h7/78I2WBcLF6Z6
	 vwivR+N8X0ZrQqL2qSrLSDDaZMZlheJ04R7jd8BSobnxXjgMaEd6aJBrf8L5aGA9lD
	 35yhdwSyYlGlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF794C27C6E
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 05:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171851630280.31598.1552851128776357308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1ac4810153514bb3bb99076339c7365e335deeba13d991144e4fb362de5fb9f
Date: Sun, 16 Jun 2024 05:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718516302
