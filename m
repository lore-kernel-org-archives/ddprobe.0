Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09DBC394
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 03:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705808897; cv=none; b=OaiWtYIOB+U9wbl8n895pP8bkxNDZ6MRXD7hnh41LwKoHRxzS8tsZPy1WOgtOuI/moa9vc+zO3uhxznlm1K6AkJw5cl9dQWBZXsVj6zp4lhPL5OM4oyn54PowVAQaYjaSts35O3EBs1ETZBg2K2YVRjFox+G7obXLcSJbuyJG9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705808897; c=relaxed/simple;
	bh=IDu6j7dit80lypqy7iV37iqD1HxISIph3tnso4usIRc=;
	h=To:Subject:From:Message-Id:Date; b=PKMJEMGtZ/zDO6l5jjsSxm+22nRSHHA8Eiy/K5/ByvqVY7VPThft1CYf5DqYSCr8PtFNLswQ5bHG4H+q4cdU3GJzhcDaRLPUYreo+1bDqA0Eikpb0MGB6TGtqEiwWhvQcLIeDJsQqByaU19ObeyX0jgfBFRhQxLFnE7A5UelquA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DG+79wBd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DG+79wBd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E085C433C7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 03:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705808896;
	bh=IDu6j7dit80lypqy7iV37iqD1HxISIph3tnso4usIRc=;
	h=To:Subject:From:Date:From;
	b=DG+79wBdzdYq200o1asm2X6LRLUTkGJvarAl3tUSmQexe8GSJwUk5S8p8abw9eYDB
	 82GMj10R1ADWrZ+ZtksapD1Bl9MxfoADfXhO6qFqtGbmmg5RoSue4KtUPq4fEJD4C1
	 6Q1xABqUtiEiOU2/TBi4cgOc5s1S4tFqHHQTZahYHKYxL5eqhsQT+gsMq0lD+YJNvm
	 QJ6JGG5K0AXavj5mIBynKUaO1+GZal6xstzepNkX7Pa8czoMUKnxFEoPpothNf1miT
	 CMW5RD0eZzMkgtPq67TutyYFZenRlX7ue/WGsYVNQeP80CqfO9Id1hH/9XUtr8OL0o
	 z4N5mJMVH6f4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61CE0C47422
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 03:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170580889637.30604.14272841205604649629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 256ad88b043ff9f494f59284dce1639e961108c92d317afbe4200b33c0001502
Date: Sun, 21 Jan 2024 03:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705808896
