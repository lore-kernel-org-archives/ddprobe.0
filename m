Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C16317555
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769396034; cv=none; b=u0x+afKdnmIaghYSdVTsNmIC25R+WaUd+54dtAr/EFgdQy0IXZgZPkk0gRG1GLOvWg1QPChJvcfiyJoD2N+tzktZDv2iL5AoVUEnU1UWfaF6sM2Pupgw+huvvUrP+fKfeD75elHv58OpaLSa6sgJLZrrANR7JDtaSX3MRYLSeT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769396034; c=relaxed/simple;
	bh=emtGDLmh+NUneMVgiyITWgfYSIu28zQw6VdfsiuXO+c=;
	h=To:Subject:From:Message-Id:Date; b=OsWEtRB/+VTfO5WBXHr3iLBu+oIDixsaPBKxBJ+zs941YHW9XukZ6LVgU1SqYFnckSOGBeelo0ZWUhxrQAQWhKg7cVNujyLuWyj4X2hq8YQdl9AxJTWkQtiQFOEKQhW/JRkuseo2R2OGvARxnveASm4C2ja4AVRyOKyc5XWphCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UctgzTUd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UctgzTUd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20CAC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769396033;
	bh=emtGDLmh+NUneMVgiyITWgfYSIu28zQw6VdfsiuXO+c=;
	h=To:Subject:From:Date:From;
	b=UctgzTUdRNdCyv3vzMCEBER2okY9xNEMPIBrzruTGbx5Ma3oRQDaV2MaWenZ1TVOE
	 18xsljHTk2gssVyD97E80Qf8oa4IlkACjpvOZOXu3+vhlrzsJKAEXdhUm61JPz7WaR
	 5PBffujcTerUS5eXt3luIxNetCfY2EGPemOZqi8EULcXIxxdtEg2hE4O0lAcacGSga
	 RugIK0XvBFKz66D1BFGE6D4A1+yjTnDPZIq1H7ifOrR2xpItSrZhBAWCAJniaCnkfb
	 T82xAOAmrTHvqxx6W5mRkavxlTwUVD75mgDDpeaMhLQAy7HbQkgA9kTezaiUZZIHVw
	 fPUetzHAExyEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4F9C88E40
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176939603357.3146.14722914867881217282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8de5d8b91bd44b28e07657b2cba63b447d3727ccc68e0b3af156f21a7524975
Date: Mon, 26 Jan 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769396033
