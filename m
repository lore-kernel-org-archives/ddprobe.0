Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EDDA8493
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 05:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716527003; cv=none; b=lUKl8rfAJmxbvVn3izBMG7Z+P47OWS+Mh4oJaCIezAu1et6W9U5hNGLIB7PC/tbenTeJMwkEkAbGlZTguooka60PxKwSXs3MwJkkv2IlPV/8Kxiagw0S9/keG+9e0qg4yb5WXa0TNBx4vMaVtoHqfoqrGTH8YLHPTakQfxmWJxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716527003; c=relaxed/simple;
	bh=3J3DcUrA9nqv62GU3ExpTskdVWwmRsTOwp1FPtfTqYA=;
	h=To:Subject:From:Message-Id:Date; b=B+ZdsZSHrdL9aGmKlxXynJH2Q7OKN8j9DJVaTq8LATvDSEZsBws/BG8tguPnQBS6OwSRV+HEec3zRiqi8c6Xlfj2L/vNn+YUpsKLd/mD8RzrZdXfZnjVk/Y9pfy4GD/jtgfXOvDk3abQisdwtZmp2QJ9XsvvqfkX6+BhapwPaGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EeOPmWA/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EeOPmWA/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00C74C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 05:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716527003;
	bh=3J3DcUrA9nqv62GU3ExpTskdVWwmRsTOwp1FPtfTqYA=;
	h=To:Subject:From:Date:From;
	b=EeOPmWA/QJ+WykYXKk5pTo047fbp83XXjYUy3RRnbZUl0ZswC2CglZTEH+MUHREyO
	 WZBExgNMqjaoVqSrtGbg/oamFobdOeSmHSCXeZGN1rffveZqouhcwUq9yCbet9dTBV
	 CzTvtMaHgu0VVB0aI5krZANEqBqXgLUi9F80O5Hlig6gMqRDhRjEnhzYBqGG7EPS88
	 wDeG1F9V8FLOSvp71ac73SVKLZmh5w08q8WSH+MNNQcglZ32FkPiytbubkc7jB/vb3
	 2mLoW8FQF70BBblthNvGkKbRQE6YwiYndGNza75PzfZrXxvU8IPe32cw/aP0QAJ4i4
	 R71JbpM80uAjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDFD2C25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 05:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171652700287.12777.2316880936382853776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a8cd255165135ab7d9a340593fd0c47f4e742c4766f0b4ec129a0df00b65151
Date: Fri, 24 May 2024 05:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716527002
