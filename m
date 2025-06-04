Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45244239E76
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749010194; cv=none; b=XdhwCa27JinhjzR5mEuITKBoWRBO9hy5FMYHvKzxTewPJ1gdV4cJALVwJzt278a8lG1acZJwbuAA0YNsKz2Nm59qjgCDtZyI+jlXNpbllSBFu+1syxo9pG0tiejA2KbmqNigdrd3MZIGEPw9N9LVHcYx7ohzDqTbVroONDjspmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749010194; c=relaxed/simple;
	bh=m+iWCpGP8/rEZbtXrfyMUXm+FaPrOwMfbYMMhdybeDc=;
	h=To:Subject:From:Message-Id:Date; b=oTL5Bo4q8xG87R3dBaKXOylwfaMFkLBbv6hUk0W8zgXmNXRisFzGWtpteE8prDRoELhpeaw/mveUMSiYprCqG8/KQ5EGn3WVtLplC2Z8qOE1itUQtnZgWrNRQp+lf6lYeFsb5qJACfAHZ3BDOkUM512yJs9epldv0FgmlX+uJPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T4Y58CvE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T4Y58CvE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB045C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749010193;
	bh=m+iWCpGP8/rEZbtXrfyMUXm+FaPrOwMfbYMMhdybeDc=;
	h=To:Subject:From:Date:From;
	b=T4Y58CvERBG5EuQX5tYUluhsENKkObF0oXKvelkMDZWSdix0P8uNkrxYR9WwuueZ9
	 nZzPzd/XxISWJ9RV4m6OgRwwZNdYdwWWriQ4ezIyi2i1LYIJRh/AVmtR79EqIQ2it/
	 VScQekwyoM/+00kLqy6GhQhgEyPtNEd1bMXjZEHs8s+LVhEh54O4tBGNp/EP5pPQgi
	 E1NBZLhpYofCUP+ql/W94Vy1mAkk4xsbZsITGRDQurioepiPKSjn8tiuAOv9iSa1xJ
	 pFLu3+hf5Cb+vVCMyUwGdIpQ4qDDz7Z2q7GIoWWmVMkWNJHw/KGzF3wJHM65s4hXdi
	 R+a0H27A0fD7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3B7BC5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174901019365.25891.11120928644229762134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10b7c474534a5b07285506b34fac23e4ebf20d50f21c6530833903b6743b99bd
Date: Wed, 04 Jun 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749010193
