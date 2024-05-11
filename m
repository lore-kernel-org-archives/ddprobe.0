Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E95F79EF
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 07:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715412743; cv=none; b=nYE05ulSdvXKJsVv2J6wUStY4vG0BTcfhIN6paicxL4jgcUKsDsRmB57ftFatmD40Rfbu58R9Ty44IRUbQL7CChn25cOt5xHaDbWDA9TzDbfI0tGyCWsfK0a86YX0zUGvEssn1i0m+Fz32e6NqBQKYDTn+vinl/Yq1lCKmYtxCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715412743; c=relaxed/simple;
	bh=PHXc6xBpTZNvM881d6LvJCbEIbx1GIwStHAzcipSWgs=;
	h=To:Subject:From:Message-Id:Date; b=rqC82JkZfuuO/qj46N0GdFrnnYY7RChq0JGeVrZP81eg3Or5tlAChgVZ9te71C6Wp9W25otmEBJIfaAuWS++PWO75PXW4PGdPZWkNrlY8tOwi76K1jFpebXfgyq5D49guUMT9fOILR18QjrfBcJa/Do5Ik6f8uI2eB8wFzOLPyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B64bengb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B64bengb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8389C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 07:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715412742;
	bh=PHXc6xBpTZNvM881d6LvJCbEIbx1GIwStHAzcipSWgs=;
	h=To:Subject:From:Date:From;
	b=B64bengb2Jm/wl0KRd/G+q9c3rx8Ovr466XakbPopUemcwNHEanCx2CPjaKA9xro9
	 Ay0YudS06yajimUnLDxMf2DzXIfkDVjctJNS3zkw21kyImEW9/LeuNYSIbeAvA+cKd
	 9FjHBcwHimhi+MVPjcnAsdVI4sE4o4IncjqW2CoMxjfYSEXzjyg/ab7abNp6OGmjom
	 MjyfLTQFCJo5inClmie9t276C6BJekPHsm8NGpow7mooLvG3z+3OrHo1BpClfJhUwh
	 6NMXKDZNBdw9OGrNCG1nyl6qGAh2ltALXzZJuNZ8jmV7mgLZLgHp9020WemgUvpT+C
	 x6qJkNmuNBRmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2EFCC04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 07:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171541274276.27608.16121254819640647520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a799e1b80027a2fa1104dedf751ba259db0df04576a6d9233d94a9a92c295ae
Date: Sat, 11 May 2024 07:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715412742
