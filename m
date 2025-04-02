Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6F871078F
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743588593; cv=none; b=N61rxBGsYCqvRHQwihTO5mmEUwxUqsvzLM3LrHYzfDOkureJggqEZFMRUgL1dAj2mbCe5KOCc/tAt+s0S7WVlImFxovVwPk+x/L7qMNTKmsmbJrwi2DK+sM5SoLumk/45bfC2yECifaVZHkEZgCugBpKVGbIyKFUbk1GcPIj/g0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743588593; c=relaxed/simple;
	bh=NOF7ozf2b9H0bbIRved1IOOMTv3JPVwzY7r2YdRtLtw=;
	h=To:Subject:From:Message-Id:Date; b=Wi8earjFu3AUTgQMmSmK0GqYcV2fnV1uUTLX9I8LyDveB1Y3t3U7eE2de+2EQO7frtzpWKZqQYf7729iisczEn7KqI35u0NuN3wP59HrjkOoZDUhJPceWseudboV4rgqAVi5hsACkz3DcTO4knBPLuVlLqdb2l42aO8EwQBvfvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJkTDNv1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJkTDNv1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A508AC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743588593;
	bh=NOF7ozf2b9H0bbIRved1IOOMTv3JPVwzY7r2YdRtLtw=;
	h=To:Subject:From:Date:From;
	b=EJkTDNv13lSd1zXV6BCAeFkbmTZxEkJLg8wqox3lI5biJLH2P2HjTw/7Ibl5MbSJ5
	 AhsBu3lGOm/AWTM4RgoLr1yZcqoi3vs5lymwFWF5CDOn+CPcebGH7lnZCqgvt9zjt2
	 I8/9bMJqZkZuTpoVvpC4Vd4Z6XdCn29c6KTNbdR/SXU7KGNkg+BeDAdfDisoxz4Kfb
	 nAImsnWpeQ/HPS4It9DYTzvjBefO0a63zYZaEoqWQMta+vTE/ME8V6Bw6HvxU1hrYy
	 XXMvxAfEfq3eBcURElJOkwj55o2yhxOoduLxz/XMdxcPNTbxmRxI8+W2etjIGdgcrL
	 BuMiXlh09tQ6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6D0C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174358859357.28645.8811333866306225099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3906cbb54a9c357e875c038e33246797e6cf5d58cd07ce5a92f6fe76b345373a
Date: Wed, 02 Apr 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743588593
