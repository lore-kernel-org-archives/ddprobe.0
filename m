Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509E328DC3
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722766554; cv=none; b=NBHsGk9adW+9y3B7GH2XQ/lQ1f4pv6uwNWelEfjJQtFqiddcgeeHts9A+V8D2UjENN49/oTwDlBEpOpqIBXVgY1+8zG4CLi5WWNbV6Bni0BC3jZiXSMbRnjH2Yww2d/qIQqFeG4K18oUnymZMkkujv8bh357EF9PksZlY6eys/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722766554; c=relaxed/simple;
	bh=/zbWYn5dXTT2SxRrkkatXCWd3w95XHQjebMjF+thJXQ=;
	h=To:Subject:From:Message-Id:Date; b=rfMfg4DwNMAXyOuBp/O3u/6WZWdMLgNIrJZlpDT4JEUeDjxkf36rO4c8pDN6lJH4oHr51DiXYYR2o95JmMq3+5NolnZCZpJ2kNTQvRjq0CTQwhPf1/jsSSZDS3ws4VAiRXTI9+XdBhoVQFCyBldsy95kHt9BbfhJwxRQfygtPuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MRBF3acp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MRBF3acp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B72E0C32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722766553;
	bh=/zbWYn5dXTT2SxRrkkatXCWd3w95XHQjebMjF+thJXQ=;
	h=To:Subject:From:Date:From;
	b=MRBF3acpyxus8cSWYqNA4vnGkrZKdy+RieUxB24pmPGViDG+UDuheKgjuM+V/yIs8
	 Q6GjZ4bXdb57VDwG0BzHhjNQw+EGDdKzJqhPShrthAOZFgRnQGuLDdCMV1hk9AqWqL
	 RnxD0DhOnvaXIJwzEBKqxVQhRJcZMAlAUYf6d9cOV98p4vygxLzamxE8u3+13pOQrL
	 dKO4Xuh9LSVQFSs7Mo91Pcir8QSHNWDjQa04uAhfoVRgttBuM2tVFdjOBveBDdT667
	 gFGRf/d0B4rX0B0RVqPb7ZefNP9fvkm9fBN4JE1RW9//gaqb+DPR5oykvYg/kt62+O
	 x7CD0v1FvpszQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E55BC3DA7F
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172276655361.6888.6688427897394995495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bb9b12a0196d04e5231bf6f90c44ca5945badc11e81242d613babdfe7392f63
Date: Sun, 04 Aug 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722766553
