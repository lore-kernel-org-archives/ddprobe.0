Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A98512B73
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735961754; cv=none; b=TBBHly6ZZx2x0emJWcIomBXFUKfXTDOA6ykpl9Ugl+o6L8dYooqC1mjLm46UKW9ghhRLQpOpegAZY/oX/tBF/SXMfg1Y0J7FGN1s4wzP6YZGShUq8DE7F/9dPwRPUfjBNhbZVkGmiIlBfhwS31xN/hzSrx632UfCPqhS2ic5toc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735961754; c=relaxed/simple;
	bh=7nqS/iIBkV3AItWEXXKSbG2nsLiUZoocus0CkJsfc9c=;
	h=To:Subject:From:Message-Id:Date; b=DouMqLcWaYT//N0MJBGFIFPtd8rcYtU6mhNIW41BxKGYXArbE2CP+GCBluD9wqaUMIG9dDhiUCfjU4DjusJgCRWBnqu8/fYn32cyrVP1Bvz7cAy2VMVlL8Iikd/Fr7+Tty1YIoEI5hGJ1sD4uLpnyPM8k4HhnXlkJdg9spf02pU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXUGt0Kg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXUGt0Kg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0876C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735961753;
	bh=7nqS/iIBkV3AItWEXXKSbG2nsLiUZoocus0CkJsfc9c=;
	h=To:Subject:From:Date:From;
	b=CXUGt0Kg5CZyI+DLjr4ID2zs19/dzNh9k2zkzQ2mcoKKej3dLtB8ZywDmoC+YuEp4
	 zuk7sl3vgAAWfnPyJ64N7pzl2v1EpIk3H0BMUMEn8+7x74oMtivIMwuMlEw5XB3ezQ
	 4c/q1wDLHT1BKa0tsY4Y4v8lyhp4NUULs/PKrznXs5Dt9i1P7JlQNf+ak0Ql3v8dch
	 XLC1PdkVx9LrbOUaHKXPAhZJXumQexTGxd9dxupY1z4P+5b0MUvCFQwKvte3/gUS9g
	 G0lQkzvaPQePQh2VoID77oZTQX7UaqKM/MehPcnIDO2MMgqqBtefj4FQAIrDaHr9gn
	 k3o6/bMxxcK6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D1A6E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173596175360.24236.8653374862878406318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffebceb2c65ee416c1f3c08e29532d17f7333d223ddaf0f9c5c013da341ed9c2
Date: Sat, 04 Jan 2025 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735961753
