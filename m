Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 403CF4582EA
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786698634; cv=none; b=kmI9txhBxqLlQjvyq4RY4hmigYdM7GriFqkhfS45e0r66GChFouUA51KOnk3urWEBOoG3RWRP/ATmu+vM7ukEKM0YUbyWPG6rkQbLnJ5NYOFPAgzOn/DXcXZrQKTSsQMingSu8bUDYc590b483VWv2elctG89ccfzozrZ2ZeWas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786698634; c=relaxed/simple;
	bh=tIT442xKkbhM3OH4L9i0MtCX/tyWFaq5BcTIPC1vLfA=;
	h=To:Subject:From:Message-Id:Date; b=UVAnEa0QR18lQsnXE9xTG8+fVAyhQ7R3WOWQIjbVtfVgUIHsVUiGfPZebjX0u96bJNsN+ujNEcDZLc7bZBP3ZB/kHFumIiHxCE7pdPKjBDAngHWQwogcg5kz5ajtVgjPtJ8l0Yvgxp5A0FhxVPIw7Qg+RIlvtL7nw3SQMAz5Zc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+oJZjJK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+oJZjJK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E045DC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786698633;
	bh=tIT442xKkbhM3OH4L9i0MtCX/tyWFaq5BcTIPC1vLfA=;
	h=To:Subject:From:Date:From;
	b=U+oJZjJKTA715SikxD8+LBJfp3BzAKj/ifVxElWyoc0ENXHZv6A3bYiEyjAM3kE2J
	 XsorsV9qKBwaxyAr/0gg50DxuurYdDzoY+Uxi2qYxcaC+VCKiky/TwJP2a4yM+s1u0
	 bQh3RV6fljJLUaR9wSizlVK3CGPm5T0iJCUeBqoILUcANrsgHKznf8CUcB1Rm8bonr
	 lBuFFU8GgoI09BIrT8xWMjtHiDrtpcQdhbbaOjsOQarpJcdITG6YpVr422FpUoIOaF
	 Qp9zaJ4y1LY/6njCoXm24mmVtOQ89il9Qi4gCbyoO6jNep4adnOwJCCWPtnHBCNZbt
	 F3Atkx4/84LqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82AEC5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178669863368.24842.7169063696278713857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3feaed4ccc0acce8095f7af75eb51d618c7ece02cec65fe8f3dcac3c3d7e4ca
Date: Fri, 14 Aug 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786698633
