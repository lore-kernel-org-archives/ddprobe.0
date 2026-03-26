Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0779B3B8D40
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774528494; cv=none; b=shMhTf5OTvTwzbzyIRXsE50VqlxJ5rZ7dDgIHOVx8vMZUVuPlhP0gU4XUzUnSIzhpMo4xK4viFOagWzxRUby3pKdPIiyFyJrpV7peIPNB2Nvmxr2zsInTHg++X/zApE3zAjUwZZxdyuKb2aR6+XaVWiAMfuuIohFfJ7FnCx69do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774528494; c=relaxed/simple;
	bh=8JiPPbFe2Qujc6BbC+2pfP0xNRMs2DHyqt/6SrqC4yc=;
	h=To:Subject:From:Message-Id:Date; b=EKHp8ZD68ryZFlDe7KDOQnvuX5UeSdFzeKo2GSD+BNLGAih8ZwLMfRF0JlhNHHTNlU5ezaI55lTsxrqrG2NWpkj05MS6laL9swB0neh4QDKVQ8K46pOf2s9L1MPR85KeoTl1WYUqeHFtnWEGXiJEY+9S5RxZ1PFZs1UyxtU6D0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NmEt8b3j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NmEt8b3j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2999C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774528493;
	bh=8JiPPbFe2Qujc6BbC+2pfP0xNRMs2DHyqt/6SrqC4yc=;
	h=To:Subject:From:Date:From;
	b=NmEt8b3j2PY8JLCExNkP/mbPsiqknbp8q3ZnqyixQXPcte3kSE39ct4qvO92BKdAL
	 bGhWH+7znU0aLg/yA6pIfGamQNz0nNeoVkk83/11H0+Uy/+tq/bw915gzKozEVkbXh
	 LKqWBSQeZdnfOkQzGaHDDomIhlYk8Cd7VjMB9xxvjM28awpcFFNDlOx0bVMBPo5481
	 yOmQ+sTVyLY1IUmGZUoEtacPyrqyBBC2ACGbHweupoQo7dJ9obTKkC0QKqXFJ9DKfC
	 Eb+yMH6AUjO3Mg1eYebDQ3LQwFbfJh1DVl+SeCRSA3ASD45n4DMCFUwnzTBjIcMmCX
	 a0LNXCBbDmlpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F8410A3D8C
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177452849358.32514.11345407559291230570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95d9ef0268ef4e2d680e97ea157c7bdbe729e77baa63c5c9e8411c024e4621cd
Date: Thu, 26 Mar 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774528493
