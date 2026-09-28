Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A39A348C76
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790580634; cv=none; b=H9Pii/VTdYMIkDOXbSFH+LT69kkwFffuNL1KZec7vtoafZNFr51Dc/Ue6VHKlvzz66Z0hOetVgUTxM80hWnBgLCYtyClXHD1mYHaA2zCLmlslLsmlfV3huLsHSY9iqiHeMMpBuWW6GUaq4k79plXntg9bot1Rmr7rGuTzPWaw7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790580634; c=relaxed/simple;
	bh=6RHCDFV3uxGV3kVV0OZc3e6ERmVji+y2Z7K7pqD14cg=;
	h=To:Subject:From:Message-Id:Date; b=CCt4Tbi4PyfyqeB5n0R0VK2qQgDcaxspku1j/2JjyNneRcNtULiygZvtkB6W6uDrAK/oZDGMdkK9jlMB/ouuo9xcsYjgDQ7SDXehfRFW1PGmDAjgKqbC5OspSWFkoy9jNp0wKPMR7T6aZV4DhPBjQ2D4x6pGP0FSUOqIC/3Qxro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z+NyZlxC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z+NyZlxC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D74C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790580633;
	bh=6RHCDFV3uxGV3kVV0OZc3e6ERmVji+y2Z7K7pqD14cg=;
	h=To:Subject:From:Date:From;
	b=Z+NyZlxCKDkzx2pElQUwd4ZfpgN98J5wRLEpeSGVEUOoeQaR/ntlAFsaWndPi12D9
	 pBma2S1y54+QPpChc5TfnoZMGcLvKLAb+QDChcI6IJ0vAHomc6M6zldr1c5eg3ur2/
	 EElM8rFOXmKFwi+MMERb1MygjMSIUpLGiax6Ed4/I1W4DsbVmBlDGtzBbbK7ObyZ2Q
	 BqE1UYBS8m+06nI8AcgXRgAoG9JrJa2FMfhO7nNZZLLRhOdkTPgiO4YSHGeS/DsorT
	 E217w8Tio5PFlsJi/ifIi6wXMbp1MyN7tOlxvkUpVu0B2PowtQnxhf+0RrJqZhJ3lO
	 DmLi2jgFrMR4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD912C9833E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179058063370.11382.7925041442785912823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 320cd5428149d40de0eb8cfa43cd70e87e4f0a9484bbd2d8a4a57866cbea4476
Date: Mon, 28 Sep 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790580633
