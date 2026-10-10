Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E55547059
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791591034; cv=none; b=WhLSYb0+5XK1nChRVwJqAKIDIyD10Un88QKnR47sZyHR9gUSMhUTzGSsxqZhcHKQUW1x7EWZuFGuBqLdelJw0gU2/3iYdYm1WfA5XrVnEYSJqCMaHQyAzsvm2ysbrKGrwxZjP0jhghveU5zjmSItZx4O1ITJdI8zLvXnH77F4Ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791591034; c=relaxed/simple;
	bh=UZvjMqq7utn5Nkm1a51Rqhr+/OWS1YbvgQi0uyuhhUM=;
	h=To:Subject:From:Message-Id:Date; b=HtbuuDH4O+TCj+2uW6ogQcrqsVhRKlIaV7yPI7ZPudVRN4LnE2T6VP5qcJ1ruqg5vo74NtbDsEpIROLPHry++HiKibbo5EHbnU+ByMhdQt8MfmgYo+oX2sG1wghFnJb8BKh5bpSBSkvJeVrC3Kp/o4yPycIELd7ZOc7lCvAmC2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LrOIdEyG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LrOIdEyG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66D9C2BCFA
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791591033;
	bh=UZvjMqq7utn5Nkm1a51Rqhr+/OWS1YbvgQi0uyuhhUM=;
	h=To:Subject:From:Date:From;
	b=LrOIdEyGx2JHBd1iaC3ZAXFEUVesoqW8dm7+8a8pv4bS4doU5Hlw/zZLUd0EdCKy4
	 8+JgkxUT3i0th/2NgBSziSiIEEXQsUyqcx7ibZPfnPkOKYd8Gt/kp3mYufjT4wp8Oy
	 HOm8oOKarYqd+DCzZ8S63ud1aA/umNJ5F5rydynMUIfDZVVS0oIwAXxyM0p1fyuiiR
	 1E78IfTAGYR7hqDe0rluztzyToXhv+hDTWGP78vhLozb+CQkakz7l0WgAON23L3v+M
	 e7FOxkHsbCQNWe3/em1hIu9iJSknhOXKV8pYXT+DHuwHtdJ2Kb7aJxMXB1d8A1lUJK
	 4b0z/hgEIsjBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1FECCA9EBB
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179159103368.6188.5798033620083513112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38853f7f67c0bcc6e9ce114168f3868e1ba351a9f08c9b503547b831062b0531
Date: Sat, 10 Oct 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791591033
