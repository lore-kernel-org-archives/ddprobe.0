Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FDE08C1F
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726358154; cv=none; b=SmSktm4kBTF5zWBRcK2f73qGp0wgf4dMQ6X3tbRHKPMEN/grmvOUtRJe4Z9oNyTT5aoshY+rba0iJaMoiYSLOZxNNMNlx6BXV3HzgPBabqJFDt+BSNlOJbQrvlacFzBRhn2gbW2MNIyeZ64li9rVbDSZFY7cJdY0+1N156QpuUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726358154; c=relaxed/simple;
	bh=HQ7D25Tu4pYod3PFkaU8kcR8vGlNG1xCTOeweWervBw=;
	h=To:Subject:From:Message-Id:Date; b=pYicA0f98ZjsCU3PgcrzayYMroAnHLNnZyDlXyoxmJr007rJHxdw1RtdvJoaDoro/pNWzjovdo/JRLtgrGzY2VsfIz1v3HYLxXER4Sr8yGmL34MtNKrG6mXBLuVX1Z2nFvvqFxWJZQ4bcyi0y7Dgne73u3gv6rojEtjwp2cNXeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qLhuWSFg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qLhuWSFg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5C8C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726358153;
	bh=HQ7D25Tu4pYod3PFkaU8kcR8vGlNG1xCTOeweWervBw=;
	h=To:Subject:From:Date:From;
	b=qLhuWSFgI0gjRA5WWeBDUzQ22GzHo6eOG8WgGFLxE1uc3Ftju74NyfdN28MAIGk8h
	 zLBu+8xYI/MV8anfVF/mwIDOPrGyFcrVFkW2n2cLgZ1aRn9nWcnRIUcAOI47qqy06v
	 3HbjoCmfeKcvoyJfyBvzSbaPOklCY/UClyvraaXkk/oLRDsOYPE7KCbMAq4Uk0mvpf
	 vI+0SeaeyXdxJqrnzNlMeJuHzYLFRdIfPVpO3AgLyHNN7DENdlElouoZwbDGRbDvxl
	 FolSYepBKQmrPy1GeRXEmozQ/TaUpKfVRdEWjKVRny5Xj4txr4EpfA6pXm/Ok0E1Jk
	 J+jcvFnnb8Pug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99676C021BE
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172635815359.30958.2090990516304422976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2de2b7f458237687db2098aabc5bad14a52ccf31efe8e68117168da0df4aec6
Date: Sat, 14 Sep 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726358153
