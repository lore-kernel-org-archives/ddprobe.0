Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18FFE537F8
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752263994; cv=none; b=VmZIZfLmHjYaNzRjfqcMXv2OKmBMHZ4sd7eIVtQfskvFS6UZWmrpM2MaNp7ahYbiLXEQoPW+rhBk3FUBGazVqCH3b3ghIafZDBWyK0kMAPVk0mdJX+FsMtW3xMplQdYHYyNpzvetdSIqhY3Vf2qtCdlY438Gu2oNC82NDUymV/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752263994; c=relaxed/simple;
	bh=3zap7ZCLUOakN/ia0LNeYtbS0Let98jE+jgHaBYXvFU=;
	h=To:Subject:From:Message-Id:Date; b=bCWPwszy9PYrNKEbhQoJrE7yp4oLE4tS4gsDJrbbZPFnwLl7/u6vTUZMlKUism/Jw8ZYPPXRfRFP1h51VoLxU8TZp/WrTBPi3QydGedJ6NS8AA7Bw6pppJ1FGuOfhu0Aax3Pz0xe7Mp707ft93LX6q6BXnxvZZ8jnrRdM0mnOuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wq3VrIoy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wq3VrIoy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB40C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752263993;
	bh=3zap7ZCLUOakN/ia0LNeYtbS0Let98jE+jgHaBYXvFU=;
	h=To:Subject:From:Date:From;
	b=Wq3VrIoygW6G+pE3xuDIKa4TnLDQlV42GGEmIw8CJEOBW3Q1NbsqecToGf/SZ1cX3
	 U82QiU/qTEAP4/gAEl9MXi9bo7bMz/FmJ/uVY/QHVbqobG+XDCKeGwTBCSwMleBxHm
	 5ZOechDURZl1b56pRgUAbr70+pQ2uOLlJg8KNFkBZJulLxOGfMEKjCBT9f3nmMaJvg
	 SVd9SeZsyyNeXx9uBS8GAvvKhY3LJdGvb7twT5P4JCAeBSZmhUzemmABAlHzfwa5+W
	 G/8GNPWWV6RI8hNzK8DY65RD8yXdah6t+BGIAbm5lWU+BrAlnz4de3zJFY43jSDazM
	 F4efVOY+A9Esg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFA5C83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175226399358.32103.1367111685162413190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b664d7cb3ee7e48961df753e1b85b94ab8d8e3f6b526214bef74efcec0b9a38
Date: Fri, 11 Jul 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752263993
