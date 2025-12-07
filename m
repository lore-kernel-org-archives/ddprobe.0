Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220992E2DFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 05:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765086174; cv=none; b=PS8nWj4c7F2nv1UVbQgrnEKxBe61f50Q7vnY6ERB/bebgAUxNqAncltM7R5oONHy2OFvMy28IXNOsHPserL7HG0vWFmq2jT/AhljVFvMf735ZDVMuq9MxjjEu2kAHGHejWWnidjD72ojLzGgeiXO9BYi4ZWTkClYqKRKyeZ2u6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765086174; c=relaxed/simple;
	bh=k5CwL6M9NPNkD1iaMx8H8cdO6lU3W7SiSqKYrSBQxes=;
	h=To:Subject:From:Message-Id:Date; b=fp5l2fCvB2zVl9e7YoIpZ/P30CoHG+dbYlP9lwbT3tC7F9R7ApBu9evFNswF+TQEOukhHsCMq/SeHbzbKJuu+h/mWYOk9qi1SIq8ATgBtbN56ZiMGJoQw3gcs+OIvsdepom2kMgRgh+vWDAFRifUozWD+M1S94i6mezCfahESGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MD3baDbD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MD3baDbD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE608C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 05:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765086173;
	bh=k5CwL6M9NPNkD1iaMx8H8cdO6lU3W7SiSqKYrSBQxes=;
	h=To:Subject:From:Date:From;
	b=MD3baDbDOG/x2zq35e4gSMRwhK+yV3bs8zL/0U5IOF9JZPoDp1mWaRKr2jNqxdrCK
	 XUhaiHatyQTnk8DNnAgNy7wyH23+U+fxbwjO2qHfG1BiIafpGY8gOPzOqyyAYJlkf5
	 MkFyyuYc8XdGOnddXlLjK6A+a8b969/48vEFRS9rwt55OwzQxkTRXvZjoPx/QZ67/a
	 uEevXxRLz0iKpge8fFPWPuqM6OdhOyftVEqWQs4Ne6FUtvvqCCw9HNiX/Lu/6wEvyr
	 Fx+F71rvhz6ijZe4kmvn6SbnC523povToh0SwMDbSrKoOQKTT3Rrr0388GPlwrdo9r
	 f2EeoML17JTVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96294D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 05:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176508617358.23554.9931997665827387880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69e18f5cb7b1d50169169b9dddac80d3f4ec0ac50301aa25d4ecade62e67169e
Date: Sun, 07 Dec 2025 05:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765086173
