Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67952273F9
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 00:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773447294; cv=none; b=cAech47OiHqE3XVNkbC7JYHWAkjMwXifJqekbJifojE+iWJv9Bsjywk2zdc9L6sJJMhwdtlwDEQuATNpYb9f8DL9EO6PxkDJ77cOB06c7tB60F+bHY7FpSfpKB1RSe+eI+9KUGiVo3jjmtwgFw0HcVPVuXzh9PScEy28l9WxvPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773447294; c=relaxed/simple;
	bh=DH5s3NENfA5S+pgfz2XNs0KSzuGSHsVnd4C6huuLOGg=;
	h=To:Subject:From:Message-Id:Date; b=cOGyozqjpqDUsFrcBks5AmHKszlB4yKY+kGaexbCVRVbOUuNrsJ7NWCjyjjEdbZSNthSj6fZw0pYNVdNR0TBxRQAsXRjrbSgib8LetSVWKT4ZVNRJhVorNyjinRGG2vcDVXUhIgE2wzfRE6xGUkMltyiUpXd+MIVey2ug0P4WK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lu+vemMm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lu+vemMm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B23DEC19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773447293;
	bh=DH5s3NENfA5S+pgfz2XNs0KSzuGSHsVnd4C6huuLOGg=;
	h=To:Subject:From:Date:From;
	b=Lu+vemMm0o8vPPZ7fbvnJOIJO9SY3vct8EIISacSsIj+YQvvsqqiAim3CZq4N8PGG
	 zi0qkadU1QOO/V9HsWRsewfvJzWzY0oVeleRuFQ3cqFtUH2q4NaGKKAZ1jk2hn3LEe
	 tbxti+jsv3WGIQlZzqpHz8AAjXlbuU2f/u9bUdLRR3vEPL+t+l8baXZjnjd9oy7yLv
	 fkYBVTzxkCkOiVw7s8ABWdT9NOJMc7QDWH9nM+8gMeDhLohzvqvD2zspORFdB1pD0o
	 CXk1XnIl7cQXTJ+gIfSadQHnk5hHpyPCwfWBNp5HvDEFcPWBN7Cx7O7a3t8PbMBPWi
	 i97eEwZ7zYuKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E0CC107BCEA
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177344729361.13092.598163493364214005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 794c607a1623f0eca2bf6349a56fd58aae9e175ae631e918263dff7e72c6666f
Date: Sat, 14 Mar 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773447293
