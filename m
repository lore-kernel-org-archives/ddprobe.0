Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDC226CE32
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769706834; cv=none; b=Hrv91mmX4Yg+mAo8DjhsavpuR9gm3/qyKl1J1On2Lfc5BMVAJdSHcQYHbMDz3ZjdlhrL2Iq61EVerfr8OZOxlVbHY4cnodjDT9h8qgEzI9Iaple+ZRcP1xriVm8Y4VBrqGiD0t0fjwW5Dv4OQarUtRcXYU2qsoEOzTx95RJZKLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769706834; c=relaxed/simple;
	bh=R3b1ESOSekd2kfsPWExosVaM6lLjKi0Y/sx8VrM54Zg=;
	h=To:Subject:From:Message-Id:Date; b=hhwykmyO1vEClX+D49jNY7w6g7KRQeF4UTJrHE+qymu1rTnmiOuu3gnCt7bHAKlhoGtOQ1AbMJ05f58Jc2YxwznK781/vqc+CTH8C6ikmCuOWLAghP2GUeOgXN27ZFBIx8Z+bDLxsuxVCQuwhtFb0guE5yTxyno+o0+XAHNDblE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fHx+ZzSo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fHx+ZzSo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5F17C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769706833;
	bh=R3b1ESOSekd2kfsPWExosVaM6lLjKi0Y/sx8VrM54Zg=;
	h=To:Subject:From:Date:From;
	b=fHx+ZzSoFJ41Ui6Mi3uxFp9BtyVWwzKAJE9IEWn12S9h5tjnaZTgwX26BKHPViBaQ
	 V2ljilZ48f4iyeMdjnZuYFWeXkMusFzTVbbFktKE77IQDCMwXINbn1fVHHWnB6wquR
	 18lVhB/cfXxMqf6JCmef1vGJsd1kmUnRJ01DELn42anFNgf6FhT78Zq0ApNAIoyh/f
	 cAb9LfqOtsLZeC4/bUZ0wVRBi+o53u5E3JUJlaf7swsEtNhyWby6XwdlWM3980MJGR
	 SHEb5ylCWlOYUzyob90BeHpcl4M2OUShUr1RvXbFotj3Zb+k+66FQ1uE0lp8jncvA8
	 ZP7qaYkUhUlhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2DB6D61033
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176970683364.8703.13717439842498195914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c35eaa2fe985cec537a4ff1c5d1b44d68e300250ff6773fa4a069e10f8e6892
Date: Thu, 29 Jan 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769706833
