Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 011E5194C64
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 15:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720626983; cv=none; b=Mu+wHjzD/1YFiRY1N+Ni+ZuryNmYnYx0CayeMpF16btdulqB70tQGvuXfbC7wdcDQ4fYYgVChQrKHlF9KB8MR2hqfuIFUQrnVOGL65/7eHu1HLtlAxMbpyO1jvuSeJwN+Xo+wKvkd/RWtWktQj6dPvc4ZLJtj9+q/G3XKhTDruQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720626983; c=relaxed/simple;
	bh=1M+G0qgwyW3+Gxk7VVrI2UkojQ3XoK/UQyATspkem68=;
	h=To:Subject:From:Message-Id:Date; b=gNZuMSGJwA2/1KbklDp07WSgR7ibeBPFCErWd+KElomHTX1WOBxS68ZuaXLK5EZldFI1NwGf8cCpnb0/EJ7P4e5mIjdlEbvEwxbet7kD8IMTMwFtT+jZ6bmCc4o5XcMYgF7YO75Efnga54qQ4e3cJuh56/OR65jhE70P0c+wIyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EgidiJfP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EgidiJfP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB033C4AF0F
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 15:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720626982;
	bh=1M+G0qgwyW3+Gxk7VVrI2UkojQ3XoK/UQyATspkem68=;
	h=To:Subject:From:Date:From;
	b=EgidiJfPvi+7H+PtHWdMQClbDLdkuINYliiKfq9RywJmwGajIKjPj6f9ybGSL004l
	 5W15unyZGg6Ho73WgSlzpDnsx8wYvOH4Y60qdzIUXAk349/sZRMkhytfxRHYbPohZh
	 Prx1iCTUsyEQefadB84yXmMgloneyDIGqrTF8KtSfNuU9Q0mVwsqNHMnxp8zGsTohl
	 p/0LodROjzZdm/i/g8s/5ymdwsm6+8w7ztCquvvsssqxE2nBrEX/wK5UnS4zRQ0fp7
	 Ud2rvixLVLnWkCWa8/vpUWwxnrYH4f+L/hJ5g9pBWUvagcmmQ2ZjXg/jr/vKbBkoU2
	 PSuR7pJ9cdukQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC4BBC3DA42
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 15:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172062698276.32676.10276866836971067244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45f0763f9cd1d3544a3d63ae1ff03c45faf0a4f807c7641bb709f7c7cc35cd19
Date: Wed, 10 Jul 2024 15:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720626982
