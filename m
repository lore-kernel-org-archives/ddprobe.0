Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC5961FF6
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 06:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716878663; cv=none; b=Vm/YF48JPL3dMw+2BVtFoC92TS1NXThfkepp9u31fErqE6VaT3ByYOryDFH0hQz1Iis2N+iqrpqs9TMjxTWsU9SjBKLfNz5+TmmuwjGg+1GyZYz9PEh2mfVnepfJ5eT5STcvtZ3Xg9HykGOIyuJU8DJM0gq8sJNZAxi4DKlTaNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716878663; c=relaxed/simple;
	bh=TtDQhNO5kxvugXEu6pKusWl0D9A86dN3r+40CEQfz3U=;
	h=To:Subject:From:Message-Id:Date; b=QRKh01ZlJbp+R1cYCKXksknOmt+UsmZZo+fTynkVvOfKnz9tmUsLHj5laSavqAUQ/pD1wpHnxITmO4aK5WAXWBR65k6qgtrWo4Tm6x+8io4Pby+JdZPvdJcPjAgZnaVIuB4Qa9IrObcLZdwKX0Mw2vII5pjf8hPcHyu39GPtRfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tfD2qA3n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tfD2qA3n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5316C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 06:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716878662;
	bh=TtDQhNO5kxvugXEu6pKusWl0D9A86dN3r+40CEQfz3U=;
	h=To:Subject:From:Date:From;
	b=tfD2qA3nQ1acWoD7NFkLmy+2SWXuHgvA9ILAx5S2AzQ8tmydZsvUQJekM0J+UHNDe
	 jWJkMHS/zz3MBR1TqwkPYdaYlxrnMq0PQKDdKgqYl7CPFe5TlGTR/mk6HfyWSWS4re
	 xVumMpO3W3lyn/hQql6GJlXDO7hg0ZL4guE8U7atZTsCaYxXc+SsxeiP2OrFjMBGAP
	 74pcbyvcZYYEDfolPIaQi+6ycWI+P+AF9z3ZT95oUrpKDxAmarh2+x9h/pU/0TA6+a
	 ArcpWwimjXZsxHKqTcc2XcIpdfIVCY/mTrZDcemfAQEyQ2zCRkh+vLGUCoYJCP+ZTS
	 kgKBe/mg2l9fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF574C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 06:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171687866276.27563.18382148027671093893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13b80fa906f89fddd39baea206354361182d8df6d5d0d3937cacd8a3fbf3ba67
Date: Tue, 28 May 2024 06:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716878662
