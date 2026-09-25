Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6697338D6B5
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790373634; cv=none; b=nAe4Qv7gim2RHUhClupOW9IaoTO4X10f0YpAqUcZy6FZ+QwhgFfFYvxvy6HRmGt1BLs/EtFY5F9/+NeQEfWEncaSD6k8ANjFU0kVMQDYtthPblLZMGq8QUlBL/CfG+H75gb5+AfXtFb5XvS/s3UAZ4dCx49M3juDaToIjVjUJbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790373634; c=relaxed/simple;
	bh=gz+ABt9+uOkC5ESLuQqu7pVpAPfH3MFt06yBDqFTh0E=;
	h=To:Subject:From:Message-Id:Date; b=VaWfh+c8pzb9BO/Cz34+uEACfPEt0QK8aQ6/imeqDQN9SGvNOL29QBPerBWeutjAmpRVXQyVpJAZWVTIt+g91THKjCRPEpwvXKsfWOVTMnw6T54lEJy17wgXk+DZIaCmkUOsdMqFytWjppYj5StQT3G5shkDahrfyvgVN0FfzZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VvNB8mb3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VvNB8mb3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D26C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790373633;
	bh=gz+ABt9+uOkC5ESLuQqu7pVpAPfH3MFt06yBDqFTh0E=;
	h=To:Subject:From:Date:From;
	b=VvNB8mb3GUwh409X2kJWcpYM//yayNgekBNdnGqV65tk2A273eS+cyyReqGlvobEX
	 DhkBQqf634XtxMLBx0LkvEyhjXIB++DRqhLoncYXK0rd/mNyz4Aftc5rIWRF8kJ7Gy
	 7U2d7zvzKammes2OrCmB/fFIWp0ssSuY8TXwQsGvTz2sFZ0Aflr+I5nyoGkRUh5m8D
	 bv4RZP01zXLP4/FmpHD55/xhjzcNms8frztL/Qn4RpqbQVSFO7sMBNEHGmf0IBxPKu
	 Ue6FHXig1uprRVMs+tIkV5t228Dt94k5oJvnpLBH2UMGnWwyniPqzK6QY8zel9H3gA
	 6bV8CHX2zUy+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC46EC9832A
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179037363369.6719.12571133414902233776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3296a924b940bd429849777b2bae1c80443dbf6f3729b85bf9f06274edce70b
Date: Fri, 25 Sep 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790373633
