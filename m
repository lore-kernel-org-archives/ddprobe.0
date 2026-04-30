Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315D6224D6
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 00:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777509454; cv=none; b=LgD8P0NY9D5hhkCw9E80XgcVNNuubVPjxDz2pvtZ3kuTxF4eIksDqfRr72OJXyFVGOdpQJeG9dsEzUxwR6J0VMs0tCO0V672/EdYBX8SCOwEumJkCjeOYxWVZzG2qt+noEDHb6e0ZDs2yBuPOnIi85naNTgv4/Ct5OEaUA71db0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777509454; c=relaxed/simple;
	bh=bjkHiEVKiIwdNUlN9qX+6U+p0QIaJShxpxeSsT/YfQE=;
	h=To:Subject:From:Message-Id:Date; b=FxOAZR5Uhsg7KPX8kMHS3M9HJSOGEMV0oFk7fZKSHVc5iB35UhRWRChSPDQ1b+cpjVz/NYKZUROqjxLvjNOQKmpkcJlPnhhZ74NJ8KxTxCRCBeVhZ3Uw68+sSiqb2X/nrS7x8dSiulSG79Uz1c0CCjpwMIyrKjPtxBBmRXDxybw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s36gAQoT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s36gAQoT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB693C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 00:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777509453;
	bh=bjkHiEVKiIwdNUlN9qX+6U+p0QIaJShxpxeSsT/YfQE=;
	h=To:Subject:From:Date:From;
	b=s36gAQoTPd8lh7POlIfzDUXUizgEN3/NFJRTzoBebh3h+hOnL+KT8FciUSclv5Dt+
	 qlZCIDNY5GPf3D6pZDr06BF6ldxNJ09vHGnXBT+WYXU7XaD0Jq7T6RglOcFtoe7xxv
	 nREXFAnUkN0sQ4EJTM+1w9rSjFyfUjn60Ju8BxsR0ORys7uJ7nHBJ5dMCPCLWsJMj9
	 N1IM26iL2qNdRg7XXJ6vlfEtSbJmYwQmeJ10VkJth7JkTgLG58iKQMI3Ytr8LXjIFI
	 K5/7ajVFgn1WB23zfwRWR3DderT4VPxbAKiFZLaSpV0hdJyV+gcTSRv3a252l7j6cZ
	 7ojqcFEPr178w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AEFFF8875
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 00:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177750945368.24559.226804653033262163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bdd8074c7712c0b36bfc80c92daefb1605426cf278da57772bf3f98020d0e45
Date: Thu, 30 Apr 2026 00:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777509453
