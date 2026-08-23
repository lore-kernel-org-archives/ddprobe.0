Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 584B249365A
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787470234; cv=none; b=PmIczKCqi2inF1Z0p1foktTNnr2TXAfemYRKLxv8S2UMUCneRYfdg4/Va2J3Uo39Y/OBAmmN1wV3wtDLcPx7PWn1tXcEHF6M3NXm6it4fzFEm3yfVHnUPFZVY0y8U+AueFI4OO4xMslGiPpQYCN+961QPqaXfhiQK+IhySYgCYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787470234; c=relaxed/simple;
	bh=YtwQhRgHSHkYfVbu5sRDolpR3JWrikARKhOKdaMh51I=;
	h=To:Subject:From:Message-Id:Date; b=VALMELYLXARTDAG7nP5AgFW9GgZFi5qC1LacOwc2QI5lnB1B66h+AEWuBQ5+uxBPJMpIzx9ktuEk2Fn1LhHagNUSpZF1rbYotWTv7FkntzY9npFsH3u2348ET82Rm2Popt5Q3cQHyLqT8USh0uqI1SjPZbKECGg1ByKuCpT72rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LG0DcbW/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LG0DcbW/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E57C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787470233;
	bh=YtwQhRgHSHkYfVbu5sRDolpR3JWrikARKhOKdaMh51I=;
	h=To:Subject:From:Date:From;
	b=LG0DcbW/69IQf9VGQKCdAhcu97qB4m6nY+4lPDLGQFotxK9pA4sjD8LegbfXqvwav
	 tIXI2S7adwUmWM6y+ZSfSi0+W47C1tnHBfN7hZD4Nw3Ri+Ln9IsIraaTYZUVkN6b+z
	 qjS4YocvPIEDqaLSKdKpGWx7yxK/MwyTq7+2hgP1OtYCjNTctMlsPzLGdXdi9vqk0w
	 dAHbrxZpQ98+BHKueClWXYkSgFUiKe846dhCfzWFeZw4ncJRXdMF50A92M7u9cd8uH
	 pdETnHWutbz2hMzvpVc8HitQsx3JnNELPlzgFV2aHgF5pcEWFDCpQPNKyIEufmJeAU
	 Al/COzy53LHRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC96C5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178747023369.31145.2621646731337030838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6ffb75f690ee222fbf5bea857ffdf539a5a19e52e03c87aeff705a23b714314
Date: Sun, 23 Aug 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787470233
