Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507FE34575A
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785478234; cv=none; b=c2UMdttynq3tD0irPqVIeElX3IyqynszqQev8RhdqVu3oSxfqi7F5OHkJvl056II7flgrczF+In9tzSRHy+1wCsBHhnzfGI+i34ZjdH6pJV9FLyEh/DOq4r2NSc7cD+RGt4j5X1wzLkYydfwTBAL4PPEXwaEVrI+V9pYISpO7MI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785478234; c=relaxed/simple;
	bh=nnjWbpilowvALJGM7xMSOS4LDmy3PJ7udHzIobOXUGA=;
	h=To:Subject:From:Message-Id:Date; b=s+aCMLTm1oR8FtYEeMi2CMaXj2f0bWQtpkbl95sB4WjLrrQN/X6zc/oF2sMxy3OP8LK0oE021lyAz8vskhoQfclNOj1kTKeSatMkyGqT4PaJ9fVlwUBivtwfFNtH67BRyscT85P53xwX0T9TT/n+2nWYhBu1z54igAGXePD7gHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MlwUlN4X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MlwUlN4X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED28C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785478233;
	bh=nnjWbpilowvALJGM7xMSOS4LDmy3PJ7udHzIobOXUGA=;
	h=To:Subject:From:Date:From;
	b=MlwUlN4XUndQdGQh4UOw8g2xPU5w0M2wD6bHUvWccdLrVm+Ct1H7axYOXOjnR3nY1
	 CHF0jkIrhrIsmwf+tm3KDEUceiWl1OAOOJVRyBmonChtUA0160Hs9We8NJhu16rvRe
	 MQcCfnnyLlPTbWYSdnaUg7UAQ1RgPEGj260/mom9N1+yelIxH3Opb7i1TpAoeY6UWF
	 4ZkWmHD+mE15yqA6mNm+Po46utPb0pNU2uXeCu4Pg44+ZmEMeeVEhWQVtoN0Dndu6H
	 /IxSR/F8La0bq8vhd3jgDjlPOQWbOvecw+8uxhN+yWvFRIo8gIdd7h0wA2R45g/0RD
	 QQ5IclUVsXXiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC01CC54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178547823369.5595.5029067670771872790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc65d1efa777487e37c8aa45ffd2c8d31fe1c28ce5df5165ec250ab1c1485975
Date: Fri, 31 Jul 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785478233
