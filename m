Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57DC878F24
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746941994; cv=none; b=Mzk4vIXoTTzo1xQllBQFfV3hvzwt8LFkaJX18i4ZBjOQ2wCc4iRJ/AH+uFFmpUbBIj+gCwrWi4fQh9a7MCoGG4LozAUGTA6QyJ1LN2EO6SA0M9FKdUznI16Ztg0RQ7NaO0kdBcZefrjyAJBflmWEd44pb4TySqfwzq+XtgI9eqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746941994; c=relaxed/simple;
	bh=y3IO5MBbu/hgRB3/OIZ2RydDvE8PLMJ5bP3VM6GopgY=;
	h=To:Subject:From:Message-Id:Date; b=ErXyjIZq4kN8z8fNwd/WF2P0xKqTRySAxJfEWVRkNZ4QUw4arTmSGtYATRvn+rHCKDFld2hdH/ZuF64dyadM4lber+8hoAFFU+gKOll1qiw4Lx2mh8XX6dyYA9/PFUBJkE7tkIg1Da720hDerzGx5KdOc6gt0BhYvdiAFVVBuic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pulACyNE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pulACyNE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1D9C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746941993;
	bh=y3IO5MBbu/hgRB3/OIZ2RydDvE8PLMJ5bP3VM6GopgY=;
	h=To:Subject:From:Date:From;
	b=pulACyNEgWPTnvWhY7llMt6zKDK9nIwG09ZopzsK6mpmPagWXw/UU8GdVdH7eMLy4
	 2cauAru4ZW+Fk5FtmW7loq2YQs4xRyCYSkYdnDkFomApQB63eQAOKs0QJ7HKbJaN1b
	 Y9NGGHbxp6cvwytLEGpYImzlVvpwQR/KPlFzsLVGJS071PLB2CAKVrfaVyHNCtOkjH
	 YJivjUF12V5impilMYJP4dZUk22F8m9enfx7anhUdJWPxRxd1p397sDaG0JzhJLL8S
	 D6UdTzQjM406XSAkSpwre/sV8Th85b36PXHOI5baXq4l0BvgaCvPu0NMnKmsMJE4PZ
	 WkwdzC8KT7GeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976C7C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174694199358.13442.6673372046587305710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41920a8a44adfc37c9a30823439c7db6de6d40e3ad69d85783e963e4ec0c39b2
Date: Sun, 11 May 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746941993
