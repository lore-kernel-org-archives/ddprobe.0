Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F26713148A7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774020894; cv=none; b=Slb/e4gwhwuqjv3cAjhAwbZXWnvIVXGzh6ouNdK7b0ITqqgateo4YJZS9S0P3sA2VlUhLaEfJIjP645gJpoMp7HhStSO3fwKt2S1AQwTQX0lvu0J/MfGQPo7Vr9yktQGMWXa4fR8JCStFalFDhDEWNy0bw8BMNGmA3MpU3vRkvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774020894; c=relaxed/simple;
	bh=CIVKALvNcjTxtxfu7OOCkLkm9/QWfIM6gEyv3ikNwOA=;
	h=To:Subject:From:Message-Id:Date; b=W2iFnyjYDK7Qll1EleQvQCuUDmYQjAyqf37/8vr51z3SQDz24VB7bqHBhNjN9TmMVF7gqX+D/UG0TMZ+Bj/HLNmMMIEoCi67xg7uEr+Nq9vz765TlzBrqwvvWbQm+XBV7B48C46Mo7oVCd4h+JT/fBnMx8arnhgYMB1Ysp30Klg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hKlkUsVz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hKlkUsVz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC3AC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774020893;
	bh=CIVKALvNcjTxtxfu7OOCkLkm9/QWfIM6gEyv3ikNwOA=;
	h=To:Subject:From:Date:From;
	b=hKlkUsVzCKzwu21Vn5F0hF7d+tMG2jAIGGDNlEpxHxsjeCuYPvZ2LmQ+OfkM+LTv1
	 KsB3QcRYXp0bfaVXaoQFFbk/O2OkURBn4AVIP911I80108+OS6TLvM5GzoUSXa0lMs
	 fglDu/7jsue7zOVham49cYJ1Vh/hIrEjyPmB1dIzVJU5e6t8rE7IWz+5bWRr9b5ycb
	 ZO51vhTUiSFcw3arkTZVupzJ7bc9lwUGMhRBGOlcS5Ui601t3s7P/BO15wS5VhvYGo
	 LC7w4WWlZm6QrQjSDGFOqHU7huOIRjt9bvp/0V8jNeuxL53Y6EEPwnNfpBewMdBHsU
	 NHJmVU0l2eqrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9961098797
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177402089357.32684.8045538133776551403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7bcd40dceca57918f42e71085df103424dfcbfd92182c0b1b136fbb4f7a681a
Date: Fri, 20 Mar 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774020893
