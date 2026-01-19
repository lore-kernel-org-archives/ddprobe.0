Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1755A328B4B
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768826034; cv=none; b=NkvX1YdyuvUEXLtgwKNrDZG0OSykGqJM7FG3930dVWnbmVemM6Qrw9lFlIq0jG4X/hmvMZ4K+GfLZqv3cdW1KIvqomCZKF/n3UAgf23m4cSNJCMZTFfvV1+ZgKPiLBOpsQo5AWkmYJFtXuAhHSL43Y27TyueA60XaO6/PfTi/8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768826034; c=relaxed/simple;
	bh=YMuOR0Er27RL9mbT+XNxry0eF6/IVAl8QwvV0a3G74Q=;
	h=To:Subject:From:Message-Id:Date; b=SFvk9qpE+27HAlKuQTeGJ+sO+PwYQJewHKUfWlV4DagHlzoBx3h6Mqbef4ADhUOzxi2/QrFOeixFF2I32+4WR3093YrcvOFcLc+fHu/j/YA+FjECsCd+Hz747ngRQ2Sf19EMBMhSYZvjcSMzZO5k7Shv04Vm7rhYmCUQucUJVus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RADvXloI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RADvXloI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAD1C19423
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768826033;
	bh=YMuOR0Er27RL9mbT+XNxry0eF6/IVAl8QwvV0a3G74Q=;
	h=To:Subject:From:Date:From;
	b=RADvXloIyMSASFILYfwVx1xef4K7uSR9yODWGOcqeE1azNTL6ffUdhzjNmr1TSXfu
	 9QiMghGqAt3liu81pAtAROHsz3w227g3ZQJp0nNv8jmqgtKVSMs8RbtdstLzrBv8c6
	 7+aONnfxpxWY92bVBbyNALloS1gw+2PT8XQB/zoeXeH6qlV6zmHRRAZD9bndZ9bePs
	 IXgSJ9Yz9dOaQr9XZ1sU32vb49NqY6mD/4eB9OB8+PGOAGQNeMonydBZe3pG59penV
	 zq3j54007rPzC8CGHJukVsg0L0cR9bu8P3Styv4HWkikXEU2ZsGBb/yDkQDGZxGduz
	 c7KmOOxsFUFxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90645CCF2EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176882603358.30764.16980401418812583348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b95cf581dbd1cb3e45c4833e1b7b7e5321ef13a427bd6520b89e4cf655a87b67
Date: Mon, 19 Jan 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768826033
