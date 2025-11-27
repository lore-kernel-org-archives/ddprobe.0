Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165B9274B26
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 02:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764210774; cv=none; b=XTJZYm/SyifFUD+afw+HoHPVke3aysJYkHztWafXVGG40WBs3juCLSUrDnR2nJSUP39AR5thVzP5kav0mMlLBGMcdcazqSh3bCs0tqqhyPxOyzWjhDaRdyQtpX7zOv7av9O8XpVaZjvkPbddIAZf///Ry/zc7IsC8shK5ZzKkM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764210774; c=relaxed/simple;
	bh=C53HQiZWcKpE7bCOGiirdPb2gzO54+36YDSdjnXbmw4=;
	h=To:Subject:From:Message-Id:Date; b=PHAzcOHiRriIQGpWHB6BBD45ecFLVOpOGIuJxz4RbftQffpbJyv+NLA80HrzPGV/4VcJ6yuAkRE3yWZ+m13TXevazWZ3fpRK1QKTvtuvGh1Pcw7pgDQzCxMXHGaew6dX6nqiFZ5uRTkeUzlV3HNdcV38SSU0G0gE5qqxq/hCihA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HcyA7Uwj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HcyA7Uwj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95E1C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 02:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764210773;
	bh=C53HQiZWcKpE7bCOGiirdPb2gzO54+36YDSdjnXbmw4=;
	h=To:Subject:From:Date:From;
	b=HcyA7UwjHx81TsmZBmlLh7OseuEHLAoyLlpxE78DjH1n5LIAKsl5I6euLSif52wny
	 bu6nPCy+cHE9y2JqyDilWdrgoS/hksWE3Ym8FlVjb17U7XwZQf4l31tPe8kC5GgzZq
	 9YtpdmInzW/XBqESWcvm31vltcXZnF+YBCKovid0vcEypjfnOozsQPdLHJvNVmc9vM
	 kGQhj6JS/EeJkVI8AvmqN7Tq0Jd9UsiOZD3sFYmjFbU0rgS99TVoCshgaAP9pbGDNT
	 0/VR1ZlVlxxjzYo/N5Q44LmZ2SfzGUHfuOAfft0NKHi2j4CQEaoGL0+YE3utXSNucq
	 QoZDJF1O0SCbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9562DD116E7
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 02:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176421077360.11923.241915927399873457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cfd178dabf4d509a095d68778353ef45e002d514245fe00610e22b66be64e77
Date: Thu, 27 Nov 2025 02:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764210773
