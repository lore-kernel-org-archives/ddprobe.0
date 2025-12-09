Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E98230BF6
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 19:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765306974; cv=none; b=mo9gPw5hgdeejAOymr3aT4ph4315KUKlaXBeII1qrx6i4Ksje4ze8Ls73Ibjlt1jcHH2Pf5VJd8fwHgqlplFrgEkixCmgGyMm083tEZXDM6dWkMCGYusqjYF8PhWPGyEcQ/VkyiVd4Nu4q4gdsFdVUeV1MwJSwAaEMc9Wq1q5JE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765306974; c=relaxed/simple;
	bh=OI0u/1XYPEywXo7/IRk1/71Tinpo40KEpr86MLwlKr4=;
	h=To:Subject:From:Message-Id:Date; b=c/XX9sSH8DUllnzWd7Nkh5pGr47p2Sc9ma0+dMcN6u50Pd2ng6l09pFggvRo5uDpR5wyMGqY6uyc5c00b8CpgRnj1XuI240FSr2t8ewP1XIhz2p/eeBVDFH12zIkpwmHyROyo7ginTXdYAyQpaBEcKhSgIh219jNEbCPxOZnhNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r8onCvju; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r8onCvju"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AE2C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 19:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765306973;
	bh=OI0u/1XYPEywXo7/IRk1/71Tinpo40KEpr86MLwlKr4=;
	h=To:Subject:From:Date:From;
	b=r8onCvjuCvKtycqn9rimO9Mm0BIGwVAi3v9lPigS7p16irX+9YXZw1tQOsrV295xg
	 T4psP6CGNb8yOLARUxez3Y2tC+eJpuJP5uhgQa3LK+VyVnivqJ1is6ZazwN73sF/qH
	 3mPpPbEr5AQY+qGCVMVJtGC1KID3DPBRWTEZb0CCTSrg08n4EllO7W7HZhCu8ibYmA
	 FOm3i8FaytsGQmx7qTSCAeXiyr/99vPKlqmrY7CIQUhEvgh/EKJZlXQ+HoxU2SCrVx
	 sEwrtoTZjnHKXliwUEe6AUc4y19/l54ayK43KUc3YOokmS3KWTihVkKMtcZpXKY6ef
	 USWIwvxXUT8ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A35D3B98A
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 19:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176530697358.2257.4073294801181235106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9923e455b3c0f82f7e87664aa42984762f2bfbe74174440b117f812fbc3be28a
Date: Tue, 09 Dec 2025 19:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765306973
