Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3536223E23C
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749130194; cv=none; b=qAfW9FhoFjyr1hoK5bXun0JXU0XAqMEXH0gM2V7G3z5CR3itPiF8BWHPJwJO6E/9+THYh5+D/tIeVkUMOTaBhBYs2SZvWF7umso8YELnyi8iJhLXd6yGGuHsBCmvWzxiMPv5NwjjPBwexy2R/PVe5r7nF83emb9rcTLMtc2GUBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749130194; c=relaxed/simple;
	bh=C9jkvoP79Z2GEFHPgGGXKLSZzz2fmhKdVH6l9jhB0Jg=;
	h=To:Subject:From:Message-Id:Date; b=tIoosS+DCfgE/2DKEt0DNLrYeW/gL4+M8khNmAv+cbAxW4v8cewrTIqKWOZSq4UPahAFG2yNGj7e3hN6k8KkylHc78fLMAxH5AOzKdmpwxxvoLzwogj/efv8gQkFv6TzIkdN6gk3KZIiU+k2JMji298RrbyKPgFVTMeDJqQmnRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=APT/PKBk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="APT/PKBk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B3AC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749130193;
	bh=C9jkvoP79Z2GEFHPgGGXKLSZzz2fmhKdVH6l9jhB0Jg=;
	h=To:Subject:From:Date:From;
	b=APT/PKBkiHTRAipVc8XY5n6BAH63bTPhGNbNaQ1ZQf2K1Lj+iKwGbjI75+LJFrgYQ
	 BiEgF+SRH7Hz2niBzgR5H9bi41B5hrlaCkzWHGkyxTJxgQ4BPG61HPTWmthtVE1JDU
	 Nh6Vq+fn0ADvi94XEc6CUt6qY4/bzs2VRtOeydTgO+HzkaU1zMGYPRHMX+CKVEziBn
	 O5QAqG8y2k4vxANSnitD3XcEnkbRVHM1++UX/HCr+DKHe1MqSmp5x7PPggmDl36GPo
	 14QwRksJNRM9MRCqR7MDQ7EalsX4MAQ9p0iEhTAkroaNF+asFnyXgiOdEZ8YCMVRtH
	 goWEURduNj+6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928C0C5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174913019359.30538.17937623365708226469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40f1edb36a61d9459966e526d3888cb461f2ceb870f0426e9bc62c70796445a6
Date: Thu, 05 Jun 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749130193
