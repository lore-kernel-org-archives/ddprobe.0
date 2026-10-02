Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A98B3612E7
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790918434; cv=none; b=kSMIhaOiUsOg2GNS+V8srYErIvyB0HLh5pSI/tjrbB4ZBV8WSbtZ1UfdccD9KsLFn4t3hX7HzLOH/FxPiRGHq05CI1oxKAO8T6itwopuDOuGENO1wgpP/a4uxBtceDWuSRgSwFzxmb/GeAHhcWnawfnWmJH/gKFadWIP5mzUG1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790918434; c=relaxed/simple;
	bh=wkhwZ3IMQOUoJQrOgfBc6q8FgZIgY647d8osUa06XpY=;
	h=To:Subject:From:Message-Id:Date; b=kevazLXrjXKvXqVY+Ch1Cstr6g7RuprPLLguDRjRVYVmaOHtWwzkvEHM5NuCqlnv3rtGAHrZ/d+YjYtSQBUvrGO0nHbtYIeQUgr/9dvfZ+LrBzdDFKqORXwac2mHDpdvlUtw5HGYE68kGbr3EznKYBAo7n5LMTQrwh3amrygoBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KEc07q9d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KEc07q9d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD9E4C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790918433;
	bh=wkhwZ3IMQOUoJQrOgfBc6q8FgZIgY647d8osUa06XpY=;
	h=To:Subject:From:Date:From;
	b=KEc07q9dJw9zVM3Jj8r9/9agrnjpsjlCguDx+jC3pGAbImnb+WbKapQ04xDC5MrqQ
	 6REEhrIl7jJbj87/TjGzJzvwBO2hDa0VpGbgcCBpE7jKz5cgSUV+1eiXKlTwlPO1nb
	 J//XlR/LPZP3a0MQnv/CH1IZRf3oI1h44mkrFi0IxorkFrOyoeIXix4roYvOuzkUbw
	 kY96w1n+ZoTfPA085vJj426+oL4VtDjdFGRke2G7g9jEei9+dwjkCRIQPLr3HTwYKF
	 i+KNet03ABS4CUWk92NnIFvUw1peBWmAJOPH+uBvAWt6gS4Ws8HVRB+uLrsUusYaiu
	 UfvzbB4TyRGgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B858CCA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179091843371.31869.8466422022550700945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa850a3a58fdaac2900011372c45b71732dc9135651368e2637076308eec8fd7
Date: Fri, 02 Oct 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790918433
