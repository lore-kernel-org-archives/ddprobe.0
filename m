Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5837815383B
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 23:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718841563; cv=none; b=nryGlWnPvpQbmXMt0QCnrOTLK97LY2KWFp5Z+mXZD8XVLEIsTCg6hz5ny+YpwYe/zHLiSo0r0K+8Pu7TAAaecTPsiuqcbUGMmBlV9H2naj21n7zIKT4zWbYyQaHOkwXXQSYkpfe4CR/yOunrTcfO8qa9IPEo+jKHtY9r4STpZYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718841563; c=relaxed/simple;
	bh=6hLh8AiwW/nwNXMgpknPeZIAtcPXjUpWKFawUjCSsBY=;
	h=To:Subject:From:Message-Id:Date; b=BJv+K6Ii9Kf5qNiaZ46YgkMwnpjVfl/Q5Qf70wPvgBrkfs5Jo0zpJ6gC0si2ShbwRp+5Oa9lpt6odcWhqQIIpAfUpNPKe18kMU+IzSHrZsbQWTUwaqpWIZ2+ZbmdOWo8Q6LeSY7Xm36zlFZWCc2GUA0zOvsZjd6DcGCxhdsRiFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fPVEoOE8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fPVEoOE8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3652C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 23:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718841562;
	bh=6hLh8AiwW/nwNXMgpknPeZIAtcPXjUpWKFawUjCSsBY=;
	h=To:Subject:From:Date:From;
	b=fPVEoOE8gM/6hNVAmN5ui60Zfs//c5VhkE4/UxSF/Gtjvtn9kKi4sMnkkP+R3JH/f
	 +6ktfckRB1dfoeqF+njqi+uirDmOh/kVxK1bLWgfnK5LEQMSz4jXBnzsr+a8ZcqUFr
	 0JC8cNbqSj82rV2MvlSGKbRDiRETjrNkCHg9nYU5yEczLkQpza/AXLS7efzQvqxq3m
	 r2JkpB2HUB63d79hG3JGiNUzizbs/MYzXueDo8AqKV8p6A6DS3lCP1az1WnEABFPvY
	 G5vRqephmq6Ul0yLu4kIH0ITarrufgHLmuuXcOmXer2pF3S5B5lQNWxupOGZErTA/z
	 3f8V2S/JNT/wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEE66C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 23:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171884156277.10451.201323589790601113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dec801a4ff39fc0ce2bbf0baab645bb378aed32d36012fa0c85db905025d9b2
Date: Wed, 19 Jun 2024 23:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718841562
