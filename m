Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3792253A5
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753862994; cv=none; b=ZT7Sa9FBdtmJ+i6jQSU1LIzXQ9YhTV3pGYT/5jthBcXQrvm6fjbBmaRHDcTkHpG/dAXoK32pPkglktmTt4aXbt+vaa0qrhi2DwZ69gvLspNo0Lw8ai1v5VnbYuEui9wlIiJE1tqnrCIfd5TmUnGDdO9RUTUPFMQAE12bHkwzd5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753862994; c=relaxed/simple;
	bh=cA2U5hLsYqhLJBDzQcAM6n0Xy1eRmbNbpYUhjnLNEPA=;
	h=To:Subject:From:Message-Id:Date; b=YtWY/7w8wC7jLIHxLGU/IGla+pb8k0pEmRH+/qtdnc4IghjoClPpQWp9ZoYY2cH2hw/jN9PqxQ6aiFe2a52r8CM4e/2u+GqjDFXGpCHE4UZsHkiFesxXlpqW77JAFJyjzXfst7QiJU4GTYcDpG2N0pGwY3qIg4DxX1LSShoIE1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s9fewE2p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s9fewE2p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12F6C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753862993;
	bh=cA2U5hLsYqhLJBDzQcAM6n0Xy1eRmbNbpYUhjnLNEPA=;
	h=To:Subject:From:Date:From;
	b=s9fewE2pR8qeB1AvWFCijfE1OmpQwPRA2JH7QGmhIesniZ6jm5y5BGThoql5bHV6H
	 Z7b9lj3kZqAImHKBc9OtnaZLQ2ExLrIBIju4mfnLVPyJYet0e3KnmoVBg6yjOTmf34
	 nTc0N+8kxftKMc6GUCLyp3sMmmEIknI1wdnQHhuBpCLfiAjlgnY2g6LnJIx4AkW58F
	 mOa35WV6BXHgfRQ61AvW3oAgxI4sjXZVt1Ee/2ve1N19MoixLr9dLHLBTRvyJO0l0a
	 5jMUTEVDjNGwt+eOotRBRrpVRXIkCsobRnjHGACSPXomn1/a8IE87RMFBaZYl9PkRW
	 iKxq+cX2oidLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF10C87FC9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175386299357.6488.2426819737235584171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47fb3cf7a56febc1d7f945fd0fb3b30fdbfb2f2e3f707b258546be46790a8976
Date: Wed, 30 Jul 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753862993
