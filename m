Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3396B79D0
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749916194; cv=none; b=mzAXFrpKNq3mlrkS7GtneYKOsGlq0O/rtyu6q1btD8ZfHeh+wKhzVQ3uUPCAC08ZlC0FayT1R2ee1A2iAu1LsI2CrjLd/1j7lKbe/fblrRu0romq8xFZSqeheuGxtlnil5oXRRg/oDGzyvb/ILPPltaW38rF6DUdhSaiwjVSE90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749916194; c=relaxed/simple;
	bh=yMMldVuLrUEMGON+O9HRw9srAJk922/yJEnB38Uzvt0=;
	h=To:Subject:From:Message-Id:Date; b=hm6sDfuA+bRFC7YgNqYskh1ZjzQ3nPJMBOHOuZuDRJkaLEN17L7n0SsrifeBpza6VicYdQ4vvaPTnfTu6H8fxNoR1lcABIg92tsTJlUy+3NW0VFjiMyodVX07zjAQY1/63YjnW5wkyTalzk+JqJbfcmNfTJMpshX02bl7XuOCM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V/1DjeOu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V/1DjeOu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB76DC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749916193;
	bh=yMMldVuLrUEMGON+O9HRw9srAJk922/yJEnB38Uzvt0=;
	h=To:Subject:From:Date:From;
	b=V/1DjeOuNQ+wuuUvPJcLXmwi8MS0qs5o14IBbi7+rXmU6lsv6afcmRegVjDnnPr9c
	 1wXLtP3tAmGxvFkIIG1D1m3ajmUgdHtb0enie1lwxvo60Ma5of0dqRa8iRmoQUaDTy
	 cNWBHdwyobLL9/p6BsNP6mb4McW5da7z1PuWbwJgA86KARaAzwoEXDvv/6DFxJIGby
	 YMkePThIhGzxZwXWgEkZSW8w1B8mWwRpy30BwI+3Am5OWtN4OV4MMuJr0RxqGDGNrp
	 s8G0OfoQ2yCkmFN5Wen5/ZvhnS46vkw+YBoPC+kAd/gWOn7ROoN1UVTpHIL4YHYw7s
	 keS9h+wYgZc4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949E0C71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174991619358.19650.4150976926105748487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4ebb961e7e71528568bf03639ea2a2e23119380659ad4e021d5f4d1b7399fc2
Date: Sat, 14 Jun 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749916193
