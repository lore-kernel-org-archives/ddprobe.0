Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C85B3815FA
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785991234; cv=none; b=JRbVYEiXFVEGfEzqgDBJKMejUSqaTWVgyh4rKcrj1ECN4zT1IvbV3gIxIpyFNgMYAr90hgkNJhhFt4lfBVOeFigo8NKaM14TiSovV+cHBVaN+1rdbxcrOAXiLl1TKmpaTSwVcmwtA0QRcqht5JF7XkfuH9BzMIYVn8NBzFuWC7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785991234; c=relaxed/simple;
	bh=1g0oYqUbZLVrTygMy9NHkPidIM8VBgMdUtdwgiOCVy8=;
	h=To:Subject:From:Message-Id:Date; b=qwsQUjYYzL5LchK+k78rGtqa+mp725Xc3AnKA1JwmIP9o44b9UZ6TEVuHp1i87tD99ZMgLyaVqd4RcYP53Dvpyh5rYRQX4gSKUuZTN/5lC6WJiLztMUM3KIDK73WnOworUcyD9Dw5Xfhel8SPpCYHvXt65fy2hScIYjDAiUM8Xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n7fedWDm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n7fedWDm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBABCC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785991233;
	bh=1g0oYqUbZLVrTygMy9NHkPidIM8VBgMdUtdwgiOCVy8=;
	h=To:Subject:From:Date:From;
	b=n7fedWDm+gUxR1o+P9o4XsWdWJVZFPPqkdikHAbHUPPr3KCe4+9cu8bCht4cjdOnD
	 K27EVegrrZySPFb1mHk2vR3qY72ydcuTQcAIZBqC0ltcZlQWqMINuMrtWOC9NaLeK8
	 tIBEy0Tr8RhYTiVMktrTFJkpLvbPIGsVRQtuZRd2ys62k2+BASlm2Z8f4YivQXChp9
	 k79oiGEvuk6myHkxjencPx6dBocLAYdfgfTI3NX5A4//GbTJ0aRLnl+xktq27NK0sE
	 nuRXctbOFP9gR5zz2uX0M8paxNS/rH+3bsK1HQEi7ASqgmYrtPz9q3Ndl4ten0Op/I
	 AfxKDbSBoEwhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6A4C55ABA
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178599123368.29296.505063654876205549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4d5ab3fb84f2f5a81ed25bdc24da12eb700f0e5783183eb14cab231e5740fb6
Date: Thu, 06 Aug 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785991233
