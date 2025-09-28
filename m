Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B8B1898F8
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759070994; cv=none; b=gh1LqVXKjNaW4z0xM6vnrQccfFYY4tRzajI4tfzLW1HJGFkChKFlvSdrvWaylvuN6doR8dNp6ICIycJcpEaR5TD/92BPZdqL0Vm6/dJ7HdXDkphYWUi+dsaRlJ4Pup+yqkrkVpvH7JAieisEL4pnAfgKb6L8r6l+Ts3iToV462Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759070994; c=relaxed/simple;
	bh=zRsH2V0Zti2TtiGry1z2fzOgr6RtVdzbb7QaQHox2fo=;
	h=To:Subject:From:Message-Id:Date; b=Gg2X9z0iVakVH/WVCc1wVUSFLkTARBEMYf4+B/11Z3DwoHU6TEqIM9R8yQjZO8I+CqNFiketaTUqcD6AsISHdDLZB316xK/1o5skiffIjjwSf6538xpogYmLsZ1BVppSX33T6eVehgPTi7+n3LQg4olcdy3wjh3RkoIH5x1KB0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQH4tKlL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQH4tKlL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A801CC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759070993;
	bh=zRsH2V0Zti2TtiGry1z2fzOgr6RtVdzbb7QaQHox2fo=;
	h=To:Subject:From:Date:From;
	b=AQH4tKlL0gb44BNJA9RAjtUhPtianZk/mFniV8+GIekMprawD3dYZu+47LW+paAUe
	 dMNNQAkmZbI82kUj8ttSz4CrZ6xAMid//F2xn9FGYxgyNR3juVkliPC+Qf86G45b6O
	 Bo+Et3jloIfPNdroH2Q8gnHMlM9vQEqT46ZKlGxAxplKbLEeOCY8a6cG4m2c5gp3jB
	 JrKEqlpC8HIjijvlpJFGlhIh5c9WwHJ1cNR1eKfoyuiAp4I3NWONxiF/FYEvCz6NVD
	 vGqq9sfPZX3HItxPqSxylJQgIHVRJDuBUwgRj0WiCrgjH2axtwqZ0JsAo7o2pm6ZOu
	 0xdEmO4DFkMLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951A2CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175907099358.30723.12230663326829660578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14588d280bc71a1b3ce48cf28eb28537a783f228287be4cb5a4c89bfd266c7e8
Date: Sun, 28 Sep 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759070993
