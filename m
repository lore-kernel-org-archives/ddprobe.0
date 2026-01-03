Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154E8165F1A
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767434034; cv=none; b=K02+woBMZyFFEpZQbRH43tpk2b/Jcv5E3GaAitEebNe+qrxT382sIFLKurEO+kVUcPq0udOW4bGcIyxanrhDPvK/NTlfjoK0yduEfy40Fs3ZJvoCuoju85euobucUWPONOqF6d9bWD34v9jDHLQRoCOlntY27gCa+CB+re339Sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767434034; c=relaxed/simple;
	bh=7A3uB8MHQnmrd4nfPyBgCmLsCds7Td+/ZQRvCXortpw=;
	h=To:Subject:From:Message-Id:Date; b=iIUGfIYciq01uidjJijqPetQFS6zqKInvrzicZHGIoLM5mfYeghjIFVg6j4lb6yjIojKob1WsJsh3KwnNJ0b5nxDwRkpotSHsA5TQpnDL/yqL05PeZZMayJNaeot1vC0hGXQGsRN1t3bgqfx3sMJo91k43h//GuJ/+LaOFevZ8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r13oqarx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r13oqarx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B62FC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767434033;
	bh=7A3uB8MHQnmrd4nfPyBgCmLsCds7Td+/ZQRvCXortpw=;
	h=To:Subject:From:Date:From;
	b=r13oqarxXQt13KkxYZvTvrNeieErF9pitzqANHnP3q1DIuI5ZqkMpG2KtbfGYZ9xZ
	 kcV/Y+4VGJbRTj/pUX+AUBjOf3FeD/SCkNvgJMv0FVUvrk20Yp9b7DA/GOIYxml3vm
	 1xn/YLdKG8D1k0I4O659zXLMA4nVJ437LZ5IQRAWWPx7VnHXFftMw85M4oR4XXSJoF
	 XII6pathT3IoOOswzu3OJG39jHNtAooXjMvHBvaNF2Y6+yoaY0Kk01srJ+OwEONcOh
	 +c3VMXLIt5RX4QQyFBbXtxtwfQiJ4OwQnqncg+YxSYVBuPvXN5xXKEOHZBCa36E+Gb
	 WNBIIkuMG7BZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E443FC6179
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176743403357.27007.4309447664159383510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df363c8429d6d6c0c938f1422675c177f512313bcaba769b80387fdf48fa1e12
Date: Sat, 03 Jan 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767434033
