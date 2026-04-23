Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBF0120F08C
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 12:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776946653; cv=none; b=FrdLxF2rMjdzw6BYU0eWznczi6Ki060Suc5lzESsBjPiMI7VCALrm1e3FTBTDGYYrvP3yY1uSSs468Mp6t8ujdjAy/NGRKR7fUyXm1qHA8QMZ7DAko2eJwYuZi3mSudvmWciW0v1mPCsIrupt+6f4KL+mYhKPpbkuFpQ6ceXrcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776946653; c=relaxed/simple;
	bh=sIevTbE72NjtdEnYYlo+cj8OCWSwFSCpiyT4ut2zE34=;
	h=To:Subject:From:Message-Id:Date; b=TbTkuo2n/Cw3Lo70G9aWnggVvZSGAbBlv2HBOnqhtXKJXunpH1a9acSTtEZGXfctvt+4GhlOe3oSsi2kgkYIq2vuwfUtBtB7H0z9ux2cfIoMDNDEdY7x4CaRCd2VqOzfQPHxGCvuKI1DEB6WFCYz/ZjsPBBsRpGZHbHJqARzROQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hhrVQi0j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hhrVQi0j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD52BC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 12:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776946653;
	bh=sIevTbE72NjtdEnYYlo+cj8OCWSwFSCpiyT4ut2zE34=;
	h=To:Subject:From:Date:From;
	b=hhrVQi0jaKlNb5M+CMF0w0u+7mYpYVxtl+vfi2zHiVflBskZvv4/w31GMoZ6TJIxn
	 yljN7EsHvQ9Vui6xuLX2jQLtgi5mS0/rj1taGbnQ0OYihyVcQuaUSrJHYRxbUB6Mtz
	 5m/sSTeAT/xqctM9whQI4vh7/RJoUHzExfd3UqAMpx9MRFyYgQYy0SflgY6eZGnTqu
	 ILgmW9fiuG20YFpN7vFGpMV1QNxcl6zT9Xg3qNOrw4ZAtMZTqNp+TZj5pHaphOi03p
	 gdTaXAXd4TKajbNPjZ36vgCsjRbgW46DIz/I/ICgG0WfUtnk3FAT9tltZucxKMWC8U
	 9XR6CnIRN5y2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC51F589AE
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 12:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177694665368.24087.3934102449159872397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f22cf5e63b3a065d207fc8d28f5550ab5c7c95b07c309c0755e1252d7e089e2
Date: Thu, 23 Apr 2026 12:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776946653
