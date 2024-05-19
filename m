Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89DEC15E86
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 07:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716103943; cv=none; b=SvOwr9yM6NJuLrN0KQpy98C26GuSeShB30StjYyXExjtyfTxRzycH3o+KdVFI8MnW+BA1yZ623FBGaqgGVOqtmSQrmU4o1cddSTJy0i8iDdwXV6r45mLr7wN8oPQxkYHzPjgUgmZdMn4TmDEXDkzfy5ROnUB6QdfdvIvtq41szE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716103943; c=relaxed/simple;
	bh=WSkDZCNOBecwnmlxsVk5r4lwBgamT3KvxpEUizhj+ek=;
	h=To:Subject:From:Message-Id:Date; b=bwl5ksWVrtouzFTcR4fWyRq+VsYMlu2kxqT9WqMgz4cIpJ6zHydj2iSZy5i4iOnNlxrzEVWSOYt5vSgDVbv55DqM89of3UdOS6SxKNf/kW96w3iP4d6XGJkOgSPZrwo+SLJMX26R4PEQoxmrsCYBUftgu1oQiVxXopMN9SCc5ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=srqfldd6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="srqfldd6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2674C32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 07:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716103943;
	bh=WSkDZCNOBecwnmlxsVk5r4lwBgamT3KvxpEUizhj+ek=;
	h=To:Subject:From:Date:From;
	b=srqfldd6szoFns5WUtgPyjz8r9YZGeRkMf0J7fBLR2CQDAr19gl5eTAkBuxj++ihz
	 QsHtJ9tVNSz+qC3+jnR26zi+1jFj+YFtqtySy530GE7sGKw/X4dmdGzTynLVVRj2JF
	 R2UAb38cw+STJ7kvPCIplRHqITW/GizQ9pM+Y7NDWyczbKI4PqokJ2zWdHpod2z8i0
	 0ACXxMTkwJ+DAmvCZOnbJvlOREtEsuEHEZQuETfsCcybN8LNqB6mOfIT+hvpH/GzXi
	 mkxD04XDqfmt96HTqKkjzgNNsIENz5m9KlBJUrZlhaPMMQtPjSMauXE6eVk9RnCDqM
	 OkVDBp7yIbJrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D45EAC25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 07:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171610394282.17371.8288687114312588438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 872ea50bcb1b5877ca75e77769fdbd04af007a16a2a93cc0cf266e6a3dd286d4
Date: Sun, 19 May 2024 07:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716103942
