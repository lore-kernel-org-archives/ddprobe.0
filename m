Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D050FBF0
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760150394; cv=none; b=G4DDSTxrA3xlv7JMJTthWHTi5pA9JVkr9SYrusQjFbg1Gaym6bbSSEN3HwA2xgLbiWuWtj1+e42jA8ZfbEn0B3EsLY8DN5g9CAO90kPEkAFF0yg/zipKKqBxe9tI/dIDmcIydmtTi7JkjW6Gz20qHg7GXK/0e3C3KxG0iBbQ76U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760150394; c=relaxed/simple;
	bh=FFCtKn5VgFAEY64xW9y7LYj2aPTHJgCIfUkhzLvglV0=;
	h=To:Subject:From:Message-Id:Date; b=A1zN7JrM3foynkpPk0+fpPVE0eBnUbdKnVd+XTnCDIDKTkRbZXuKAUkuA93hbIHLxQYIYAWZS/hPSfSq+g/TfHor1CjsBbgtL5V71uDBYOKgmIcbSkbShoSs3nn1u6K/gE7pGA+J8PGVx3j7J0NnlGmIihY+ljC3su391UpqHGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HApsIbcw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HApsIbcw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D76C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760150393;
	bh=FFCtKn5VgFAEY64xW9y7LYj2aPTHJgCIfUkhzLvglV0=;
	h=To:Subject:From:Date:From;
	b=HApsIbcwDjY7H/8UXcvsxRXnGcjGhud3xg5cxjB0INjy+plIFXXGqjHDfGqK4PPcr
	 TTgMh3RRxxtK+CqtI3qE8MCuY2vL3gGVB6vOVLKQlYGWg/L59XCjD4yGFJWa7hs4kn
	 TlF8FQzmNyR8+gubGuClItmHMwOrZ7JOIrYoHGZURh5BUig5bGNFZAhsJi20/drILT
	 DZ4Z8oQenWE9K+iMOnJRVbREirR0042blqGefryzc64G/hlX39ZPO/yBfStKBL7zVW
	 2iKk3yHcrL32jHqJr+dIc/2dn0nn2npD5qCxjNHbi65RDfJaY907kugyO8yswX8zIy
	 z+q+7tsJOXCnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DE0CCD185
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176015039357.410.17299636119472666295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40c0bac6d843610060e47cf781d5b563a7756e88fb095a6f08c65fc89e112d54
Date: Sat, 11 Oct 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760150393
