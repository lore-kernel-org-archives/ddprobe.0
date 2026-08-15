Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423D417AE11
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786827034; cv=none; b=kUI/Z3WQYO/GPdq/mVeyjkDG5beqYPEdSqCA4Kmj8bs78vkkvD/XUAJJwStieHXto8bQUAxobZlXsq1MIDn7ACWi2KLnAlm2fPmXKCa+6MW5BRXnY3vWlu+0Et9fZO1gA6zsiAN7A9lHWxteKgGvsvwHq7DUyVE8V4ty3MtH2x0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786827034; c=relaxed/simple;
	bh=vS6JPzqL4V4mUEG/I5c08AzorfVIuYg9t4mnCtXiPcM=;
	h=To:Subject:From:Message-Id:Date; b=rI2Oh+pJMsfFCi3CEYiqSWJJb+W9S7S06+NJh6R1YRQpGn/geEtXpWpcSc54pBJUEIfPNYHNVimQwGMhwBr5k99k1LGyH7LzU3chtbB4ZgThCYxfqKWs2H+4rB3sElYdTFOiczMvqkgR08558ghpUfRh59ee+HjtU7v2oObvUlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VwsjNPtp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VwsjNPtp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4518C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786827033;
	bh=vS6JPzqL4V4mUEG/I5c08AzorfVIuYg9t4mnCtXiPcM=;
	h=To:Subject:From:Date:From;
	b=VwsjNPtpk7RkiJn+tvjfSLzD9h3anZmVpN0SbgFSSZGthRMD2690MmEYxmQMdDaPA
	 P0hbSCXgkGOMiUhpmBgbbIoJum22AJVL/lxilf7dsExvZiq0qdEDKYJQ94Aw2YfLJq
	 sEUcnkFVDxSicKeYJjY222CYhhWDYjYX9N/htkmzRPZpyc4J+11k12VKhjpOltho1l
	 h3V1GsDtAGs65vS/ZRaWnJOBkOU6EYgQ0b0HV/M/EWNuArtS7+jYXyaiQnOjSkhw+t
	 rBtewxo0GcDhNZVGeaQPdS5ED9HhXyjsxkyyM0DmkxBNcpHr6xrn6e42aqH+31pWiE
	 4zLj2nVkkW9ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B127BC5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178682703369.20855.12595904572379144366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1fd234ab25e02e1c31adac1e1e635cffd16921fa196a895a43086f0f649a999
Date: Sat, 15 Aug 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786827033
