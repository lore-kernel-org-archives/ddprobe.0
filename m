Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C732E3711
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753853394; cv=none; b=bGy5SeZ2Lcj6zoDSfvYmxtt+jWmFa0Eo3tKmyTC85P3SDwNYM70dUk0s9bPGTcPJp3YP0gq+5w/kCr6PvFH9fLYx1hDL7k1CCqH1lTUgmen6yaPxH0/bO5imXBkYkVllbyfCz96efxvpftU2/xy+m+40w/apZn9Omp6ZvrxT+7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753853394; c=relaxed/simple;
	bh=+zBDohrxePkFyr8RCpG3VFKoUvmY86EWcEaHOyjvd/0=;
	h=To:Subject:From:Message-Id:Date; b=APwaCC12IGyXFchAgkImPxsEamXEQ8b0NtG1R2afLsS5BjNq9BgXjkn4f2PRccpewM4fGkXfKdREMVu6x62RL/zKodikAUDCXXxeAvWrjuDYn9n/nmXnTe5R4rCJFMGXGYMgQARjAF+Tsr0QPiSPosIXRNafmvrNVdDjTg2+HQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SwGDHBYN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SwGDHBYN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66A5C4CEF6
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753853393;
	bh=+zBDohrxePkFyr8RCpG3VFKoUvmY86EWcEaHOyjvd/0=;
	h=To:Subject:From:Date:From;
	b=SwGDHBYNhdxIpeKJgwBli680wbaXE09C9vyw8MWGky3H7+3stDhGdYWaCb/6ck+qg
	 aKU9aKh021dIuOsrauNPKMCHp91MtE7h9n8Mv2dyI01jcNoLLSQybrPQ6c1kOrDC9R
	 95V2s1PaLBvqKBUODG9xaLPFerCKQ0zY3cMFMYToKW0Fcr68yRstmv9ZwvUyBd7F+H
	 KqHfkGnve81aZAXKUDGonu7mNMaazo9veiydG1Cw5OqI+Wts7swtBFVXoxgkOaBYIs
	 7p4jupBazPjhwxC8xjqvC4ntNCyjdLo+jpGib0RgOqJ7ONuityeRu88pmum/gIHtxM
	 NaUjKWPqpfOfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FCCC87FC9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175385339358.27236.10597137335768513600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d51e2ce06e48c6060085f144aa80f807b748aa8f669f48422a933f102ef7df4
Date: Wed, 30 Jul 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753853393
