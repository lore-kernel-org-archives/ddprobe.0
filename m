Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287B8139D0A
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751686194; cv=none; b=nLSDcNNRgQC3cRo2JveHghDuGHm4Zq9nSQQxr8RH+edskUclgFOgZiYQurVuETo/QWqeaI685ytJGkXjnL5ptbUM6AP+ZkdGplf0jc5TK5DAuYGceKk9FP38xNM7VilbFpgWa1rvK4pSgAZ8Sc8ic6da4otYn+y2wSObhWc4ZF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751686194; c=relaxed/simple;
	bh=Cq5iqsvdTQhCx+mX2fIGP4GGFAi2ELhvfvtUQMwcBfo=;
	h=To:Subject:From:Message-Id:Date; b=G6BQaKFJOz/fah2tmx6JQHDS9Xlw4vN/WmTfHcaq3ceZSJ5YHXVBG85xa8MrEZX/VWgqKqcln4P8PKr3XcCGhidsoDkxluoEdfZizjQHiuOf9cIZryp2AoFn7VSY9bKYe52j68NbQ6AimLimzVP/gX0impbnJXyyEA3BOGdHgbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ja+GHDLx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ja+GHDLx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A772FC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751686193;
	bh=Cq5iqsvdTQhCx+mX2fIGP4GGFAi2ELhvfvtUQMwcBfo=;
	h=To:Subject:From:Date:From;
	b=Ja+GHDLxZ0cz8m8m6hiYpuuKvmru0xbFbf0SFGBxBdvXnqLIDYgXt2uZqvmS/csl/
	 0J4KWUfrWU66E3aoRWgBAtZaziWurqPpCxaqH4JQGCcf3O71Is7jAYQ3aARBxL+iu2
	 7kU/2td2GdqQF3qXA5Caj6g/yBv7LMRsabT7zKQI88ddH0WODvFXdYUnFma8S1/Hkc
	 D/Sap9XsBv/xBueVPouB/pwDe6+Q3EF6wJvXwunpIYSbwapaiNKfFXLZayVY0sR/Kl
	 BBFQMDzdh3+hedl2mR/CTQqgE/Y85HGoIMIaESYyu2dcLYMF3FeW0lXVT+xz81icKe
	 kP4VL/EbNVlwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EA1C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175168619357.18060.14478148844459595504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05ad6eac3376fa95c5cbde3e801d5806ed7bcf18459b701f31b2837125c70719
Date: Sat, 05 Jul 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751686193
