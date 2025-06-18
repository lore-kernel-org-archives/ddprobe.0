Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300A421CFF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750285194; cv=none; b=bu1kUdFrbR+Vaycr74pL03525kFJIjIHEIl5HHE2r2PE8OijtP1hgICzIfMBfMFTXiWiNfFsZ8tsrSYxTSGbBN8YpKvrluTO4ClL4UAPDOrcfrh5qgq3Ny7DfOfaN/NKBMd1oiz9MInLU4TJycgNMhtljRR3B7pchnwuUTq2I+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750285194; c=relaxed/simple;
	bh=AevTvPOoLeUbfhcfKGf+yg6KqjQSgJpjXQ4rZhlXx4Q=;
	h=To:Subject:From:Message-Id:Date; b=qzOqD4dU0Bkhcir4NU7CDZklKk9IUy8GPb1tAAtX9CKMA6wiTurR/WJzWd/pnbkgNSTEa87NbGkk8HTI0sWbDmjB06TTE7aVURkSXhxxjpb7Ai85banz33Yt1gnRoiyonm2n6emQZPM7UKvsuykHDe4vQ5KSYNbn/wDeUMvMOM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dl6GzRC5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dl6GzRC5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CA5C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750285193;
	bh=AevTvPOoLeUbfhcfKGf+yg6KqjQSgJpjXQ4rZhlXx4Q=;
	h=To:Subject:From:Date:From;
	b=dl6GzRC5CT3i8PJA43J3aT0ElRDTtqCUvBEwX+YGlpK5qy7YDHaeeffbU6d51zz2G
	 eoTujf69iSu1252sH/N3TUhwTJ7jjg2ivml4FancDOu5kkN/NakROQpEvHJApbADb7
	 4xRw27bVR6Th15/ZRFt8V8gKWqo6orj4PqT55+tYbIFbVfFaf7phAHHgdZojKhND9e
	 0vIhLVEaFBRh88R8j5j/GE24i4e3btpwJoRHt6DJJsxe6SPDVZwNEqJoqu3qAqGpFo
	 5NG6q3XFP53M5pJAm4kjXZd8IOUDb1mThgWDa/2pFaJ9SexsXb/ITa4+bhlXffrpPD
	 +qqGSTCWhMiow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ECDC71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175028519358.26874.13948658647170173081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c064b6fabff19db7e3cf02c77e37df8d720f7e97353a7baa9e1cdb4ad3560c4
Date: Wed, 18 Jun 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750285193
