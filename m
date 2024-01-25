Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F38AC1F60A
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706218097; cv=none; b=hq4fTVNxlMNB9qYcmiYdMQesLd2uEWIa/WaUw/06Dwd62K689qUXwoWMj0yo68q0005/ZxRAw8Gf5ycFkqRA2mTda6r+Q8dKO93+0isnh8aemD2Qa3Ys0hOFfYSPpDWDRXbQz3wfdcb42YpVssCdxM3ZQdGdukdqG3f3ttpGDGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706218097; c=relaxed/simple;
	bh=yS1Yr+GVpKovfrWbsSTq+w4hkp7ipnqkUmpdT0qwxAk=;
	h=To:Subject:From:Message-Id:Date; b=NteO8XaTPiT8rnbDMVYfsqZEYYx+aUqIFamMSf4SxwmEx0mZ9AIvqqudxjfJVCjyRQC43o/UIv8q7uwcv5cmC1+KKiDVJLX2K9Yf7HD+cb1AWWq2jPUy8/nnCIvT8628aLIf5uwzsTEBWxV8Z7tHqMZDl1ACPghNbL54Xy0//HA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j6Y3mTNG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j6Y3mTNG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80254C433C7
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706218096;
	bh=yS1Yr+GVpKovfrWbsSTq+w4hkp7ipnqkUmpdT0qwxAk=;
	h=To:Subject:From:Date:From;
	b=j6Y3mTNGBvrMJsMAtem1lewp/yhpQHFbYE0Kmuw0p/UbOou7TtyGPljsW4fDwaUrE
	 nvP9WsHf0k9SFCGpOzs9+HlySflfd+7pR+3PpE/4YIIzXL9HidqhN1lzIZ+y3Eqrh9
	 SAj6np96Qfw3FuEUn9dI956RCMwglKjsohhivvfJxBCmlyc+yiMslQaDIGuio/+k3a
	 yV0HQ+XsBYnLwuRV9gkSLwOH8qp+fn/Um8xSKIkuam909cCo+FrUsb26htRiHjo2q+
	 yYJZyxs2kq0dyAapOZKOi2Pw3pvIn84QuYCqyw5x5PD7wlC8VuhCh7eeEtXmEna8vR
	 NYkP74xlXu34g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64E06C48260
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170621809640.24337.14352522369570789899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b835906163a0abab43d2b22d801e8acfc54f509e02fa06d7f9c78a6ca891e56e
Date: Thu, 25 Jan 2024 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706218096
