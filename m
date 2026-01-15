Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E29299AAB
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768518234; cv=none; b=YT+qXHtyqqd0z46q7oZZUYsBBw0X5xUED7gkRqAt88NIDUSGb0QotIk6+4+Qk65XzcD874H0YJsKvssGGuPPyt+Uj/GihjymIEgDLsP2pB1xXB/B6/H2Rw7X/JhOygfHuvMaMVIUhM9g/qNPR8+WmRuW6eu44LPf5ZBAwIs9qqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768518234; c=relaxed/simple;
	bh=YWwgK8Id5urTBGF+WjFAry2UkcTd5Zc3VK/+0sGP2Hw=;
	h=To:Subject:From:Message-Id:Date; b=JqZQtKX+mr8ivX1Y4gnuEjtaYUtBFyDE1JvcJpZcb5D55Lhr2nizSlHAAsSBcC+f0TRm4vfuPhswIY2ORp3uJ8Vn2X8iA8FbwWH5SrMGzeHxJB+PZaIWetVSAKnXFopYGorLTuYTkIMfM1v38349hmdOTIBrQqzIXL+Tky+MJW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vQVi0Yx7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vQVi0Yx7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB74C19421
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768518233;
	bh=YWwgK8Id5urTBGF+WjFAry2UkcTd5Zc3VK/+0sGP2Hw=;
	h=To:Subject:From:Date:From;
	b=vQVi0Yx7uK5rAptTSRLjl/qp301rk1Ll95Y2qSrLqjEJSE82U8XG18BatiIaf1J41
	 BSms/fBwkJGJNtFsx+RUDIAueHRgZQ8keLWiKq/cGP1ohwVAa3ZGlyxZHpPviaF9Zf
	 8zouVTV98HcLmK1TI+0GWQegrpN866ZG+ktK6RNwK6LeP47yqohrWiF/BRc15TFd+H
	 frn6Kzsu3TuGE+T2LTj0gJTMY9ESlV86pA9bZdXLo+/2nbsgDIo3O23ZRyO3Kp7GHD
	 xCB7ZlAdGQYtUQTSfaT1ramRimgzz6yLKWQxU8enxX/cGCnTVtFCLmnNs+8iXoa8Fg
	 /EB43tTUpNfzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4B4D46634
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176851823357.24825.12384629365397350738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa49f8a2332597e668980b8a5f6dd5f360a5c1dc51da8dbcdd04ee91b1d8e255
Date: Thu, 15 Jan 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768518233
