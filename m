Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2988C1A8F84
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757158794; cv=none; b=OEevy/rIcjhm73Zhhta7sKIKTYakUh2SuJgrQ+DxM6cvdr04yJXWOXAa6CHdPWQdtgWj/YFc3L6rbT+/nIFPRVhZAwD8y0VGxDCR27gLJXe2LLvgn1k8SWju1HQK3XFep6xfoRvL0WC/c4sZBBBWERqGTvVY6WnDGyUWLYc7+s8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757158794; c=relaxed/simple;
	bh=4b5sxizlQ9V47Mi4Kxyxb7ir3+lTEuSM9PlsbQAF+cI=;
	h=To:Subject:From:Message-Id:Date; b=lmhSkm3y6MUVgx2Zwc2jdzpKn+YCtIbgtERucbH4e2dNOi55qmAqlTA46xMxpzo4kutIEMyqxjSSs7gFVaYWPVU3CBDXzb1j9kO68AmJJAkRYclxr4zYONpqM9Y9fLuqsvBv3K4MLjVWqB2hbDNhhBUyJbw8iWdhRhpiTxkwrww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rcKLDOaf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rcKLDOaf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A778FC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757158793;
	bh=4b5sxizlQ9V47Mi4Kxyxb7ir3+lTEuSM9PlsbQAF+cI=;
	h=To:Subject:From:Date:From;
	b=rcKLDOafn018ZrU9xQ9F1spqP8I1rL5py8hNQkPh8ZVpNxUm8IB3ezGrZiNoVyjIv
	 2D1ZCmLrod+aW2Ir1hgY1AGgr3IQ3OCHqXZyuWJlXcFTvcsqo22EqWl1rmzwvNOI17
	 2MS9E7GGNTKagGubMuK8uVSEAQ8FAoadnnMHRsksyltyYLCuCXMZR0yvMXZve0EYhJ
	 ajvjlT27j0iNCSwmuoi1oY2R3pKe2uDM+/LwoqDK9COzPkSFrtKhc6rfWrjnf3u4sp
	 o/PyKYbZ2/aW973D4N1WW0CVVEKdxgaMICtOnCMXp1oS0tGutexeB2otrajJmdEv4m
	 WcKPeYadrCf4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956DBCA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175715879358.8919.8700377828773978493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b7c901350d3d5d0299d819d217a491808035512bcac7f8d90f53371923e7e51
Date: Sat, 06 Sep 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757158793
