Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2925E3C465
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749104994; cv=none; b=eq9+7jVMCFQeGxU0OStXuxZk3STz+Uc7Yjog6WPuOSPUDakGgB2UfeVINQ4KeDvjnURCIrVy2kxW0hs40kOTmq8a3IwBEL1UZssI8YaNFqVU7NeeWnydXWiBZl/HLuU0v6oEs9VrPjvWq/tt/AIT7GeDf+neqPecCZAXU+QgqIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749104994; c=relaxed/simple;
	bh=iCFT251scqbj1A0Q7omEucf/IMh+FcwoMMiMSGMpbzE=;
	h=To:Subject:From:Message-Id:Date; b=uPyVGD5G8+4FQLAhDPlL1Dbefx9ER5awm6G3ztvVgBytHOHcdaqnkP02kb41eedT+Rq4XL3vQELSSqFbqSz3bSxUEanH9Ue9ESR1dJiPzVDOYe5ha+9XJf7A3AGDJ+qOODtZVNV1hn/JRwHeizXRh2e/njJ/6G49O1CpkvfnXX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+lzSW6F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+lzSW6F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEBBC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749104993;
	bh=iCFT251scqbj1A0Q7omEucf/IMh+FcwoMMiMSGMpbzE=;
	h=To:Subject:From:Date:From;
	b=c+lzSW6FG8DMWRx7MbqQub/ngigg+rjzgoiXowI9goiQ15Av7lWlunXiYXz4r7vwU
	 b1EA1Q6c9xg99YTScmJ7Bd4qcbUXIf/uqHwa6uDNv5BfaGrNOsS3+az53E3f8Giz8v
	 +D6Sf59Wfj0/yutUBP3NbHPSfRdoUtwknPiMTGq+PDp9RCGf+gLy37tn6hBQX44LbX
	 +NtK56HwSYpVVIV2bHq5BrkMLr2vafTfZ3NFfSTSM5cXdI0P/rYsmYmcTrNeWfEBtS
	 Ce4kxNlUsO1T/1jXEoqe09Kc7/YR86AhieLHxOZLE80J7/0FnY8c4SSWpNSGyysHFF
	 qydP+k67dUUcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F183C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174910499357.26439.9522371151928798102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce3639270f4add92990b8968a9ea8d261d3bd6dc0e32462966c8060db0e09332
Date: Thu, 05 Jun 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749104993
