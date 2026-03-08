Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05FC820C012
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772975094; cv=none; b=X3mY6Dl7mOdyTr3E61nfVzFEe/eVR8VkwpiruzhaVyx62kXGQs5pilBGBJGpQojN0hRReaNBaF34QcnqSGXY0TG9ckaDtCdyqBvPb7az1i1CumvvlpweRIikD7AJkvHdSEx8jU7XlwIV1gMXEczDsoECPki4Kh5/8xCgKsnsLhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772975094; c=relaxed/simple;
	bh=NJ1abFNc2zt6pkCrWeYJ6pxO0L0TGbYa+vJ1m1aKYSU=;
	h=To:Subject:From:Message-Id:Date; b=XeVJpYnJOMvIxwxVSj/XQvOLmAslobOG9vZ+LKETqId+hm39IwVHeVNtP4v10xqMGvBmRw3OmDoFN6op6ZVwea1FL0XDSbsQZtXZC+ssxD69unQwmVP6E0rw4crmEhGuXZgipFLW0PxnizwwRf2a/XpItb31XC9V2tIeLjQLHQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZFRINyZN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZFRINyZN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40C6C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772975093;
	bh=NJ1abFNc2zt6pkCrWeYJ6pxO0L0TGbYa+vJ1m1aKYSU=;
	h=To:Subject:From:Date:From;
	b=ZFRINyZN1YLv5pHCmzSfyjW+5UR1HjHPTjDtZx7xUbTMjvveizGXlaHWZ4369de8B
	 RBzt7BKNaQOZDweWzY8p4Ery4nKLUKAp+mtn9bNBeT5pQXtIsYhfy9/Lag9rBzXTNV
	 eCtQ2axEp6U+/xYKpPWswBA8vzoCABnZZUoMGFD4yi/Bj8qAG0gkDyeZp29hK77LzB
	 5CVTY4L46WRF4pTVwGEpWDs/j1sJt1x3ixxXhvogFHTGkS5J0ma/5vax5r5rPjgXco
	 NtHDmClDPXLEmqPzibROcdiMuLC0tj/Bk1S8fvtkmuF2vPriDpXWokxRcZjyJ3qkm4
	 d6AjTlAmoSIEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BACEF5866
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177297509357.20789.17617382578212900852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 929844a8f709d8336146bdca99db3dc87f549e43701ff545805f36b83bf732ee
Date: Sun, 08 Mar 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772975093
