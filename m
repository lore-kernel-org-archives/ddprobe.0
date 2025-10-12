Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF4D22097
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760291394; cv=none; b=fQT3y3be1YpqjGurfJhbd3tuLu0n9JR0/SxKzFMGLgGuqKI54WIGW17n0Cd8UMq3ikIlJabYB2vsSFI8ZpzKv2AoBIe0eCm+m3PuRvh7u2tQ29bmKcdW4bGkFzyc+OW9eApUraRrUh/3OmAFSIjzb4CVT3N6fiWiTjyKy/gCnTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760291394; c=relaxed/simple;
	bh=AZqPKlZ6z3lhXHvRhSe+F/vjMTTF9T0H7Vxz1LN6ZcA=;
	h=To:Subject:From:Message-Id:Date; b=NwD+4bsnv6/LTRapn/IZRTE++eC7hqkTCwjQYT/3mGt7bI2aWieNqhkeinCFhaPB5xplWPpclUQOxQzYjgDQhBBh2C0rYH2xKKCJ13BzwxxIhosmm4i6BrkQsDaEp7cbr9BcpXW02MJ9D+nN6YDhRxLpmHo7kB8uwT5UDXIFtyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HDr6vM7U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HDr6vM7U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BFCC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760291393;
	bh=AZqPKlZ6z3lhXHvRhSe+F/vjMTTF9T0H7Vxz1LN6ZcA=;
	h=To:Subject:From:Date:From;
	b=HDr6vM7URBQz8yNsOmjwai0HF6VUe2JLD96v9rhOIpGjGLBNO9OFADCddqTlPPat6
	 23lBmPcpJkuLWamVJSy1nyf87RcRFS0A/enD6Au5acX4EKgshIyMNvyWyLpGlseJp4
	 W6wEWdz0En5qpFjvzQLC1CyxW/InLn0gnuvkobiaJ0BlSBQNzl38OC1FxNywLyG0X8
	 z857JdgdaYTF3k4HW5TjBSaFNFlQYxQS1bJdpxV9ZJ3h6SfGQITell9Xt8MAA6aLya
	 c51fQMhGAQNJQzVR3cTTUMPTRLfQkrBUR78DJJn4Q9TG+aKZdecxJojzVQ0NLlABbJ
	 g/gejmJGh/6VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F1FCCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176029139357.14082.1780845619656844185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94d1ab62b4ecf1a4e02ae01b2672c7a2c0e1fcce765e40b4df89230ccc6e1ec0
Date: Sun, 12 Oct 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760291393
