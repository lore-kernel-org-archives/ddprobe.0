Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192CB2EAB61
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 15:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777390654; cv=none; b=oog7THxKKhw+tC28wNDQF3Jq5Gh8B+YUv7uKQW1+wSGayaiXba4efu1UnzestcG1ybhST3APe0k2UBJA135/jkm8Skv6ANW7noi2iGiPrJiIRTa1BQx8iNuLWeAybUnbZmFequO4yW5iKBYX6gOE2DJTvkkfF0RiotETRKcA6J8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777390654; c=relaxed/simple;
	bh=wx/iJOTwIuOxBrN86/aG1/iN0FkJbgK8BvkcLrvVv2g=;
	h=To:Subject:From:Message-Id:Date; b=rk9FNPoEoVNOHLm8qIxzN7DkhzpUlkgc6I4XbLmdAzQNnrPaUdeZAmyjpO/38G6/vZof/6j+lkjZAWuPLOg8OmHeqTD5lTQ8f2S+8YR9Gizlbys713d6guuEVqnf0McSH825p4GkkTiEjCpKSX/8XHTHtfWy6zgtDQaZ7w4RO08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/SDOdBq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/SDOdBq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA58EC2BCB5
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 15:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777390653;
	bh=wx/iJOTwIuOxBrN86/aG1/iN0FkJbgK8BvkcLrvVv2g=;
	h=To:Subject:From:Date:From;
	b=r/SDOdBqSigh1dAs2FdO5mf8b+j0gnaoNpr6cv6HwPKgMEiEfP80T4MyDZkwIMKP+
	 XcDiIwux5X5ULFmi4kWqDNmdwldSxKCfYqvu003QusYwL8SS3TEJG2ZpY0MnyXAxx8
	 MS8veuHrUjz3AP6dapQNxVeUG8hiAOs4xVXfdWZ42GXgis7PEXEknH7nEwLauMceHu
	 0rzGN3ppmjuGfJ2TGUgqC/N7qjS2SvkLj3Apr9KcfWfBcat2Q5sxB5ytgY+WHuf5x4
	 2OGK5nysaYhqqmz2jqtIMpU3yTkkaZU0p6vytFAjMLQPdAVrseb5lattH7ZfFSB9C6
	 zTwY5AdV0pr9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA007FF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 15:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177739065368.16627.4243694482638919765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 602db0ed4259e10eb0ed95ffd4862d2f9f66550aeb48bb54d9034e693b2af6be
Date: Tue, 28 Apr 2026 15:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777390653
