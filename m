Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287623C26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753749594; cv=none; b=GYlFuJ9vLxi8nnDI+fy9Jm+nodtvBQc29AMF40VQQW2gcZvPaS8GYCKrL0HvUjxzYoAiILJxr1wKmzYHsoAD583udi3zS8uisfJ1buSEPc6lDFq/IBC9ex4VcNT5iIek18X4wMXu15r6dver/HiXcKvBff4wUjalDMA2PnUxwsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753749594; c=relaxed/simple;
	bh=u8GbzJmGToc5EkrINbqa7Enu/jjnzTcdsyKwBaof/xw=;
	h=To:Subject:From:Message-Id:Date; b=FKr2OhE+386HJjdiBjH9TwTqVeaek3qVo1O55dm1ySGiNNSuYfXQ5MNRSDaX5wRtP6iaC8sN4mlltgnhrZyJqIZ3iyfB809iwWvutgZEvAkfJZaHwH4iZvldrMA2xJkh7x8rGzKjE2FYwLFdCU2B9VmUnixhDLgsnHJRKgY64YE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VvqfM3YE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VvqfM3YE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62CAC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753749593;
	bh=u8GbzJmGToc5EkrINbqa7Enu/jjnzTcdsyKwBaof/xw=;
	h=To:Subject:From:Date:From;
	b=VvqfM3YEIRpuSIeoUlycP60R6w9v6dFoM0hqOEiGENrXDKQoI7sMbG/Rmo9bVDQKv
	 tA06Fi63O7KG0pfK2Np/Cpq5aAD9jbmhdHnzXx6ZYtlCklBZqpUuzAWo+8kesQAt6H
	 9geQEC1qKqJ9/1MQjMrh7Xhv8Pru8PGP6XlTYv4v4Cwh333BJKyAXuvI5XI81N3Bbo
	 ADD2mahvjni9//CLpAh/rcrqDsJo3iHERa6lthGelQ7i5oqMqEv6Pm3tQJWEA4zqMr
	 KIdAeB65AbBz09WCEpVNPpbe5gdfX+AA7mdJyNga5V7PtwMYsUrXGkqzmDez5SO9wT
	 NTy3pYK71tEOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919E6C83F17
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175374959357.9182.15226901370015518994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ab4e0ecf16b223c5ce719b5cba724c60ee1d5541743e2cfbb41726ae6e5b48e
Date: Tue, 29 Jul 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753749593
