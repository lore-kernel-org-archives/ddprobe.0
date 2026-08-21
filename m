Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD1C367B8C
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787316035; cv=none; b=CAf3ny/Qmyh2U/ImAXWQjYWpNmOYt15I9n7lYKUvdcLBIkYaUxuQpS4Sd55a4S8gYBRTcXvDYEVqn9N/oWp4NFfVK9poI6wLtK1MnDSMBnGl2NoPvdd0JulH+cAKbulDTyJHFnxj9I2vIOPaq/LWLWKlLz4zNxOQWF6su171hSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787316035; c=relaxed/simple;
	bh=FVyPPIs2wUCktU/ekfN7Vhn2bk/Wi9CMAPFOXYg4mp4=;
	h=To:Subject:From:Message-Id:Date; b=JbFvMl/LV6mDabFf7CAJBoYX9AbOFXEmdxRpIoeSLfgjxfy6prrVT9Vkf+tPxz7IbdkfYNg/Fy1eSVY9B+P3AMfrOCPPbStqvw9GBjd3ZwhCpDBjp53O+q79b1s2a+/u26hT4ISzlC4F3bnxsjhKRG0Aih4Uwe/QhoJ+ZZLDbIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uue7CJ8X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uue7CJ8X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCFF5C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787316033;
	bh=FVyPPIs2wUCktU/ekfN7Vhn2bk/Wi9CMAPFOXYg4mp4=;
	h=To:Subject:From:Date:From;
	b=uue7CJ8XVEhrEPtVrAYoAptFVM4a3Fo4DerChTEZCYBOhkewnpdeuWGzU0tFvKG3j
	 KBlA8Ln+9G3agKRydkMVz25ivatCcKrE8IvZMtpAq9J6G61EsfYnKk/uMh1WfHq2gB
	 SUfbTweqV2yIARezNx6Zh8/yqPbD/LBAhg9EoTbS51ptCqOeR2Oy6791fg5Ufk55wN
	 NvYzZqKTeGuocALNUXq5YxRjcbc4kdVuAk15RbC0RI644bNN+xwQHlDfm1thWcjC6A
	 ewQmvbjAj/mgJtOm6ldyy3jeoN3TL/B9sFZLPBsUCbng3UJPA98zUdoqfMG0Avvl46
	 5JS8yn8N1egSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8D0DC5DF87
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178731603371.2432.7841735583867705613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4204e085557864a9aca9211e505ec7c2ee8e82709bc6a6efde6851d769b252ee
Date: Fri, 21 Aug 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787316033
