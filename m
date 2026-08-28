Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E8623515FC
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787935834; cv=none; b=u1iY67qBgq8T5iTJ5ov/Ah9tgwZy1zxV+N67j3IdSWjlNKiXa8v0N9Wxo1ekek1rtZcksUCZ4sTanp1zepP/bNxnF35i3rbyvc+nvPAcJeKu8+KC8GkWl51vE1YlE45zJC2ngLUA1OF92t7ufuhB09qoVJy1VRZZffRvxv9VDBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787935834; c=relaxed/simple;
	bh=8UNt9CDVjqdmeh+uZnJzZepO4eiZWwhmVvz99511HHU=;
	h=To:Subject:From:Message-Id:Date; b=c6I9PISj3Qq2IbbMan7f+xIzTTro8kuc+FG/RdOUXXytWvWwngNFYmzn0DrqoB1pV8l9zti4MoSMiC8TkbyZEy/jSOPMIzFlcJPy3SosP5O8/e4hYr+zV7haRFhl5wmV1N6z3PBYDPujdh9NPbd026T3ZNfmwfTUPPcKwdBLcAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0T/8Rle; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0T/8Rle"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3FD0C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787935833;
	bh=8UNt9CDVjqdmeh+uZnJzZepO4eiZWwhmVvz99511HHU=;
	h=To:Subject:From:Date:From;
	b=e0T/8RleKSz5yJ2NqQQaF2QNJIOZZAzLvM9UEfYM1q2YWXA5w891ufSIqsmHFebSs
	 DaXISdsGw2iuq3mjN6PtMcI5P8vKt+C/wLQC3n9UZ28T7Lk8iCp4N86LCMmNYqcBKf
	 pf3excBOkiryaehZ1vBw/e56XH9EFVj/jcP/0H+cDHZhdoYtCk0QcxHh/1s2c2s5Ib
	 iIOv4SO/nKr8Rf3SuvFwRYOr0oIGj3m1nMPotQLPKjeyDMBSOT2aI+XRXWXBtpN80x
	 +D2IKsoiEM11oG485gcuur3e2TX32uQ1cRntMu01HOXA1gzwin28on7rBRhZgF/mbL
	 bhBD9kJOCA+mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3D5C61DCB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178793583369.25708.3486166073432603358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28d9d2ce8ba3b468add80474d56bc800ae3050f93cd0d3785c8541d1621a8019
Date: Fri, 28 Aug 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787935833
