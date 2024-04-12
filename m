Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 506711FA4
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 00:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712883563; cv=none; b=E30BwWgqCqrw15P/N/x7nVVUIMMaBNc/Ti6sGkRWNeb1h2LEa3fPRX9heAXuZp18PHkkZIerUEduX5FDh5aqW+ZA3jwpPUOCS28ipANU7x9UmuaAxh9TqnBoocT0XPhu+R5427dr+err9HaKUucfuceL00HNGT7hKczVKWLCXP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712883563; c=relaxed/simple;
	bh=KjY//7MnKoLWk3SKpaL96dvUBKz49wmkcvzc2Iy0n3M=;
	h=To:Subject:From:Message-Id:Date; b=kVY+F/V+65cbheMeq5PYXhqH793HA1dJp/4lzjhtcabgSNO8m3Wc2NGfuFMGXZDAnY0m4ZLjtK0bGzjJsXCAWv/xuXcJ6PSMvTKXwn/s2FPyK+3RIvspuPpWKAfPHJrPbK/C9xBK+EZtbWB4GXEGj9MfXPQXoPYsrlVeqx4L4EI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZvDK/h6c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZvDK/h6c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD6AEC072AA
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 00:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712883562;
	bh=KjY//7MnKoLWk3SKpaL96dvUBKz49wmkcvzc2Iy0n3M=;
	h=To:Subject:From:Date:From;
	b=ZvDK/h6c/AjDusgUG+8pikwM85hfCudoagXLf8REMn481OKvDapGtZcs0R+/4LcmF
	 ZfOXl6WOyEJShr5DHGHhttkGfoRBYYUSo/XKZ0UYTPy+Nm8kSV726SSNGCeE7WVIHc
	 JCIeXojcL8lqSI3BUh6I8S2SUQYAGEv0o6gQSXmoncKNeooGl6DB3NAKw1ZItVEUrm
	 6Yp9C/pFVORg1lFSrio7h8hvpN+Rnnl1WzxNXVdK+j7ah8kd5xviFu3E+j6v8jvoMs
	 azQIo1GzNrmYqyIW0bCzSSniy2f4WDB+uSpe2VdPcs0mWwL0oySa1EAuD3Q/OA7fmh
	 h7qgDGngiZ4LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3153C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 00:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171288356277.18291.11141814444250290120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3696ecec62d10d21028d032fd78c98a8f675656bd07dbcd54b6250f2ac87e72d
Date: Fri, 12 Apr 2024 00:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712883562
