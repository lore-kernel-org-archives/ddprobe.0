Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED03324B30
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 21:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765833774; cv=none; b=t9gCKjdRRSRFYK/rdVgNSN6Skw3gEfiPc0oLuTCgzAQXuKxIqp7oFmcK2l8NQkUlNJr1k1eKkRcAWpxxkbkaCwCXxmvwjSUgvV7nWkYgXFBiZHl/kyMwscsXg5cisXK5WGqagjp/XINSp4odtqrN4sHqQ33aMYlkQx2XebeXc0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765833774; c=relaxed/simple;
	bh=hhRNk1K3P72KbyQ0uVyNs2VIr7dkRvH16lt8sRQLugI=;
	h=To:Subject:From:Message-Id:Date; b=YIdYHGqywEN8GAhUOuEDDTUGd0fEfuD3EHJM9219C7Q6t6razIYiII3ibaMOs18qZbxStHy9b5lw5BW7leS4WhBor4cN5tfAOwn0VcCsxwCpV8SHBd3JiCLacX0+Pwnldvzq9VCV7XerDWitxAoU3yDI5VJOlcR6ViYJdD1KRM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DYpBO8sr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DYpBO8sr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE83C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 21:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765833773;
	bh=hhRNk1K3P72KbyQ0uVyNs2VIr7dkRvH16lt8sRQLugI=;
	h=To:Subject:From:Date:From;
	b=DYpBO8srmiODEsrEzaDhQuj8BH+GGydG2Ha0waqBG2JCxJDDWdjrGo77wb3huCpmH
	 Sy+F3blVTZYEBwxl+NqLDazwPI9ZyGm4Y2Yk+ydbNEdc6CR2S3kelVEh2610Q7VVVY
	 atVyN1X+hFVsFK33uJ/TPiEKMK0bIEhN4PBtEUs8bBqA44Lyjoz32VCUA0Ja6KOf3r
	 qbmGN1zT+knXN/QvuGL1A9gScYpIC97Tce2D0xHV4XHXKqOqdy/HScL0ZE4Vo2kfbx
	 i992KHY/R039Uv8AOB9fR5TSpdOnVHR3Z5CcOgGKWj5+YSgnm/YnvUPXe9EVITHU8D
	 xJT50psWY1iQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903F1D5B86F
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 21:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176583377358.23646.16098759464408535842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1b6b048558996d0853b772a44c6f6c216f990ce75a1792d3bcbe97a9f75c60f
Date: Mon, 15 Dec 2025 21:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765833773
