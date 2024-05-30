Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE2933FD
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 01:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717032863; cv=none; b=mlKNjaCt5GbA9bUMzuKuzXXq7YfxhlJWsMt8xTw+XAUS52HRHGzIu1QGEYaA0kt5xpiEpeYDoWWSU3gFzUCLTUlBDSjw81sDfPbBEd7O1F5uVqatONhWWupq47fNX2hH+nndRzKabEk4JtMGUwvNB0JTtkL7DmYAkbH82ZJA0ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717032863; c=relaxed/simple;
	bh=vrLJQr8EisHGScLu2spXFCLk6bekmTU0jNhRdRlNKTc=;
	h=To:Subject:From:Message-Id:Date; b=f8veIaZ9K8oXDT2pLfcJ95ReOKMpAzliEiuGGCLtXjWA85MrW8ahfVHApJzGPC907OfERVS5sTWGMJ514DHGfv7jHvFlKedshWKiTPs8UW+C6l6vA5IcPVxuC9JbvhGnKEY3+SFW9+SH7JY8akRP4xMM0iZHj+fg3o5yioSF/Jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HOGAGYxM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HOGAGYxM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0AD0C113CC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 01:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717032862;
	bh=vrLJQr8EisHGScLu2spXFCLk6bekmTU0jNhRdRlNKTc=;
	h=To:Subject:From:Date:From;
	b=HOGAGYxMOhV67q6/Si2DjZ2X8uqmkV7iYXtA82vqOD37pLowcyfOnmz7ay4Cww37B
	 kPO04ptirkocJTJmXn0RVWFyy+Y13Ntqzh93Mh1z62y2+kssfusTfc8JWl+oKX2whg
	 N9M7uq/Oa6h5y1rW5Yd/uxWz0WJRcz7NJwMzj+mFAjfxewKSYyYSMjZn9oB9mlR8wF
	 8X8sBy/uwQEzEIMXRXspFbOTJdar87eum/0kKLFcF8RxhHjQN3fvbDjk6QKb7ALN0I
	 fRMtIrS5UJudMcCf9ukiqOgLGlL4mAStDkl92OiwfMIibQqP+Xi4qEDSfToUPEx9b/
	 nENVjGciTDmqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB7F0C25B75
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 01:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171703286275.17656.15516310415291222101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ca1c49b25b66192cce50e47a5885e2caab8a1d17f0ebcf997515e20f39053c3
Date: Thu, 30 May 2024 01:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717032862
