Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495B22F290B
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766054034; cv=none; b=Xyhm4uJqmyDNoQHOwayJk31KIQafIDTq8/8X89mcLukkRh2vEAJSflrNhlsxIIO28qNIYE+wkm47vMBvDz4bqkH25Hr6bIcIXInhtf1QsCfAemF5i5Xhg9WuHutalkA8qfuX/W/u4N113djbpvrlZOrQ/VNHc7xV38rjtbAa/vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766054034; c=relaxed/simple;
	bh=AM8yB4rc1YKYf6BAZxd3qIWRJQX476ccz5owawYeUyc=;
	h=To:Subject:From:Message-Id:Date; b=hX0zBibzPT0SIqSUpyzpoKi7HJ9I4WZjyjbWpu+v43TAv+Yor+ocCC2xb2m6y/7r0KhmY1QG58Yyg89YfBHgf8dj/oRcdCVWD6GzXH7MtLOcvkxWQV4dS6h7xE1ltE4b0rqRKbjoddeobCgXCmzApAXayPMCKK7Z2RcAVNnTIOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZZqo2zl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RZZqo2zl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D8DC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766054033;
	bh=AM8yB4rc1YKYf6BAZxd3qIWRJQX476ccz5owawYeUyc=;
	h=To:Subject:From:Date:From;
	b=RZZqo2zlXRlyNeGdokdkkPUZ0DTmw3evJXSW/2OA0wnefCns4B1f15gzvlp4Yc2CO
	 2sgareDzFZ0VSUkehbGy00plHfdXIMT8WEAV2ubsxd8FVhG/dRfaR8cHVr0Pt/nNVu
	 X+mwQO0ne/o6p/kkM9OvGaE8K83mNPjEZ5KfF41oJEMyMwdico2kegZfdsFr/wwTiy
	 o+wBT+b4qcOB38JgyqW01ddQ+9+9ejrHIsr3OWT9h+47c14FjigYAiK9vz4wGZC3j8
	 eeujoixI85frg0709ni1VHw2ThGNtpsVnM0lbuM/HG5pwmMuBZTJj3FbvRyXBRgMJU
	 kpVL//ATWZaxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DEDD6ACDC
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176605403360.18786.13216586566121561656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9037d4e8ebd305afd6a42e735ca0589c66d7272e8fc6e4d9a5709af24199fdb
Date: Thu, 18 Dec 2025 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766054033
