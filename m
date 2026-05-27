Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DE137DAD4
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 19:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779910354; cv=none; b=TZVUEsmDAPNnZq7kVX05vVHjwjo1UOnayUiC9Q6qEbEXNSi+HGbnXgHUbCOw5Mlw6M5zPMjpRX2U5Az9xgcMqbor7t6U9QdWvWUUWqYfs2eqK/DxLhe9dRbxEMFRQaUzJk0uLwaTGGf0jqwvYTt3C2VSBFdh2N3PB/ZobjUXQvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779910354; c=relaxed/simple;
	bh=QPNVdgi3oTr4X8i/E62AdSfRxEL5PqDypkPUejFyTPo=;
	h=To:Subject:From:Message-Id:Date; b=WGybPkb580KL6o4DxP5IIIOTVy3hG+OjoQ5ql7XgBuS0YzOkfVtmFBc3wcQvCfpzcCy64YAylY44UjFLk8N1OSb8kh0r10eRp/L6oeoqThF9NLpo6/6qm2Dt5JdGoRzbUft8OO1FfgET+5oicum5n11kRaLs+gEtqds6fjinfjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h38nLy+W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h38nLy+W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8A3FC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 19:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779910353;
	bh=QPNVdgi3oTr4X8i/E62AdSfRxEL5PqDypkPUejFyTPo=;
	h=To:Subject:From:Date:From;
	b=h38nLy+W+mqSijeossfBDJy2Jm14jV+QV3y/29yHoXpZqHqHOcFBv5ZBlElhlURCS
	 FV7T5xXaVxsG2Bs7ZLJ0mHPW4TRfXkAc07CnhHqStVC0juA3+Tq8EfuPP4gwbO5LR2
	 Hr7vzFcP4e7E803DsJS3FDgO/C0IdfeFfG91PHj6oV9o8QC2q+2FJ1H5oWSCwPtCLw
	 fWJfACgluMEfFquoUzy2LzQH72bYtYiwZ3LwYlNVeFZ7w8oOpbZYg5mBkJlV39xxi1
	 qDkxaD+tXYuqM2UXX+6jm/tAb4MHbmscjQt39cvTerc80P0uWXIzq7NaQPoGFKxvZD
	 TetNw+fDkF/2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE33ECD5BD0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 19:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177991035369.26085.4916198900720591782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ad5902b7468ef7b20233557ba72c0e1f61daf8f5ac6f06d5dd93014c00948fb
Date: Wed, 27 May 2026 19:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779910353
