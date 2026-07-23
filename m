Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322753F58CC
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784841634; cv=none; b=ocd3/QodUpoEpNHJx1cTcOMjxYGsnYj/MrCzdSsxpm8JmVVgr4+yH3pSnzgI0fJWxnYKLAX+u63Yh9S/C31QaGWt/rwnyiD2dGxr7Za6JyZPbr+2SNPPNp0Y3GNf3s0ymbHsynvotrbJPzwcyyMtRhLyPDN1H4ivqKU5c/TEVtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784841634; c=relaxed/simple;
	bh=FuLdwaLrbhE9zyVerEgAioE2r3KJrRo+JLwE3x695ps=;
	h=To:Subject:From:Message-Id:Date; b=TC5E2yUmgrH7aDYLO5txMnHe30JwMHHFcBnQLu/zuR6e6WEyoFhtparFDQ9dd25RooerU9/L1U+iIgbI3zwxYIAC6mDuoxO8uiBuk7F7BAHMo5jdhVvXcFMb07RThPsEai2gPeBXq7j8sGjipvw3AzAz8ETbt84R1v/lnc7TkT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u191+Yxk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u191+Yxk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D20B7C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784841633;
	bh=FuLdwaLrbhE9zyVerEgAioE2r3KJrRo+JLwE3x695ps=;
	h=To:Subject:From:Date:From;
	b=u191+Yxkvh1hmkyQiP0+CvSrzKwmlLDxSqvAFvWHTl5I5bDSCUxTxJnrXQ/klJcC2
	 NVKp0eG98qs+3I1vJoEgUkYMfocOESZOrtAcHOq/uZOzJUZg+urbe9iRJgbk0hDQnB
	 vATlEMjjOIcLvWEPqSulKBSXGu2/Y7yGjVbcWm0caOyeXx/5xiVyZ2Ovqt6LX0VKBR
	 tFlseI6Y4+UTQW6BhOUobVHavKcgiAuZrjez85UTMNFggDw+BKQntLSRNA4cwuSc1i
	 XnTsom80V6PfoPC3yQOpN4XKsRFrYx1qaUE7z5MtIMjRygXKshnFGiJywY/O468WBq
	 rIVAc8hdFEsgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF107C531D0
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178484163368.15562.16799402618986374016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d621fc842ddd58e6b9e468f2a176bd43addaf60cc04d7c600b51ad58eaa719eb
Date: Thu, 23 Jul 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784841633
