Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465E138F95B
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791668434; cv=none; b=H9FLsghnIATZfoCoHm0sO1ESW9oxJe9XKs97KsruJoztyf3rJ4KE0ujjkcz/EqLBxDk0k+6JYMgcFVncBPcLq4L65APkjSJ/npn1x+QhK1lMZAlcpPIx//4RPXrstVpOnM6WW16P5DsGy6I0zymGxw8VRwvf5BsjQs573J6GETo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791668434; c=relaxed/simple;
	bh=XP/H71aslfOPqjKc+CIwuEmFGTdSz+wq7Dim/e095/k=;
	h=To:Subject:From:Message-Id:Date; b=e8ZFNKf35ddI8oSQdqo5uGI8aWsk/psMldsOrHkBE6Wn5g1gz5rDh3pG3trhOIzBr3NGs2iBRwb/tTTMtGmSLfvYeC3Zaw3hMvkQZ3NfXZ5bxPliJhicPpupr73hanuib+/+9GfHbe6efSvwa+pBZ/v64VP0qVWh+8BhwQXf/jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KUduKU33; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUduKU33"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF48C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791668433;
	bh=XP/H71aslfOPqjKc+CIwuEmFGTdSz+wq7Dim/e095/k=;
	h=To:Subject:From:Date:From;
	b=KUduKU33XStrAfqnskR6V4a4Oda6YgQWIUOtik4FxexzoUzUZZqh6CO0VyEVS2pKj
	 tfbEsy/xG1OFPkVHOx8oi4YgAqP335UsCptn2BZldJ5lYeiuo5Pd2+cWzkcBNy+5zT
	 HrKH+nCP3CNsnFcEhjeMUP/CZzd4/2sMqZ6iIMVfxsS3I8WAwhyQwGg1mNJpZwU6hP
	 wBi/o4BqEQdlYQPjHpTXoj+jDt5ze939IX2vdpccwIaDuDQLvOvCSAaxhBqo8Lqxzs
	 np7FPzEZPWYFX3lXPArxGjdNDd7mXEkBXk3DTppVQDEDRAXAva66ZL5lEgKAKlfqBD
	 purbtH2CVhPCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF9FCA9EC5
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179166843369.16644.4067654331055017978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 487f4b7631b6871febbd05e72266a3b23a0053b1e75d6c96443e7feb16908ade
Date: Sat, 10 Oct 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791668433
