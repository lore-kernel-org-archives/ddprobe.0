Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5684A4594E
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792284634; cv=none; b=n+oB/W685dW7IsepgI/L/ozda71zh4NqbVigfG+5bCZg8RvzhFTHmBvIYdPPVlYsHoJ67AcvZwiCrCL4QSz1xUTyP2k8fzFG5W3S4NwIL9W1t1vqZHWaWNzNwg81v6zapjZztGLagg6pJT3ozH8wczaHSGPDmRGreQPYZeBC2RE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792284634; c=relaxed/simple;
	bh=gbERbUb/vAC2g+av8jzJmql/ErCNU1iTgjgMVHgGsIg=;
	h=To:Subject:From:Message-Id:Date; b=lyzfCKLOlCNTAunjLHtzhlNoGaZUrOK5uLA0ahUoP2LHY1yQn3Qx8Is0MATs4JofRnBGcCMZyBoMtb6/ALuF4lJ9++eUn7X2EgPvp84Ov4VqyEV9TgiUiBRuMDMYkJaFoyh9x0Q0bqeL5CwdkpSWxvp0T85AFlg4XDxUjMjVJoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JH7adtJo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JH7adtJo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC30C2BCFF
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792284633;
	bh=gbERbUb/vAC2g+av8jzJmql/ErCNU1iTgjgMVHgGsIg=;
	h=To:Subject:From:Date:From;
	b=JH7adtJoOKHHU+og9Wop8Si4Rq+ptE/MwqHS47Q92DSnaRVA4xuZHX+Qu8paREf88
	 LiEKbme5NXTXiXBEQ7iA2r9JFju4nKFjqNfzNWXy47p/A8Fzrm+0DesBrXXSWmdO0J
	 ckSmH0bUM1X3XIdaReU5yLtGILrZb2edYwHpx4B+wL/oR8TSEwF9T5948yRoUpnEKb
	 KefIC6vkrDgcxKA46iUgqszBfWGmi6fhcTwop/mKAT3WvqLGNoI9m54nhsb0jDjnQm
	 qgdz8HpKvhPVLx0eZK5OpOWoJzj9iS1R4Ru8vamkhoVE1fQiYTRsn7Za27NVaN3GEz
	 FXwi74+U+XjcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA25BCCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179228463372.20051.15634890582962435457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 006f482e292edd814c79e3154c40428db22872b3f700ccffec473fc4eb63bc05
Date: Sun, 18 Oct 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792284633
