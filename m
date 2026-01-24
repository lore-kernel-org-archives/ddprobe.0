Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7367125C818
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 03:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769223834; cv=none; b=NE05zmwYPEPIljcSycX0cdJ8qHX3maFMQS+oHc0cBxkcpUEygSuwDZFYr5QhLXEz+bxg7YkjpvXXzDZutJT3UarvdyTGtsnd+yr54IuBDp+N9qXX6n5uOn8JSW09NJZ8NM/6WILWJGdyWUjurj4Kblvmf4PwdrS9NCU9I1gN8wU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769223834; c=relaxed/simple;
	bh=3apaIfScS4TrJVKlAF64eplZLB4GRqlV7bbzHQbUG1g=;
	h=To:Subject:From:Message-Id:Date; b=JZCMzRjM+oAB42fCu/cQxnj21ITCnKdCAHN+3JixCWfwzVqJJQfu8TsXwYEr8F7XmV7tKE0rkcAQqoh0O3z42KuBsmBSgR+8/rW2/SuwPkABTLC7zvawFJ+1dsoZE7Qy97TYAg8DtDvbYMf1B7VA6/w9dcuRbcjRUKsvpVU8O2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jk1BUkTK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jk1BUkTK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD0DC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769223833;
	bh=3apaIfScS4TrJVKlAF64eplZLB4GRqlV7bbzHQbUG1g=;
	h=To:Subject:From:Date:From;
	b=Jk1BUkTK2SsEH2lPfiy0fwJFudGlrTxUwvvGFecZNPQmzB/REZGQPWJaEQvUdIffl
	 l6T7Wk8QzVUeJ20xlWaEePPHv+rggp2fTSHnPGKHBZ6hMrExWrkRPp/fF2ntoK2+I9
	 Kg9rw+ox053H1cEDoshXIgj59Mmr5qk0tp4iyI7xaLguz3G+AARNBF7EjIFlUAcyYm
	 khG1pV+SfopqDxXpycg1h6sMj2hQRDQgfuoGCwh4e3oZYF68nyK6mF3UzjXzW0PKsa
	 jaWi/FvP6nxYXPZh5rJQ2pZEKKfSnIc28tFsDNr0OoGSm140qX+1ceqmDSUOIdFzr5
	 KvsArYEDC9SNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7FCD778BF
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176922383357.14098.875737041082984757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 473c945e1e9705cb2729608c5b590e63e8f2801be446f3b722839982d4f2e65a
Date: Sat, 24 Jan 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769223833
