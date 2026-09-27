Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAF4D57C9F
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790472634; cv=none; b=HrNdn6Fm57Zj6wc06GojiCDlbcGnZeOngmeWpTdWb2RPPtBdDqxmrGvLmcDXghWXwFhN+VdO23Q0GMo1ZLQZPMCa9Eikdbuvxwd2YFNpyb8ANValWJOyTqEeC476KQsCQvymQD8eO32XRxlwEZwnGHhcbd5U9aSNT3DjitiVSao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790472634; c=relaxed/simple;
	bh=qo6lqRSGD8lhAUxPM+kc+2lPcdH3PxNGWpAGBR9UsUA=;
	h=To:Subject:From:Message-Id:Date; b=LlL4Z1azKpw4lmt+gZHZ1gu7NzNzNkxoi0j8StkAv0yv/sMEYmL2OQ8kbbBUOvj0McD4RBmGfagwWll47P4V09WMgGNuW6XFQJ9LkPInuyCW2AVQle6PcN6elr3AgExs60CcLqXpWhLwAIf7mOKo89ezLVoUOaoyZ3ku2cJwV58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=scRCW8/P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="scRCW8/P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8600C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790472633;
	bh=qo6lqRSGD8lhAUxPM+kc+2lPcdH3PxNGWpAGBR9UsUA=;
	h=To:Subject:From:Date:From;
	b=scRCW8/P9sCGFY4Ps4e2euW0+toWOouq6YEHfTnC4dK98SvJMVA54Nf/nIb72UZ7w
	 IGCMZavZYbyCwkQKkPU/8TdFBxaCL3Qm9bkVeBkNbVgC5EKynn3KMukosMLeS8rc4V
	 /ybSOCajrbwBGMVgLqeNt2YA/cYx2X3zcbw9M3njeo3wxfMijePlqi/XNCdB7ehL1G
	 o7B15/sJPT6D5snipGHaMGOCDPvZbmQxcRC6rtAru1QgF3TnG5bB77oM2Lar4O4hW8
	 gry16pFGAjg3N2hzUdb+ilXjsiL0fdsRoAtzDwcRS/G3fQO+c8QBQ2120NVLP4Z8nW
	 7TJwE18BBn5CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC27C9832A
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179047263368.23208.12774525915802418391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f943416b9d6efec154de6e7981db9a64ae6426012380b72806555488b068af0a
Date: Sun, 27 Sep 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790472633
