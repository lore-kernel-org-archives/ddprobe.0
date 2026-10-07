Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A9CB47C10B
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791369034; cv=none; b=GD67dlDyvo76wOeRiX+v/fm0agBkZ6jgl1aZjBugM30EmW0UU1WxSZlYy+LFfEpoZusqDG/tf4k8msFtlSHmCwwoG5h8aigpymN+GeYO4v4qt/mR58GehS2PLSo1WxE9wrUbyQT7HHdMj5ZdIGJlo4qoHYRUPk/pe+94044p7eU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791369034; c=relaxed/simple;
	bh=BoFWxaHFRJJjjPpFYybkkS65bj09RvMWQOF2i372IgM=;
	h=To:Subject:From:Message-Id:Date; b=su7OmpaxjsY3zutc0Wyy28pT/uxHHY3vt9bLSKFzKJ3CE5C0d+fGQr1R20JEOnBOZTXYsw0S1jSqLYYEtH0ZCBetnX7aMjQffblqyPpu1ZGPYaEL6eVRwqNkyTfHydAI317snPHauZVZWi7K7A1HZdjIrym+vFiCyYogf+JzIxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tukiA1iR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tukiA1iR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2660C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791369033;
	bh=BoFWxaHFRJJjjPpFYybkkS65bj09RvMWQOF2i372IgM=;
	h=To:Subject:From:Date:From;
	b=tukiA1iRQuADUw4NVTMqEKBuQb2uHc3EdZ6jSC+uNfdvCNwaKHSeeHETFT0oUTkP1
	 1JKWuH6R53TPht9ksv4mzmg9fVQdlkPDMFcwWi+FR83535EGm8DbqXjgpFH4BK3Msn
	 w4c/aPEMjVq9WdgBv4UMUpRvXS7s4HxOUI0l0B5gfWHBtlv4KC984DS/u5ieuUW3t2
	 MwbMIIxwlF8VlmGR2YfWl/R3YPW2CL7KJrDZa2pB3kCQbpRNEpqII5FI1RkyqXFlX7
	 WnU3YOjQZLhAvPQfm5dvc6exmfyUpvHgmyF4Sw1M/4246qbElsIVnYtmPpiyviwdJk
	 DM5Mmx5tdpFZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA6FCA5FF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179136903369.30344.3393830339983872657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9201af63bd603d4f0fa3bd29662a971c5987839f011bf3332fdafa60e0a6559
Date: Wed, 07 Oct 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791369033
