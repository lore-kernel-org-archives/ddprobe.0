Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FEB8225A35
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752792594; cv=none; b=hYywBPpW4EqeRnf01jkYP5biig+BAp/Wf0QdNoS/aKjV38cpNn4Mtf35No/6Pt6g+2badpu09X93R++mMVpTxm137+23iJBfDZzR65jpFFSVEHOpdITFcS6EYQkZoykISjSwI/Tpolgp7pgStZIlNSm/mgQi/s/cORRvvkCWY64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752792594; c=relaxed/simple;
	bh=wA4tciEEnljnSYnyg94q5mFmCBDjiLZLxjcXkHxLnxY=;
	h=To:Subject:From:Message-Id:Date; b=GWP2UUEQFioGsd38Wrb4XzOCz/LB9nTR92QPuaorIQw8gMEAo97mY3s9msHOufv2ZjFsSHnpxZir+tEQgcvQkv5veTtLry7Qr2HeNdcrQMY5QKBgtszkMPT+g/XCRBfi+ZPEkDYuPcS6BJkI7NT9o7adA8jVk02kIXdvuT86PNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tQkquEMd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tQkquEMd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B169FC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752792593;
	bh=wA4tciEEnljnSYnyg94q5mFmCBDjiLZLxjcXkHxLnxY=;
	h=To:Subject:From:Date:From;
	b=tQkquEMdTiNfsqNp6fcBKQkxI1lJ1/mSaGqmGYQ8koEcQreJtKCjFO0+ocOX/589I
	 cf3e6mi1tYpZf/Ic8DcJw9IWCqHVSLt3YBgxTj08o15mcR1lsI2DEpoPheyurIkTCx
	 bVplikpsJrvsvoedOzZJ0KH8douXt+zVvf6ZbBbdGYRbnVONqmPngTCvJlHWc5dq8g
	 MvjJxHnstVZrHcFVYLA2B+QrJTPu2OD38lLCuLc1sJlctBFXfJYXkxnHOfBeO2Hxes
	 bnX4hZv1skIWvl9xi9NDje0TKWsCVb89EMJ/Cc6LOexGK9NUiNYW+iNoPrHgjQwBMM
	 boGZwAGz+ap4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A14DCC83F34
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175279259364.18190.15171791763340630275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6ac3f1b522b35786bb684a86bbd08fb4e9057db1eee3c381eeb55fef3ca7783
Date: Thu, 17 Jul 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752792593
