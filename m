Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515032040B6
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766763834; cv=none; b=UhGveG09IBSMmGGnDw5xdnhVQdbWDmkZV3F5gKxPiv7Ora2Xsm4MJyD120/vOip29TP22PIFJwFryagtzdl3qppRXj3mYege//+4HiSAHRUXVxebsV9/Ve690QEvMRWauuZWftqBAPm3fnGnlrr6NQfHWAWvMe42MsnPythPb0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766763834; c=relaxed/simple;
	bh=va2ifxTF57qFaYUklAO1R8UnGfvwZlTvLMSfWaw/E4c=;
	h=To:Subject:From:Message-Id:Date; b=ixm0KxHo7U52rZfmhQrWUZ7zRVAxXa0TLp7Iy1D4KG8OCw/FT2IUsPo59lsF/iUvq3/bfXc+eOmQf8FeYqYsAQXoFSxi5EZQO9mnmN7AzoRLI6Ffvd7atWwYBFuOpmIqb9SFD4PALTQ4UX1rZxLattgJ71KB1AczyaGLCq0Q0x0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wb/Bq5yk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wb/Bq5yk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB3BC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766763833;
	bh=va2ifxTF57qFaYUklAO1R8UnGfvwZlTvLMSfWaw/E4c=;
	h=To:Subject:From:Date:From;
	b=Wb/Bq5ykh9nWVEyXvaigQyvWinXCNWMnBs6KjZYDhf/syokHm71TA2VK4fxWgnXR1
	 1Fkc8Jy0So4Yp2ctf/DgD70JEByRRRpxvtb10XJ6874JHQuJhCO75IdPnWfmF3w8dS
	 MdFkeW2Rd1ie36SqLUKkuDk8mSU71Ddmnb8OM/9wi7LHbx2dE2D31BZaQmI6ad6ZG9
	 sYCv9sXX00SH8LopbmxY5NhP3kD4yyWs6hw8MZEiAfSYjJZiNQVAZXA6JKnR6Y+2V1
	 9qKVYAWh5aYS90rIu/wYyJSR0HFeSY2lj6fbifvGfu3M8+Qzsdx5W9iG6kDfwPslJ9
	 swdJDCFHlDqRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B57D1E8FDA7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176676383360.11608.12483675743589615959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05058cadfbae7b0fbd1f525e8d3afa40a6cdc24fe42b2d05bc8dddef4937e286
Date: Fri, 26 Dec 2025 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766763833
