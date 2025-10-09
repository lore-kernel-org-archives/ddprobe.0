Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268DC26E146
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760043594; cv=none; b=Ci47mzJLA6jb7HcZYctGNdKWnW5znVcvyNVkeHPa0c900xPARRnexbWGgUq0z6FxRF7oOEKzCU/ojkPyM+Xv4TqVyYKQveaUAgiK8AW9IqCYYTQd/8KND3H+7HRr1ImdqDZmx6XvwDeljFYGbGWAJdUtpuREu6BrgA2TXJkL8Yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760043594; c=relaxed/simple;
	bh=Ednq5I6GiR2zZcnoJHNhc8AvYYAsb0Nuoti/EffBXWc=;
	h=To:Subject:From:Message-Id:Date; b=XTyG8sEilwh9NUpzhQjKGdfuk+jkzL04V1K10DL2/0UdB99NuHxNwbUIJaNSHpFd/bHSXcqMGxUETH6DQyV2Ot6NVS2fxIdVdm4Iidh6kk84bt9C9QBJ27tymwEipA5lmLWrJf4LYfReOMU1xYaaFTa3nBpmzhZlLdsswyzyOBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nIRHwE1W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nIRHwE1W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7377C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760043593;
	bh=Ednq5I6GiR2zZcnoJHNhc8AvYYAsb0Nuoti/EffBXWc=;
	h=To:Subject:From:Date:From;
	b=nIRHwE1W1iKHpY3MaqJ29N6FGCTzq5N4lHxuV7LJLSKwg3J88PLBLYaVClzGwjAAZ
	 pjj5giy7OHrJod7ul3bKjApAh5J45ZrLBPSfUmiUpwvUadS2mS7PjJ9OtUVNLBkFap
	 1aOnRbugNfic9kVwyltHD/7RLR42sAaC5YErv6imgHF6apQlIIIxDO46SVQiK4+RlU
	 /hw1fbvW8sBwA+B5BUTRm7fr66L1aW31oilPSGyPBmT3PA5EHiEmEETBWviyv1+WDw
	 SEkdWzTVA4mS0z3xTq5EJXEUD7E6GanMmjzkh42i1PmFZklV1Pqpqw9FH+otmMzjdH
	 1U4q4snXXP1Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934C6CCD183
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176004359359.16550.3509437226680021115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af1509676935232082fd32d40afc1678077b24a1a040207cef59819343dcabff
Date: Thu, 09 Oct 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760043593
