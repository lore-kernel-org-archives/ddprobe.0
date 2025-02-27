Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A64327003D
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 14:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740665934; cv=none; b=I14X6hS6sYwlrKOPkp/jK7gx9pifKpxdPGonEkMlFNwrgxSZ3kXUExURrLR3FYBT8bisxTPxW/9uwrwq8MkJeP2iNVLJAxLBSAxeDoWxsuWg6LLR3FxmO0cR+TXx03nO/p+OqZSDEsnENXP7trj0SLprV7S6iXr3pvJBtAGch2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740665934; c=relaxed/simple;
	bh=wU+agcORJDSw/61GJ9GIOvEDbbRE04svIqwqosnOWvU=;
	h=To:Subject:From:Message-Id:Date; b=sP6ya8zGLV+oazpIkQLhUiYE6tyxXQsLJ97t4TETzub3Mzh56jKMbrAEBrgtUZvAYpzOQ5+I6Z0Z3VTV+s10bP0VUFERcOBXTd2Wha03zeVzfdWL37XmkiVvv+gORUFI3+GSwa/ZrFffzXEUa4GxCrPWf6TNHu7lsUi11zRGoRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iTIF//EW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iTIF//EW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7B52C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 14:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740665933;
	bh=wU+agcORJDSw/61GJ9GIOvEDbbRE04svIqwqosnOWvU=;
	h=To:Subject:From:Date:From;
	b=iTIF//EWgz3h9tRsBC6/1tzhbNcX+x/WgcK0OqufCDaCLzxlrkFxqmireGXXsW0b1
	 aMkQ1uqqdZ7C0gZFB4Ab/KM1ySvPTZDs3cQFjCee7p1JGEsGcP32L/OvJZ96CBWd18
	 dHh+8HZJ7ntXKCrb+EUXoI5tO1w4oBZPYykrT9Ix+5brI5U34IHilkMqEQqGXu0530
	 U7rAy4yN56ZOz5g0STLk4Wr6MteJyHxBmII4ByWtzG9coVZERtSRdrFNth6ge3X/IE
	 q+5NsJNEvh77hz+gQVrawXLwxHm8B/XtELENzR8UOuUqmtynnBBj4/Y9EjtTIF/OCl
	 VX5nDHRni03ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C0BC19F2E
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 14:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174066593366.12135.16259931748156884869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58b7088a9ea13bc9a1586e931bc79c7dcb8879e80f30f6799af45e9450eac8f9
Date: Thu, 27 Feb 2025 14:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740665933
