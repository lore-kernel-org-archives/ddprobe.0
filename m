Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4221EEA55
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755215994; cv=none; b=htmbvNQmbLlORJX5W3e2PYHe7KZkFKmZibgjAH8aA4xNmKMa7e1yOaR8FDQ94oR7Q5xdT9GEt4ebsDzY/gsSoSkxfnpBTSKZJDTzSC1tm2VWXwzyPC1ORsS9tiaZC8YuDsm6nLs5GIl9Z94JkzjZIITIyfltTLZC7l0A867Bxn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755215994; c=relaxed/simple;
	bh=Na/3zJKFREbh3006c7USB55U47JLTAFvuTMUTQjoo50=;
	h=To:Subject:From:Message-Id:Date; b=Bu934bSL5xzEH+tXVkFeMumOaiVVIWi3O1HrIolAS/zWOLCLD5F//DUuQpsvU1sztCNT6cjAUBUP2E4Q0Jp16OaTMUurRJ8mxyKJqGxacuCG/9HAzW6mW8MkiJILRmgA/BJAZaLDpkpwR1u2hkdTJDDbmkgsDtmgIXZr60OAoXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dqRQGxGL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dqRQGxGL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5819C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755215993;
	bh=Na/3zJKFREbh3006c7USB55U47JLTAFvuTMUTQjoo50=;
	h=To:Subject:From:Date:From;
	b=dqRQGxGLDOJhh5qgB7G9J00zhwCV3crNnuPq3OykP1kyDDl7wbmJgVtxPqNzmKBOy
	 1pJRUe9v4nqeSw4XOSy9rc7nUEgmG0jEpIL5nFyJpZEZVNmDsXRs+OVQTIWrEHNjDy
	 GLSBhwtmUwdx5xVGtdYx+zRkcaNe5Vi/+nb4GIrJ4npGnQEQZj9kj/qF/lrThIObF1
	 PmLk18CggmnuwycxlMkL8E+WtkJXwuYIt2e+5s3GaQhNd8SlDR19aOHfIBVsIUmsL2
	 HV9uquKNOfOe8u9Kk7pOu0OGndfhyFpggGTcdtzyZ9gkA/dCU/YfqUWiSJfCKVyXK6
	 GQkcCBY9QRppQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94345CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175521599357.18059.8122413042369153140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d66bbe264b34af228e37aec91f01bbc9d908c64deb7636e1e2dfc7f3ae5d0757
Date: Thu, 14 Aug 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755215993
