Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A6E54825C4
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790330434; cv=none; b=Y5Yuqc+RpX7fg0AdD29KoL1wXIM9sVul6rVu025uVw/FzlsW8e43FOzkceSddHSe9sApRZ2U5qR6auntp9/m568F9c+H0cOXLKc2ptfOP9jqYw+y71iwPwIphSXFLlUGBkpnbLxxJF8bDqthrGjkrFg20YZd6tX/uOb46TQd1aQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790330434; c=relaxed/simple;
	bh=Eu/DoEPsckTFfwslHVOuckvXjbNJ68SnbWvbQ1AsLbk=;
	h=To:Subject:From:Message-Id:Date; b=NUBbfvrVl6hm1nABZIEodsGzgnh49TxW5eBsb/2Jw/iWvGHUrPD8KWU7LKmlH3qvD0X31zRzILGPh/kkSsEHZXfXkJKxbe2h4JQg7AEAETiuDNe72y4FYtISeb47qsc9/1fK5oLFV/CZddMwgPzZt+5mpJHZYVZKTYk1P4EYhsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b3RS/C9x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b3RS/C9x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC386C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790330433;
	bh=Eu/DoEPsckTFfwslHVOuckvXjbNJ68SnbWvbQ1AsLbk=;
	h=To:Subject:From:Date:From;
	b=b3RS/C9xYpE/Klgpkx1qh3Veu9B0IDGdUIZrPZN+7TC0HdWdWBMd0niU4O/Wsm3gx
	 ZLp3K6IW4u2l1wfMo/AgExu+S6Wn482MfLG300xieb8uTKHKzkI9NaorQf84FdzDqo
	 RF5RB+h4LsExp+HJcILMmcEJuQPuUXm8TQ0hGnC4gz7aagdBSGhhTFiONzKTIifmp4
	 b0qi9fPd5tuQzOK566aC+X7pGwP/qM17z0rzfWtpvqxqxDcjy4jvX6F9vQ+ZF+bYKQ
	 ONLcZ9J/vsPXckr7toEl9UML8TEks9ITFPU5GwngHWc2P5BPlMKCQXm6XdTVZCccPb
	 1Ci6G4zglHSxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B62E7C9830E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179033043373.28307.7241636362106563636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0df38046145be105f3b5ccec05329cc574def05de6f0993217250e2f61af1671
Date: Fri, 25 Sep 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790330433
