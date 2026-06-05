Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5434C3CF051
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 12:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780663474; cv=none; b=bK47Ju4F+AwZ4U5y60V+asg/4c1veJGXLEO23hNxz70CQiez7l//oo0YAKgzx1FLBH5QXdi9EPp0IGwP3a2tSajmc88d2sHMDAgZ1kqo5+BjHzZfJAg36s8Lu4ScvEv5X6S98wxjq/DOWVco5Bjl5h16/uN+16hXmGYuoXLBQJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780663474; c=relaxed/simple;
	bh=Fs5C2NasPwgEWsks2WPoCf5O98ocCg+MeCbJk8Zeso8=;
	h=To:Subject:From:Message-Id:Date; b=s2chCXI3OloU9L7rjvbxMa3JoRVigeO6fa3pSCM7biUx3yjW4IglF9PW3j3LNlgH9/axQ4ql41cZP4ctghM0QrJJGJ1qVW+YA/FefNb2hOHSyftYAbUFLCac4gagRL9EO8GX9vPGtq+0ul0LtP9oAfFNl9cuF4/5adYK2EUAAvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pEhyo0S4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pEhyo0S4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1153C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 12:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780663473;
	bh=Fs5C2NasPwgEWsks2WPoCf5O98ocCg+MeCbJk8Zeso8=;
	h=To:Subject:From:Date:From;
	b=pEhyo0S49u3D1KKGvRZvvyHi9Uiw5r1chhBhKP8Elj4PMneEX/pk+hv240HYGVGe0
	 OHEAaAuwqDSCrqD4aRiOPdy/ff7jq/qi1IXPJgI9qY7xAqG4sIJrcYElI4aZfpB1pg
	 iMHBORtd7vriXTnRWGezcRVOShsdKRQckKrG4Ah9G2/YsV7al15zAzYdyYETgi5eoq
	 DCMUNvtLgJuH/VTuUahhjiAaj7YDdsRM6exNOWwpcfcrCOWh8oqj6e8Hw06lOSrcz1
	 U5XkL3LNZ/6ylhnmw3ILbosFdlA3Rv+rFA8xGfLOXTjslQ6VJUuLJsrPts+AgKohZV
	 GYB+s3zg+kf+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99D0CD6E79
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 12:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178066347368.6608.6049957105907146498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bb8b7f66adb54524532c76173f1aaddbf1b98185b87114c62d170b29548217a
Date: Fri, 05 Jun 2026 12:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780663473
