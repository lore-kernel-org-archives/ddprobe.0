Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4069D15B543
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744777194; cv=none; b=gfWaLenzYf6TfdhYP4sqcxLrtlbA5KKF/SFJVGw4UVL/0b5h13wD+FgP3tAUQTNL2obUEBj2OvMwduYf1A1Il6L4RhD2fHChK8MpPeFlkgMffdjrjhs5c5KajEbQ8HaL3RiVsFKKK6hlNivv3shNxvD7mxqJX+u/t4ZE5ecORBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744777194; c=relaxed/simple;
	bh=HVeawzR9Cdyc7j2dPe9x4zN1pOT/+GI69jQxQrczDdU=;
	h=To:Subject:From:Message-Id:Date; b=Tp3W5e2dBy9VRlcYgqWgjCJtzeDsymFZJuPsb3NlBdUPTcqSSo6/qATzL26F9X7s8/2CCSDraV33NgiqdEoFRMUqwEhZ/B4rtSmvkDYjhFHMis934cekzzDnebrd++48dwCBcE67WDYIYmD+qJLCzAhjOECM9cIMxWAf6zgSu1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oAGRAwX9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oAGRAwX9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1776C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744777193;
	bh=HVeawzR9Cdyc7j2dPe9x4zN1pOT/+GI69jQxQrczDdU=;
	h=To:Subject:From:Date:From;
	b=oAGRAwX9QT22z2uAR8qGEmCaqBUrO4R4WeyHTCBNZoS7qVtNMEjIEyWJND3D3iEmc
	 MEny8EDNWt1sYtQorjgutygK7JXOcUK40SykUsdmfYuefB6B65QYdkPqcveqgwhE8O
	 tfxZVf3jGRi01GGdRpUN21lwnyr10ec1Vqb90w92SDaXKEOiJZS/DUsT7jqHqKL9eG
	 wx1Gx3iMTrebhiMDGIN2DNWcsfvPUbILOeAQkhPdHb4UAFzHK/P8GkftgO8C7gu9PY
	 pyOrpNpUubidx6BHjvozUHKQKTmz0ZANTsB4afvaB8X8tSrUTCNBZ2nmrB8a7szsvZ
	 ShJJ8nbnzIuVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993E0C369B1
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174477719360.22487.8168517422689503907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d35e2a8f6c645a108571696e02f24b928e2daea8a25469073a6c11111740fcde
Date: Wed, 16 Apr 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744777193
