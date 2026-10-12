Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34ACB38D3F2
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791805234; cv=none; b=XtF0ZlW8/aDLYIA5wTa6tGgfgamsipbhtnBlDwDyBr1VUA8CWWXFdAsBurdAIkMayobiBsdP+4G6KCOpwRdwI99dZ0JamRhREFI5fyLVhT51TDx6FbLmMznl33dMz5YU1tefPbBs4jKXCJLeODcnUKvRfaAaB90fZsoiR+Y2jlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791805234; c=relaxed/simple;
	bh=Umk0uKp7Ix6t22ibW8kzzlA4Hz78iizqgbC2OJYVVhc=;
	h=To:Subject:From:Message-Id:Date; b=GI5/zBhEftPBS086Q2jbLjgsFAA1TR71gOuq0wndwR/w7UV/+GFjmPeSVvlJ4cbBagNoEuT5MAWEi3vDjOCUe+Hc5XCuqUZRkeLybajGUXDMzXOOR4jr41OsU5LC8Jyy3qB+emj6ooHJ9V8eocTq7GDVQH6fg1m6Uc4S1OkTCv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eva9zcTU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eva9zcTU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF246C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791805233;
	bh=Umk0uKp7Ix6t22ibW8kzzlA4Hz78iizqgbC2OJYVVhc=;
	h=To:Subject:From:Date:From;
	b=eva9zcTUs/I5BvT2A3Sd5QmSM3KwmzaGMMXHQg3feoIhhzhEs3pTNH7ZwGeUMPrFo
	 q6f/k4cQGhLKSi92hvD4MYWAn3n71FgK+ggA3GrBT05Hoz6NgGvi/+tIWBPQC/I7Y6
	 WFK3VicV124h5oLGJYQ/RZ/KchdwatOoMqTiTlnIy04NScnp+4XhPollAyEsQUFnut
	 0/vCRbWH+omDrJ01yVRpx5b7CJqUWHC/xodno2uM5kPFS1IN5x/2QplSu2tf6Hjy/L
	 IkL9LftUyfofY6jt6UWW1xxhnvrbF3nf/wEUh4FjfgYVObFDGkB8QArxiN0+jGdiIU
	 GD2rM8G+EHPuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DF0CA9ED1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179180523368.19010.1842329628478576617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0b989c12f83491cd85ee98eff13f9b931c1a88737b00ba590e7b504ff08a735
Date: Mon, 12 Oct 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791805233
