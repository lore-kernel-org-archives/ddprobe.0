Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC5A1DFF8
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748971194; cv=none; b=EQ33foCXlKZ06BTcsycS8BYOKfiCf7VL29C/EVtaXG0rcEG9sjZF63EHR+DGDb+lyu5GetbnEi9TwD2qOjG084SyfohKKcaAfPOBSiLDRypkLNZw4YfPH5QkP1ioKmNftMz1XpUTLfhuWSTS5qQcaXWbNycWcie4JLdiV9PSqU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748971194; c=relaxed/simple;
	bh=DrN2X2B3E88QTrJK8HVN6uDYyV9dMxKmFO0jNKqABmk=;
	h=To:Subject:From:Message-Id:Date; b=LRJN4q9VvM17KyZLneteMtYM+LAPLKGvOKebHmPnrhWEki5GRS/vHT9+Def0s0h1UzgGGPzu5La6/81eDY8FXj2C9lYIxIsFRRuTmqYeBq+Zs/lxNfB17/DBsOPuiIfr+KgG8rsvuMmpfWPkDgXGXG/4/os30CInQcF4tQU1IXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSiNG38k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSiNG38k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A490BC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748971193;
	bh=DrN2X2B3E88QTrJK8HVN6uDYyV9dMxKmFO0jNKqABmk=;
	h=To:Subject:From:Date:From;
	b=NSiNG38ktB74QSnEu9N9jELwNzsFVzK0zQKsFIv3c5SW3AKPLoOuRs7uhBADiLdj0
	 FR46XgW5G7swfFKxxWHPJKgUi4uc7p+oxaxnnD+B8xq1ULW7M7zmgjkrqT9tsYveBA
	 OosFNIkzuUo5yLZkpI0xTMRlHieW8zwOqYbQ1SWaotA+CR6NlRKdunw2upxkKqcGM/
	 xDFT3zoWDnQQoqLOdJ6c9NNS5QY+NRls7zM69RZstepF/ipUmZqHwTSU9SSkVqHA3b
	 2xfvJUOpYPNESSaxwNbEFS0NW2TjH/5+tXNJqCR82JVy7h53PWhoJJPq/L3qRdB14o
	 /T8xDyMRn8RFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914F3C5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174897119358.16670.335799932979687304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2a37aa302b9d6b14c33672901ac66767d9be229d2062f9b312c752fe2ae2b5e
Date: Tue, 03 Jun 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748971193
