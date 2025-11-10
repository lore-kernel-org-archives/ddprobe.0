Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABC12F7465
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762763394; cv=none; b=hTtOdp6YIEk90kTER+8QifYFYU5Gprqjwxkoz4EpLeRhMs12T5CHmDyH9/Av9V6N9+fWQ4ADzxYv9IfLDqXgz+8jzuGjxJIYCLrORT8s97bQHp1du7pCy/sJRw5skI1GLZZRch5Q7sdVnuT/emNskJMXWBfe2jfzkdkbc2WdzPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762763394; c=relaxed/simple;
	bh=X35BWV1KBBEPW4Ti5tz4f/HDq1+SraKaGTY9U3VtSMY=;
	h=To:Subject:From:Message-Id:Date; b=WMXL8B1H/uZ57+HQEXL63q6YlWjBS303Pb9qnWq+RW/rV5xGfgZjZtjx0bOzxWQvnjU1lecEW/SuOOkLZn3sHMs6KPtGM6DxiAw63ljOWToMjKa7mw3k8No5vD6CRdLER1huQhGuJZrYETfemiCn9zDZyNi3euefSzB4CS9evY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WyUYBvwo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WyUYBvwo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52DBC4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762763393;
	bh=X35BWV1KBBEPW4Ti5tz4f/HDq1+SraKaGTY9U3VtSMY=;
	h=To:Subject:From:Date:From;
	b=WyUYBvwozaVRTSy3LYwQPze39WQNhfdR+meas2kG4etpUhrsw1CfWHUftoh/3QpsD
	 Z74j0c/8CLED/SSEnMqlw2cUn7wO9VFu1x4dyGqls4SsgoWK0Rh62Qbr0PXKGtoT2y
	 6sRcodC14afFVNuaKo3FW2vJYL9Q0GJ5aUj15NuP8+OUFeXmZypCzBSs6CjXoO+RL+
	 5grxK4NgaTAiq8TNT8a6qnUQ8D088VmhwxQJpUIIAfLE/Yxm43261C4TPfiiWKfhXe
	 VkHz5XQh6Ha31d2zFS/B295JQ2su9TnWBqXZx47Ru/VIEpu1cMJvOZIsRQsaH9roIi
	 mtSs2SQDC0DXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90526CCFA1A
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176276339358.6332.6941669365992133737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10d62edfae75b69f15e33e3757a77b064bd1f6a5863dd8538753b57b7dad60e2
Date: Mon, 10 Nov 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762763393
