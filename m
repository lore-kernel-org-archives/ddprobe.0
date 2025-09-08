Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE562E36EC
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757341194; cv=none; b=I0Y9fdHjTlqkuB+DUqmN8Qngj/HquoFQo7aJauxeZLsmpRyThhCplDJIVQRdSBhqhqMzEaZLl6HpyJUqC0xqiM3fJKbrtiHnguWvudKmSNHNsvyY6NJIL5isn6k5TqZsKn2XiIQKQFmPxNjvseTzMVYvI3ZCNEsyio02gi17Y+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757341194; c=relaxed/simple;
	bh=wRqiwI4derhlizsPiyIgoFCTBSLzjPx7VL+fRVyb3qA=;
	h=To:Subject:From:Message-Id:Date; b=KNw4tx3y7kTUixB2UlHV5E2W2Bm5yY3v7enTQVUxojIBBghtTCMSAiJmAdIKSx+Mk/f5moSn6VbTB7iukcfB4DE0CWf8H1HT/3rFgjXe2urez3qTUq7iOyk197jMUZREMF+D2aVVCvw2tMYAmtI9NwGLmz3apGD2QfTHfe5yB7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bY2HF8xV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bY2HF8xV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7C0C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757341193;
	bh=wRqiwI4derhlizsPiyIgoFCTBSLzjPx7VL+fRVyb3qA=;
	h=To:Subject:From:Date:From;
	b=bY2HF8xVBl7iPOkhtl5+GG884/CBpS85cgCA4chXLuqAvkUOu3Ps1sh1DLYx0GKp8
	 ESh4WxHE9o1wOMO8mDkMrkyLI2o4tCYQv1dSiJiB9CRdaD7jW7RMny9rclfnIaSHfs
	 v9II+v1OjmDEtfyi2Ig+aQx+LlXcgc9Z9XjTh+w4GG2Eu9uxNGAFa40XWc6LuZnYYb
	 CS/uaimBRyCxbF8wsHzUOpCa49s286GVo9Cmuo4MIbBo1lIYVcnIZfHFLT/5xyoyzD
	 CCzp16yNrlOxKbwaAiTyrjyartZ8x0kPFmryXwm+lSLqgFsRLAiWUBsoMl66O2qtSd
	 +Ld8F+3VWDDrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F544CAC581
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175734119357.14776.10273257158537705794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0c47eda58e5c1cb773ae06e9089d975024d29eeb2160057296421df2233680c
Date: Mon, 08 Sep 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757341193
