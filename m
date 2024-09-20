Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AFC53BBC1
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726841154; cv=none; b=GbwPxPqwMrCwcTmzT6xG/efKfYaVS2Q2eWbk15ujmmHyeSk06GTo1aD4r9QyxxH33aKiD9Pp1ZLG4lI+wm2fwPwP4mdhfEN7u5I4qfWGnKdtmSbkEnVG23cBHUo6p22fAqY4K0qqSj6bQZvHAtg38lAYLmPvZHCJYv3R/Z3szN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726841154; c=relaxed/simple;
	bh=U17pt+8zdN8phouvzz/tos3wMrRir8jzZ0d89kMUgGY=;
	h=To:Subject:From:Message-Id:Date; b=ef8ykfvdpbuYnNjgIgYrMnk2fcmgbA28paxwWwMT21UG1E4juyUsDRivz8dU27MYAHGOdxMxzfYEeb1Gz1mNpo04mus/fQ26kX7LXtVzEqewzDMh5snecs+HoEfZeg4jwFtrccC6mUw+gONps0a8dDe/B7UgUBistYilwN0PoBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZvQbuGu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZvQbuGu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C80C4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726841153;
	bh=U17pt+8zdN8phouvzz/tos3wMrRir8jzZ0d89kMUgGY=;
	h=To:Subject:From:Date:From;
	b=IZvQbuGu26HOdy3ejP46jPZB0uyhuJPCU+Gh3QnzLllndaUjaTp6s/qrHwHpVdSJF
	 r+OPnoS8U4aKtRSOd349VrA0DZjQr1F5d6NDqBORzplaXh20RXdYkfvw4IH2pbZFaY
	 K9nfGCv+bwvuO4tjACMTR2r5MGXkn9CmL5QHkd8LHzbN0txdGPPeJuaGtbgA/Ym7Ai
	 RUNMgpLpI17pWT9jJi+hG163TrnV6lILX0jltgWePwDipyJ4lY0O6djs+h9hXodoxC
	 TGOWdWWS4vi4aurpIZhfB8faglZ7qxdMRK216SiLoPsyGijBXKqS07sGlwZocwUDj9
	 kEybNF/Wt+JZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DD7C78849
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172684115358.18397.8436616140829897027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45d4f89d7ce20dce3cfac43a9a0f1df90dc42cb8fdf8367be5bcdd81d7711dad
Date: Fri, 20 Sep 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726841153
