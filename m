Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341B4259491
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733945754; cv=none; b=PiH+xZxichSEWX0pNoiVDPSKhbejeNkR7rmg78vx5JZbUbHVOIplxWIt4LVXQDbHsGXBVjYzyZY5gMs+yX+KMsYqyZZNkGrJFCgNCGJHRXTWQ2zeqBpM+c20RzaHglLAPB2f982Q7ZR8/XISSZfua018Bsu0czVEV/UqtQJEJmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733945754; c=relaxed/simple;
	bh=ANF1Qm/rRZ2NVAgpuo+rWlM09zFmhbASJaaFJbDd6Gc=;
	h=To:Subject:From:Message-Id:Date; b=KVsxlpzcvoyFkwI6TvJplw8iLbaTKCJerqgT/rcS+s1oCcrbNdb/oC5abjudfeNJConKkwqupG0C05LypWBkxp5+9TewYGc55ZI69QrYHqUxSmpclf+HRQCOQWj/tgIcuHqKe3Qv3rXULIFg+3CVvnjJYuczF4nLD4mSoitQ+Cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a40I6+iV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a40I6+iV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B62F2C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733945753;
	bh=ANF1Qm/rRZ2NVAgpuo+rWlM09zFmhbASJaaFJbDd6Gc=;
	h=To:Subject:From:Date:From;
	b=a40I6+iV/2rK5rz7vl0CZrTNjb27Y8nTWQ/63huUD7iWrhKjhKD8ZUYArzPi99e7e
	 W1UiQByUzlfbQexYO48VI5qhEv9wj9RXwWBSRn/EgZ/fbov+G8taV+j8dBQGjDk5Cl
	 AosCzBNY+PB2S2SNflnc0umMaGdhFvwjngHIGv8SOPMPGnSpQJCQEleOBlgceM+R0S
	 Bf2chv2U15HE8HloRIuIXjfmSCdcEgYES9Xtg6Mr+FU9uSASlbvVhjNqxGXvSRdno5
	 piJ4HGGv7gxZVn7JJLfB9aDWASAGNQRIqY0+8QEcrNwUYJNRJHWLQawaDI3O4cQzVd
	 V8dYSc1qiu+3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F0CDE77182
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173394575363.11431.12450828706286456391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee17fa7e6cd9b33f5a2cf4286cb9cf6ea5362cad4a325eece4b8143fee28d9f7
Date: Wed, 11 Dec 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733945753
