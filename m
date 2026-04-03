Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5D23C3456
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 18:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775242534; cv=none; b=O1v/nHd2kUaTFTBPecPAUfbbdhvVfAppqH7AjSZznMgdbs/v2JyD4bUpDjoz0+hno0jl0+WYAkLSqVVrJzQprhZmap1KbbCzqXJJD3EF6p8ypzwL+REy5YMaHps2g8bU/HNAEUKiFi+WsjQBecWd8YYudJ4Z3xpM8xqg7STCAvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775242534; c=relaxed/simple;
	bh=dkWrfESTtCSjlaENvphidjt9UFqLgCjYUZUfEvTKJdM=;
	h=To:Subject:From:Message-Id:Date; b=VxTxfetgjDPnOFELzrOzi6vMwzlyB0KdW6g18jezPXm3fK8DstGPXi1SAmomkgy/oOxo5GXaoGOjTA4WHhkHh2m5Xv8TbFWmvUHA9/W43zRupPlfyIr3ADWZ7iYc+l2LJwwi4/NrT0+oaB5kPrJakcRLSEzBtx0ExfbMRtzjk/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pwOtuiFm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pwOtuiFm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C732AC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 18:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775242533;
	bh=dkWrfESTtCSjlaENvphidjt9UFqLgCjYUZUfEvTKJdM=;
	h=To:Subject:From:Date:From;
	b=pwOtuiFmvZ4l6NQyyhOkBLofknxLTfEWOPmb8Uqy0AFDRlprNinQUXz0N+1h52KY3
	 yJO48Uv9FFrqU160udoUjT8f5R0pC7bPidA/fhQdvRs2T4exCTfsYNIIIk0NdvdVtg
	 Jo08uBM4j0lh5FwuLiGMmsIS/7kuUQrDOpytWA+6DwT93+3rGvmU0d61BLlzoYHnjK
	 P3KYbtZP5twAT/2v45Gl5STDHYxPiaSCgbQIPyvnImuUOrpqDlfFAjScGcJTUDejaq
	 QiSjq6htQyQUCGETJnc862oCkoUVpPQ3j02qd9RKQWNHHzmi9ac5zHWiMsYw/nioNu
	 DB5tVSy5bznVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6B54E8538E
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 18:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177524253374.15701.1053037915572045312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5352b35ca80200729722d19cae9abe922107d081956de48cdb9557e4218a84ad
Date: Fri, 03 Apr 2026 18:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775242533
