Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F285187346
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746392994; cv=none; b=d3PynFjWmPmXqhRQawXxDQo7I2V6NddfQk9PWkLWrBZphy2NEx92Bb0jSHJqWq9v4fMmNEjmELHAWsRQrfVobZba1PdoG3boBkIrBPmwm7oWou5EzPHQ+U4/m385F2JFSouXDFfrKp7hXVR8yxO16W+ZQF8xjzVX4MI9frSrUJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746392994; c=relaxed/simple;
	bh=0zckGdLWRAavtpLfzD1YCyozTIY1nkqIQMMUL5rwM0M=;
	h=To:Subject:From:Message-Id:Date; b=T5JoH02g1KMR2veRG28DXwANgY5umpGGblkJpwvlU/O3xpcuhR5l8fD1sq27qd1cukHp6KxmMZPCEdeEfb0+eERwCV9xNKY3Als6KJhR2RY7HKQnAueM/ZoRWMmaplBRiSiIaVDUrd56zuJyhOy2whKq1wAFUZ/5cT32HF/C+J0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hI6pBtDm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hI6pBtDm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2274C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746392993;
	bh=0zckGdLWRAavtpLfzD1YCyozTIY1nkqIQMMUL5rwM0M=;
	h=To:Subject:From:Date:From;
	b=hI6pBtDmghSVSoX9jJ6mZyBcphG5hcOI3fB/VG19rmpyj2r8wmeA/Ul/i7MkZ47AL
	 nnI+BGsHLRnb/1dhFGB8ZJTa0AL8azF9lfYbRhLmHkvFdmm9twdB5ck4tygQIKC8J1
	 r0GBaFtrR2U3SzS8V3JKslYA2hePMOyD463jqbiT4Pv+K35UeElSmNWLVSUd81fG4Y
	 jswRSz9Oz+fzUTDrgukX0m8TZpfqs0CfgfZpgjaGczgwDMZvOXTqyu46vjMWg1Nyff
	 kTGG3+o35S5LeoaY37Y7HCxsGj0PhWs76RBneWLAQfKJO9QfK0e8elv5IZVuNgMDaa
	 FzvqZSMiVNdtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90014C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174639299358.15743.6953333154244235911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca8efdbfb463b8a18832faec763691e29a9627569dcc43549d357b6dffbfecc8
Date: Sun, 04 May 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746392993
