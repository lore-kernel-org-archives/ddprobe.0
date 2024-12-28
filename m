Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E077082D
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735421754; cv=none; b=IX8DWyAnLY9/0ZeaJnslXgLI/cwqQPNiY/5N5303yDNL2hsFHjigIyfGZTy3/Wqs5lORtc/qWiItGckbZURPy7oRmArHv3U87wlJKSGvhfxDh85NIdgvQUlCXEd0uMZvIW3/1OYTn/pMV6VLUUiE5Pw92fwIEUoXtxnHMhnWYN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735421754; c=relaxed/simple;
	bh=oEpfF1wGpc1pmljRiFXNKMQYnEwwNJyM1Uh2ctPyjL4=;
	h=To:Subject:From:Message-Id:Date; b=Gl+oNbbXEiM5PCb7LPunKH3XYPODPGJoTz66X9HUFUcdXHxdfBPZH+FBRkWRnbPKMnB/K9ZZaGS9V4qYk0YhMPkzl5AKC8lMp0G3kbZty0yYzJHMVSRVht0FYDo2MOkN/KOyv1SkBBRGvbRTwKCaEBU5j6R6+k2t4uOBUY0wOYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jNPrhWJ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jNPrhWJ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4BE6C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735421753;
	bh=oEpfF1wGpc1pmljRiFXNKMQYnEwwNJyM1Uh2ctPyjL4=;
	h=To:Subject:From:Date:From;
	b=jNPrhWJ1ssrXZlyqzx+U7TYkHazUl/rRXWbaK5EIuFCa+hjGG5ZlLWwooMyoGXk21
	 x1MyHrG0NRzrx8p8MSu7e9ytNedrNcvmKbndi+nZxsV6be1XQQAEoOU1umk6K6lbmA
	 Z8HIyYwy8QPed/GZRONvqeYSGvSf1oe3bcP5m9AWbNzWjhOWoGE9MkhXjBLVaNj5fF
	 y24rQ2oGUzpUdGzLekDaEhv/2PoM/04aT2jdMauzPO1i+WHAjV8mSg5D/3eFTSowIm
	 rTol2aKX/eHzF/gcjruxwwsVPBWeKrAzyKj8b2vk/cVhQVrwbBUwFrp5JHD8QiKkdL
	 Md9WgXgqW9TkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98038E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173542175360.16289.5533473326038996360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37a32ac86ea770d25819a93c1de4c676890a145c3ef35fc6aebcf0751253d105
Date: Sat, 28 Dec 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735421753
