Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428AB19259F
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747623594; cv=none; b=pRg75t7bSaTq+GbLzu0I133nStHE3A5h1pB7Z+lc1uR1iu2wbzw/ghVY3+xyfn02yE47553fvlpJU5+pOOUB2yvyAikz33VDAbdDfCJWOpflwoSO0PX68YxW9in+VPuIE5B5KD665D0GYAX5ANpobEird7y55xRnVz/4zIoRrB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747623594; c=relaxed/simple;
	bh=tXHimsR7nzI7YNBxpPtAAju7PFHGuJx8HmHQIbxpdXQ=;
	h=To:Subject:From:Message-Id:Date; b=XatGBlfAT7GvhXQlgGNVQjQWovUMjJkBkPcSmL24V5bnqgTRd+N9GZQjjaEfe7YZepmLwbhzEoIi7tqeNs0gvjq5u/YdYm3b6SDLZdc714Dp7CMJJJyupkoPPbTf9AIX6AqCZK7I+i5+/TfBnpwSwWAz0/YF0aj8jxsgUbNN4sY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YcIttKM7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YcIttKM7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A201FC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747623593;
	bh=tXHimsR7nzI7YNBxpPtAAju7PFHGuJx8HmHQIbxpdXQ=;
	h=To:Subject:From:Date:From;
	b=YcIttKM7rdLyReeUUOIeQ7/K0WjLo3N4VIyibb+e2kN+jX3QHOicbQejIsieuICca
	 HMumTFfXK8RrSF2BHnzHrcGL9xE7KqcNrcraHMW+LR9ZLkiGitBVigEoe9/lnHIWN2
	 iUFtwDQXU6zi/UiMXxNQWLkypzqHxiiFL89ka0aLZXXba7S4o7qBWcgVKJ3BM5JXJ1
	 8r3Ni+gPw2L2DJX7dCI78kJdiMrO7kUPqtpQf6qABWZ6GiDmq6Uz/j6L1Z5N32wGWx
	 8IPffUr0hiim8xHKDxuYBKnuspFDaD++BgYuoMZv3aICWoXBmGj7sqtuRiLVd3PyNA
	 VWH/8OKe8sNYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0ECC3ABC9
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174762359357.7507.8095680608391970560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 277ca5f5ec467a94a383764becbff54693f902e5bb51bf863320e2cea90700ee
Date: Mon, 19 May 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747623593
