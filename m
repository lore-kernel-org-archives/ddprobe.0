Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C59353168F4
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758296393; cv=none; b=peANfYQ5VA/a7pwVFYjmX0eGrTwqPlLpHPDVrmOzJN8cH1HyWXPKHHvzwugMxaQp5lYEo3gx7wR8Cohg/wJVumqTMiwBD/47+uQXbdCLOLaq7q0yzgiWMgJhxM0s/L9nNd6wSt0FCJf570ZzlxxYLs10UEpfdn79T47Wbofc3XI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758296393; c=relaxed/simple;
	bh=njJgvF02WtAPtnaxuWuljG/8RYsuEF/GpUkR0cK7NkM=;
	h=To:Subject:From:Message-Id:Date; b=UeDYRkuQ06YSD0FaMpquPwSq7hfJXqPV5aEuxsSR+cjd5khqOOXksetFXHLabGPfU49Ikxel5W81NFZjiKcMpIUPhK5Ar9cnzBImS175C9KcO/MEIvnCWsyVQob8CF/ZGtJAHBt5JCqXTT/Y2/sfHAmHyl1xboCCi+JNkNXOR14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HPkb4FyF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HPkb4FyF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1433C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758296393;
	bh=njJgvF02WtAPtnaxuWuljG/8RYsuEF/GpUkR0cK7NkM=;
	h=To:Subject:From:Date:From;
	b=HPkb4FyFG/Lc3x0LPFsWUF4KhPJ2hyAjsUzbwq8q4HNnj41JT+/hdlCaRBSZq2ozH
	 mmoKvzIiyIAkEwoIb5x59Tw5aiRYJ7NNT1a6qnm8d7jwxSH6844fZo8KGsxjgTryOE
	 Wrbz10ClUmjp1MM4dKYe5MNn1JuTzaf0qDWMADOQnMV3RX8p4hELEcZThAJQ1nvTVh
	 +OyboeneLNUodx/YvR4uBpPuKvUCYn/yY5rcRtyCujoRWkQRhC1wU0TyJhXg5q/r/7
	 q2+eQM2RMU2WCIxxXE8PuHQLIFHqgNCJhyazj5veIFHfRSin0himiz5ZhqePJ/uEC6
	 krpKEpc2Gt4UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900DDCAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175829639358.2376.15351346270502703085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2aa3522039548afd16a8f1a9664616d848d47150838e73257fe2c0350be01ca
Date: Fri, 19 Sep 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758296393
