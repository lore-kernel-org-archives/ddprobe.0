Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3199021ABBF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746617394; cv=none; b=jp1uXRGSpT2dPmzmTc+4ClfLXOQej9qWj7LV8ixLFqKgOajOpvag/28K0lKv+gRyB/O5FgIhWG/JV8bszV3WbCDfhwBo36zoiDoVn0b+3k4FTKLem26jaJ9nAoeb3uxlpHESojqHyTPSDujD0vHmakT5bGK/RfDoWEXRgDDBRws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746617394; c=relaxed/simple;
	bh=FJo2BomR0j8LVyojwn4LMD1WuE65RAk0BWAGLu/eN9k=;
	h=To:Subject:From:Message-Id:Date; b=iLCn7+Me6/KfXyMERO6o05YYJBtNHw/i3XadoMH7pGpMiZhv3VvyC19tFywfjlMemZ7kGjxsMgsiVepMldCwTK44+3JIMApnR5YudrMtNCVokKFMl5thDnC9PVf254ulpXDk67dzi8Rw9esN1Xs1MWQ8DOThz+PheOgyY/3VvF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ibMUhvKd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ibMUhvKd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D289C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746617393;
	bh=FJo2BomR0j8LVyojwn4LMD1WuE65RAk0BWAGLu/eN9k=;
	h=To:Subject:From:Date:From;
	b=ibMUhvKdUIobON00A084TgFR+J+d3aPCAIqByX3YZPSeDjY4W9gIfgvV/QzhnfqMJ
	 G6ran2Doqz11c1AcMSEKeIJ4ayYnjm6DOSsOUGv1f/U3gww1a/dQhhUE7jVTeAoD03
	 axtzjpG3rtIqejzEVORmdVtnux/KBN+bytH8mGsqS2I30AwBrGKePXM5OXhcjpUcSK
	 6B1gmJlP+QdepidAIBBnih/Ndq1hq49pEjLMqjk3knq2XfPKiRQN+h66xD4pmJWXK/
	 FvuTW2yOOfdzohk789jnDXrXnnEb9lYCFod0OmiMs5MV9KpKuXMY2bbKYIketuU1TS
	 gvvJGyklJ6FuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E80AC3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174661739357.23189.8214410595536328836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27239c9dc6d6c699eebbaa7adecc7c7cfd3a42c1bba10a83336d4a97859be049
Date: Wed, 07 May 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746617393
