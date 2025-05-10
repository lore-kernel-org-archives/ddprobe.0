Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC852E406
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746892794; cv=none; b=fRYdpyUFFktW7w1WB+l7V6lLh09YTBg3OIhFyo70yjPP0xJKzAvEOtMZ6FPWkQ0Xqq1GkioCswr1STxBblhWpCa1oJQeRCmDc4DMrz3tB9/8JFOjanzi1nk5nQCTBvDvZSCNhyQpkSja9/0tzq+JwcKV4VzGmaONEmaLAgyBVEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746892794; c=relaxed/simple;
	bh=zqdgGM7K2IYmjJf4JhYavsMyxIp8dwHxukZGtHjdrkE=;
	h=To:Subject:From:Message-Id:Date; b=DT9l5y2OpyZWoby2AYZlNHlcUTzSuBz56aO74mKzWuITAU4w0evX+RF+hrVC7/GGZUvMCT0XwIK5F9GZDgnKKZSgnlbIWYcZXUMCrBqpqj/39z/DOcK+fxwF7H1mfOITj2REuqPqKHEg2rsyXMQRjNstPC33K0Q9QaRHf0IZm4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J94QKYGN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J94QKYGN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01B1C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746892793;
	bh=zqdgGM7K2IYmjJf4JhYavsMyxIp8dwHxukZGtHjdrkE=;
	h=To:Subject:From:Date:From;
	b=J94QKYGNhJ8lu0DKGXA/aoDrIHdQuWXiMT0dNKu5pMV39cXOiF913LkERusxeFhS7
	 VmY2q7/MzP05bf6O/8t3jOrBSD8KfZPwbmO7W7CLuRprgJn+M3YNZgY2UjyzqUGz6r
	 WdkGHevmesi3KKnFWVhhtDuI9TDp5risjT0Vc0oOLfgfOvex/M7DuBjb1k863TP5oF
	 uq01rKgq709r3PWc5nYFpd8MneGXn9m51silNAJfFHmBAw1kXBndNf9OGyKqLOi4cF
	 ngmEuVTeG0CJJsB2lDwLEVQR2dFOtYtJaueY5g92oe+q9uq9DgmBj/BLBS2BX0BpGX
	 Q8gXyEWIHQA2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4E1C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174689279357.10214.14793029036096794365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db756d2ef69b89e99c3e797cbb44e711b0b2d6d8e1063ce677180b66ef393a32
Date: Sat, 10 May 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746892793
