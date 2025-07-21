Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B3A13C81B
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753135794; cv=none; b=mfuIhK1v5+dpudAdJy4PrazKn8MnNgm6IZcY8j0Ko6ooAwut9s/TpyXSnz7UKaf9Dj8ROGhaIycsQTxlW8qLIEMr0ZDABFoKlzqcA7cIRbjan7mrMRhkrafxpjp+JYCYFzP6q4fcIcXPIlWuURaTH+3lnFen8hY2gcNILeYeRD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753135794; c=relaxed/simple;
	bh=KhP0rvNlX/5o7Tf3cuLC7zrR0zesWUmk6WIpkA4VmLA=;
	h=To:Subject:From:Message-Id:Date; b=st2hFaFCFGKDc3wwtg2LV2giJTsAkWXUDUDfFpOsPlYx8UdebY/NSvz7wimr+8X4ooaof+0ar/L69RLA/Uz1QsZeUwN53B3HiNDM3S8Qbi0kemKxjHl3GdB4oGjfkIQtobtMRJ07b6MR/Sg6x7AYo+/TaW7XH03BpPhSCdhdGkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mCKJE+sp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mCKJE+sp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0643C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753135793;
	bh=KhP0rvNlX/5o7Tf3cuLC7zrR0zesWUmk6WIpkA4VmLA=;
	h=To:Subject:From:Date:From;
	b=mCKJE+spctqvLFuWHfFvrlD51+uQ2j4gUrLJlWHw1kOzTs8N8lQgHr9T9OlCB7LGS
	 6OpFhUPJv3FmWmahL6eViapMAflRSGIccFKVbhUyDYFJ8U3QwoRiCwKD1uIDn0q7Eb
	 kGKF2+/g8fEXRi/zv1435Bvrhk9zSPHrHfz/Fvh2/VstVxDl740tx1E4LMv8QpF+O7
	 tbeYVVAFjc7wF3SBtWt+cLDq+Vf+mJlcbCdlyL4DjYXF0CdolLSZamJff1uKt7Avul
	 l2xSlNiPfCo8yplBRFHaPr4VjVP1KwDFXAZUpKqSI5j9+TcazfGbDSTC80eUIQ5Wqj
	 9DrTrMZPzsvCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91345C83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175313579358.2538.14593353559595816108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38b0f3f646deebfed856706540d92834b331767d7f6da1f925ecd598755d1161
Date: Mon, 21 Jul 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753135793
