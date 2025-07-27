Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10FC71DDC23
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753610994; cv=none; b=GmRO6EYgVx0bl8knMJ4lIelLvUSNRB6ppPOec1fWPTNR0QeBn+ogCtgxmpDj8LFIw0df5xUYOYP6yZ066GHbH17yM7oV9eJI7x43vDMV4VJv/7Y714W+xwS+xQCcZ5QQSmfGTwBp4+AleHxKKC+wpVaIJMCUfM1TsYmCU31h26w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753610994; c=relaxed/simple;
	bh=cJjKzzW4KTGd63rZ7/CGuE3r5lP+GI9YcLzemR8eBU0=;
	h=To:Subject:From:Message-Id:Date; b=acFk6gGe9d2uElddF1pjerNdFcAErGj6vwdN3u3247tCF1MfGkwSj7rfbeCHXHdl9qSms1tdveYvsNXF0FYE3mrrz+F0cn0JtuOmL+BfQDGPdBO3gGssInMtGrMKH2scMYDWWEOxk+mhGAQGeg2t9G42JjNs+6Lqxo1rIbPERzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YCx849ol; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YCx849ol"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BD3C4CEF4
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753610993;
	bh=cJjKzzW4KTGd63rZ7/CGuE3r5lP+GI9YcLzemR8eBU0=;
	h=To:Subject:From:Date:From;
	b=YCx849ol3pYHaNIbLO/UKUONk2ufnrgQL9NjTDkY41Ng7sPYzDvJBVT+/YwT7V36M
	 fUzs9D0znOg3vQvOiXjiJtlsMwFC2p4ciN2TBIxUC+nXjUe3Va9LPx4w3TrWFheI6t
	 +obm7PLspNIdxSEwSkoy7Yv/hW3nUbVDaAt5jNWmU6PWthjCOYX56PRtwSdP/NOpvK
	 u3tsKs2p8bvZiWThwQJvoz30m9EpSBUDHiD8gl6XWwjj8rDi4fvZWaluprjKya98sf
	 Fe8pGO3L8Ha/emDVc1BHtxBWsQMwDhD4WUwIOvmcJ5vN8GNBKqUYzYMVMR52DUZ/Sm
	 py3IxjnCgLamQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9098AC87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175361099358.2703.7807239589564677029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38608a16d9576a1456b06f4a7f18174814c46e9c4a83be9e1dc525a8118afe46
Date: Sun, 27 Jul 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753610993
