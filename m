Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307871DA53
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732890354; cv=none; b=c0PWsL/vxX412BPSmz7fziKi4qa7C2AUlcM43VUpGaB1K2HlXqUddtjF5bLnG+poulHGU4E/+Tn1cffayJtT43ZbYY4biRU5pAcL16Hq9E1NNiweXoinLH6v+vER6Gl/8pskALWDAYq69g5dlArX0iGPSIv6UIV/Y70rS3GAedI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732890354; c=relaxed/simple;
	bh=RGZb4s7qwNAauy0SbIgDrTF+pG8SQc+6aMx0JVam50U=;
	h=To:Subject:From:Message-Id:Date; b=qvc7mmUCFM4CBER3v7tQyukwwvmAvbka1U13ifcdUgZYc1Oq7abOiMUpRythXBfszFqJAl+Ghf7hI0uoi1ArRSVda3bB9xTKimOgzWZh/okzzSiYoti1y5XiZSNZVVKm24GIj57SThExFjB/IQdKVCZ0KHziZsQHea/aEuCFrFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UlEGlUpO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UlEGlUpO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C83C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732890353;
	bh=RGZb4s7qwNAauy0SbIgDrTF+pG8SQc+6aMx0JVam50U=;
	h=To:Subject:From:Date:From;
	b=UlEGlUpOuWZ95+maTki8buIYApavlt4bRzsc7WuevYXGge8sKDTR9U7WEG48E44Kf
	 giNCYINUDvjpL4fZcGIQ1V2JnT30JK78CUewXvKGENLn8miGNAACMsuMO5UQ6Cv3i2
	 SQxpxG+78fRxMqZ8eWuoAEOyhnUgjk1cWe14dUabovoxhG18v52O27G3QH/UN46tb7
	 2y2l6GH3tWCDbHguZCMuLCHr97Bz0Lij+e3+WA4uL+6eG6jbeUxCcstQFNofTFEWad
	 n7JwY3JXzC/L4M5E4S50qPUHnyyHRQmAKB4+BCXJoYyHiUOpS0R45qf0ppaWE2Q7wc
	 FY5/DKIgy+fzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9733BD6EC13
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173289035360.22494.13906488858274765109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fbb058df4996e6d692865e70ad84d2ec731da36c026d7f1fea4e1128e5af2d5
Date: Fri, 29 Nov 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732890353
