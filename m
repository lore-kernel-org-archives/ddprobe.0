Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D696B9475
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 00:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777507653; cv=none; b=X1v/cj7L/ougZLuc9bTcXD7YOU6GFNSOsaDPvMzI40wW3x+7pNYhlxT22v3C773A+U4eTNJ4uZrxjhw5arNpSXlI72LpEkvBhW4WshG2M1/sCiWySNMKj89ZfALTaK//w0tu18m6sUSKhsMRg5orW4yLmyUCFNjKyKWStH/LVl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777507653; c=relaxed/simple;
	bh=rTYqMZ2kGCrjbEwUR9Q6m/8EAfKy0C9+9iKJS9VWtTU=;
	h=To:Subject:From:Message-Id:Date; b=pTDpUpGHLPZv1rmVVVvvZZBClHgdAmxQcro0M7UlVfdHr1+K2onDYrXWWWug1voDVLGyRvW/5AsHcYQK74mDTLIY2B7u5JD91sF3ets+ZxWdBXetmkJ46CmWEOdisk85zhg4DcBAv9/vO+MFFxf60VG5c53Bak1YqX2DOk3DpbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IKuPPbaw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IKuPPbaw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B938DC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 00:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777507653;
	bh=rTYqMZ2kGCrjbEwUR9Q6m/8EAfKy0C9+9iKJS9VWtTU=;
	h=To:Subject:From:Date:From;
	b=IKuPPbawaSC3BarmL331/r38jaVFMzKwuM6kobhDA/l0YdhdzE+eCJ8cU4mNpR5eW
	 tsHH7aI+Euvj0MHiCQ311d33YWmVUNjr+G0Mfj2570llTiRR2wE2RAQZG32ILbgJiO
	 CPlbqskaNK+1qa9E3qBYUoPzjMvXb3a5C9E18EdoDtZmoIs/Mp5o9Fw3c4wOMdd8Nf
	 RtZnq/mHhdrc4WP+q0vMXY0NnC89J4yoRr4aZyqxqQ//Vkv6WI3JeAfDH+eS4hZxGd
	 btM6GNWVYY9FPLpXhqe8dtq8RFAM7tFPu3GIsJVwBHcLHIT2LBGzjVuVg7ArZTxG4w
	 hDfdDDY5mvHlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BFAFF887E
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 00:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177750765368.22748.11462801693905875067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8fda460f850efd2de158638b8a24c158a78d27fdfe300f3e578ce51e7648a5c
Date: Thu, 30 Apr 2026 00:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777507653
