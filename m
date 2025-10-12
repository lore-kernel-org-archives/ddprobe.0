Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D561DF75C
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760260194; cv=none; b=BxzsToIK+pEecjngI+YWB//TCjvHfHewJLtoyY4tj4akQwujpG5VUL2LK/PQyK9SI4U7S8llvPg6MO5nUfQDaHds1UPWv9Yny8VUBj9PBRp0GD3XUDKGrbYKEFVPD9yucuBndz4LjU5cRacMYrAwLpw9cV+qCJdoVXKGVBBItdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760260194; c=relaxed/simple;
	bh=g6x+NC4u0fU4k1E1StZEtHY9OERWrzjvhwtT2F3NWU8=;
	h=To:Subject:From:Message-Id:Date; b=oL3Qo3XcmfOROBLpZupp4yYLGFGgC5ADaslnaIHflD6i5IiQlvAZNfdvSVMEuZWekW5KZPYcozllP0ubXOiC2yGNY8/0CoFEIny8aeUPZmBRbPKDMua6B+cU5UXcxKOYNjDz33H6pfdr0ZwfIvG6UsnHDoQc9exTM6hMj6ijgP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujEalLOT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujEalLOT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6081C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760260193;
	bh=g6x+NC4u0fU4k1E1StZEtHY9OERWrzjvhwtT2F3NWU8=;
	h=To:Subject:From:Date:From;
	b=ujEalLOTI94U8Ig4fFD6clAl8eRGAs/S7yslTPYdmA6w9H5yuLh/M2SWHkIEddahK
	 3f4JLi4xbDrrRX5xG7KpifAeSNU+IYTJNRV3e4qBL7hnRECXrzHzdKvzS9wV2iwu/m
	 X/Hzh5XxyAEibhZQsNXDeUyi7s4RmXxB1/iWWM7374Lqt3jOxuVLGFmMw3SiQRe6up
	 wB4VWWvTjzG/MmovciK+bYHMs3tSnkDyHJQ9kOna/rMalYbwqSmRdzUTi+Zz6Sair2
	 FVhXNNzAjGX+TciuwSENGvUpIc+5oS4VG1aYTzb2k49OdDTKnwwEVP8T7I3RMBgNmq
	 r33LatMkPufPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CC4CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176026019357.23235.14833852233083717936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 934e60240733f8c09202725b7f0c59d082c406cb8e50784cb9009e6607b3bbf9
Date: Sun, 12 Oct 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760260193
