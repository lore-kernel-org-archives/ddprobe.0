Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B68C221FCF
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 00:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763772114; cv=none; b=Fi54SKUZW00ixWVcgyRyQ5hEZLZAGG3m1sJHDtTiwNTDRO73XY9qzQQx6Ujfh1rD/ZXw23E5mu5ywufrBd+wOM3TILX6AySxYz1+OMoKZXu0csmWinYemdGVthWHgFXm0MM3yf2/Mn6Lb9fkylZMZNXMao5sCMet27RNCrorM9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763772114; c=relaxed/simple;
	bh=4H96AhCLAH5FIlr5XsjF3LzlNPLwcYG2KFgiFaduvqI=;
	h=To:Subject:From:Message-Id:Date; b=kfSP7256y/5CLMdpnHRZG539N41hF0GqTEslYJcJgnsY7H68b8zjx1+cYs8FMSzbmgPQ3hRzgww0IhnTTVRcgJ/riG3/CB/x6z78RVctNrgnSyYXm/alq9gPQpbIUP39UnkMe/4cysDJiMMIBpYXM8uqc4tHzQLGEOirf02l6K0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tzCy6xD3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tzCy6xD3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB664C4CEFB
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 00:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763772113;
	bh=4H96AhCLAH5FIlr5XsjF3LzlNPLwcYG2KFgiFaduvqI=;
	h=To:Subject:From:Date:From;
	b=tzCy6xD3M1I9azSxEjmPXl3A6qgLtB1ceup5uR2+RaTZfd1rBbSt6QHaiaq0z9/uH
	 jKVv577W/IKNSx5LAIux2+RTUvEwFc5tCNKB2oe/6RQPOYgJWddvUy9me0/UoLhxKT
	 +DNlOaNq2LPEvNeX25EmXnsFkFv/kfSSBKk3WMAFvPyrLB3Fy+4zd6F0Sa+1P3kVf2
	 n6foOtlt/kIE6ZrLPdEUmKodYFkGB1rvKJWLZg4tbYUPjUTkQg0JKfcfjpDlT66HuW
	 JeAFbGfJd+6HOgoXPBEpmFqtLstz+Ck8D0b8VEnXxOqc658YV8QRh3Az5xOHX79crZ
	 mXia+wD++1qqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9518FCFC515
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 00:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176377211358.14181.4306437495230865442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 277c8ada53a4f9dfa8bd1dbf8094518730c27b0da35be6c48f6e14d4435cb7bb
Date: Sat, 22 Nov 2025 00:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763772113
