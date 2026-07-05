Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54DA864AA4
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 07:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783235914; cv=none; b=nXGRmamCyHulLrc/2lDzqZvgVc+RYwCNdRrm3YxInCoVJJiFY9q7N6U9N/GPGhDppX/9th1G2eYyPsTl7H1WT8LELRTV9a3ygLIFjlw6pTxt/xw3EGkgSPSfuUxbDWxVfMKnGGlc3qEnz27DlGWWR1TJWpgGyyujAuiCmSZ6Y38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783235914; c=relaxed/simple;
	bh=Wmqsnnjdtt8qv6mf1fhBJDVwP7+frgVF6Y+PoUSYGR0=;
	h=To:Subject:From:Message-Id:Date; b=PuEOh9hDEJ5dB1HyCz8V8tXZq4//FzQxpwja8LB/QeYn0m3jtRvVn2ecD5++KofdP7aacRaPTs/32zUvnD6/pnTMv+6lz/jpYlDiFqNKeb/fR0WUp7ISghUzu/kMqP0WDXhhczFG/4kJF6K9j6ryGdjxiA6lY1ZWQzLOb7rk6Sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fd0Spmen; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fd0Spmen"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C35C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 07:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783235913;
	bh=Wmqsnnjdtt8qv6mf1fhBJDVwP7+frgVF6Y+PoUSYGR0=;
	h=To:Subject:From:Date:From;
	b=Fd0SpmenCKXRYNHm4miVSkykZt69QfdRqSTmJSVI01WIr6I7uxu0MT5lZRc6fUysp
	 hyOrURaaIcttg3C0y3nTbqVCtttJlTGGtNB3DDY2u5KC45v2QeM4ZKuAKMfca5GY7S
	 Z3OUE8RYvV8SdT4+Tuj9to5PHnxGyqp7pL9RVw6hOMNMBMYhfBnZX+RsQjr3CwLx4L
	 +ddcmcsf7x7N+8h982BHSKE1aJuRKjPy5/3XDalVFHK6vcswp0tPR3omhrasUS6DNs
	 nt6z1SPizfqJ1gaPr9T7IF3Se40S1JdbyRlv3ZGmXmNeL9hw3XZ6JLN3lY9VIMJ+I4
	 p1hpmwjT06Y4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7F4C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 07:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178323591368.15741.13933014945637043338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a734839f4ae87f41d0c5a1fac569001dd456f438e4edb210a129dbebf395390
Date: Sun, 05 Jul 2026 07:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783235913
