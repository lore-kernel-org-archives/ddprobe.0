Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D20E242D7B
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756646994; cv=none; b=uRRd1WLJBvhtDGF7A5lQ/k72DkBKJ5XDlBxFUWgLBTruoGTVDmDejXKLYao4t+1YFavSpOnr/RrTbX7M0RzsNzbe3301RqJhhFO3f038xAbKPQKk9WSb9FChFG9vx93fWy5TTu/eMx1XatEmgQxckH+Ze/fGzi9axdI8s2V26Rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756646994; c=relaxed/simple;
	bh=kYb7N0siOR+WGnaHiN+Vo53cGQaBenaS+eHYdwo1xqg=;
	h=To:Subject:From:Message-Id:Date; b=u3P81tN14tf3tt6Tfz23lQGjLQEfFE5ITrf3ry6qmqe3FCNVej0hE5TC+G4ntceM8a4CjJgx8emyNYfncDqif7ECIJGxX0Ekuk4yLCQmY7HIvE0v014iNaCMeoDuytTNmTySLzbw5b1qQr7EDEbsLu8SszGdIeasv1uCUI+xyiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T8eqKGlQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T8eqKGlQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB99C4CEF4
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756646993;
	bh=kYb7N0siOR+WGnaHiN+Vo53cGQaBenaS+eHYdwo1xqg=;
	h=To:Subject:From:Date:From;
	b=T8eqKGlQsmyPjkrN8DPif/koqoBDr+Cc1izW2IVgH5xpiH3dgH9qYV8ngNKYcftqS
	 iolG84FF6IE1m+H+cdpt8geLPMWE+6Ld11zsRmEYmO9Q6vy5ZCsDhaPL2XtqcLhlsJ
	 yoWGva8xnZAagVeqQyepoiLfOBDFUOSYnFkUJDGb7QRushD8w9ihMMFhkbY/eM7hNM
	 hlPdzB7DNzr+q/oB0A6UGFChEDZbuf4vQ/9USTXT4lrMpy8Kn0UEqc5L6WMzbrvnEW
	 yAeSn3PMh3SsathA/fEkDKLc0CAs9bbeF6RYrwe8ZxY46F2uCHWj6Esp4pXN4N14Qu
	 gxsIkJCp6kTJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC2CCA0FE8
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175664699357.7955.13528860693393841767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10bc62e8cb2436badad27aef7c941bf90371161e9d96c8d8e4372e7421c15043
Date: Sun, 31 Aug 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756646993
