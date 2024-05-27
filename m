Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D0573470
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 16:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716827063; cv=none; b=QHuRIm7Y4pHHLOUPUfb/9TsIusc/YefOlKp6wEgTbcsN5AElkDieZppfCmQnGqVhdH016JKOCfB6+oAMOpdVHzSEu0aN1zMLz7MquH90VKr6frEEaU8CZ/nSjSP6OLxG4kRw0XD57xyrSkF/C1ls5ZxA+covSNNQJS3WjmpQ/Rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716827063; c=relaxed/simple;
	bh=KesfuNIrcbAM9vr0EzRhjBui4kkjutFFBL6dzr19e8Q=;
	h=To:Subject:From:Message-Id:Date; b=Fwv1pwhffsHjMmh+7X4uBHgd3FGqx1kN+luFZwg4Bnn05py1xm0EONdkuNze6okhmvq+yeQiEGGmUzV9ZbZh+qL1uEK2x+RxwhxwftYnP3Lf1IphiucLV1hw6hhsoLBsRrQwvDrT9FpQSUlWoQJwXyHWXoJbnfUye5Nk7SsSyEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=px9Ct2u8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="px9Ct2u8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF4BC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 16:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716827062;
	bh=KesfuNIrcbAM9vr0EzRhjBui4kkjutFFBL6dzr19e8Q=;
	h=To:Subject:From:Date:From;
	b=px9Ct2u8TriwWQVVxBhuxzI3MCG8HE1X8S4WNdSXI9Ueh10wfdXIlX0GbP+skCK6W
	 8vC1vbvUK4PKwJ8xz0mMUEK9RFSlg8TmVptlA6eGkdq1MKLDo5z1hd/RQEtGBCxRTT
	 lMfDNIAIbRzcZxFNDOkEpOO5qFmpF0rUUPc9Q18KdTg24PBw1bOIAmen6x/ayPWUs6
	 IeHd0znB51IJrgPOaOahPmjo5QAUvrfOqKRpTMnX51HUnQF3ca2JgoLHxbs+Ifm/ee
	 jDZu5UqNRj8YfdFHwkwplfRBXnhTf5UU3M86lLBJsjtgiJm+Lsw51hgSM8mUNjkH10
	 bfRgfBJ2EeM9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC09FC25B78
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 16:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171682706276.30843.3708113293278054582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 950928c0e5a70b9e9450bb9c3e9b026ab1b76283e4a6df44b875440f70174013
Date: Mon, 27 May 2024 16:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716827062
