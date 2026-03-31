Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 079D878F29
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774915494; cv=none; b=GKh7XmlZNPFJYQsu/le7AJGRxd9sF4bsMkB5RU9GJYe4SctM2X0Wwzya1XeMu/qjZzhr9APU8QFApxq9nWDmApWUgkLb+g5e1EgPAMgFlnokXjJlQBsC4vm+bams5vn9W/xJmXKW3L/iMuLAv3BgyrODXbp3xyKOCdf5Agk7IMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774915494; c=relaxed/simple;
	bh=E90FKuQ2ssBNz/40ThC/nihO6bfRy0G891LrZ3roTsk=;
	h=To:Subject:From:Message-Id:Date; b=r6P0op/8/S27r4RI/iYhilcgVEqg1mNrZAXs19smS2yjL7l/UEp49VQ4Y8AZKRsHAMdyJeaVj5kVRMRqTZLmmlQkaTnK4ItPc1a59xmdXqy/BXBb8zbaexiM40/yxtV00OW+wlKz7SFdXsi1vIFAonvubIHKjZ0+CNvStHj90NE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQXApnj6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQXApnj6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88F8C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774915493;
	bh=E90FKuQ2ssBNz/40ThC/nihO6bfRy0G891LrZ3roTsk=;
	h=To:Subject:From:Date:From;
	b=QQXApnj6SrmB46f2mbrKhTaI8H/wQrHm8goc0R9H9aH++87jmgzgNRM5gYZGIXJIJ
	 ZG5kzOF334QVba9duc9SxO5stsgyL/IfLqwWA7GFQH9n517dxEIg8imro2rHMRTx5Q
	 ttI2Z/fpxMVcwXEqJ9YIBc+VDh3NDAmh5CKjfqujxRVu7o3i4iODLa6QxKtxpMpERt
	 raBASUjp2b+OslCVmiK47YNWiFbZJk3pEyYBHnxjmykKeqCh0PzDiG7avGhzR6b+/p
	 xcs/tjQ1rZbnaRas5J+27SIfMNJU7FqmLBi7olSZ41XlXwVMp/LTMn21naWQi/m+yq
	 Z4WtOLoMf2+/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F531061B29
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177491549359.22938.10636152177251103110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ce3124dc2266e5c7e3886ff8b1e511e17a3884979580acdf7559d8c90093837
Date: Tue, 31 Mar 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774915493
