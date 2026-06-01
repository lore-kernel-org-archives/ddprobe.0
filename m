Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0112D2486
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 16:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780330474; cv=none; b=CHQernxhOQqShJ1zXVHxAC/5IMtSC+3lyuuUQmHD0O50pz4BXHTG4KO/J4XrRnR6tHKQS7RR1TNIeElSOnq6viMWqKfmjQbl9CcfvXF+i1T64gyEz4tRBZDUCBBIHhl15IZmA4K9V4oBQ7YrNwVs448DTGbfcIuLL/2oVdhQG0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780330474; c=relaxed/simple;
	bh=5/6TtZD2OliV1UCytDCRlZMG4q0mE1MYL1chckLAM0k=;
	h=To:Subject:From:Message-Id:Date; b=Pxj+Ta29AHDsn6A4lENnDzrIFO8SVcpFvqWn42NdbflvgDU2QFknb5N4+3X44oznEiUyrlnyz7qvP9k6REcnG7oLocO/+IuAcJLUGC8uVCpCn+u4d9Bawyy+96bpnKdt14SBrShrSEN7jfSYAh3zSSX6IHXqQAJc/CYlxCMoflU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=riZy2FQW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="riZy2FQW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7D0AC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 16:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780330473;
	bh=5/6TtZD2OliV1UCytDCRlZMG4q0mE1MYL1chckLAM0k=;
	h=To:Subject:From:Date:From;
	b=riZy2FQW6gamnrVtfHo4vLeH6YyPcZ/SpU3yQSKOTg+qqsCXQEVA3x5DL9BaSE60W
	 Xfq+zCjHU35/xEXOAG8a6tCnew9Nji0CCueSk30OzS/xwjHIRC/W+YoCjLdIa8HoKu
	 hhRWAkxzbZUaf25lQxXnK/lhbCtuadCny6/04CAZUH1C7yYnXZfwv8Hm+xsRhRGbar
	 t3ea+kwQEjFFFyXLu1l6hTDOPEiRqWKVqqkKZgE0MIeYy5XSP2TgOwU7nGnn4Pu40V
	 wOCA4XqWEaoyHBXo+vXlABvRay2Uk1S3YPxY4S2kiyywxz0KqydDWx2uZIPUw/RlGJ
	 ySW3QcpYdYQNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6F0CD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 16:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178033047369.843.5602560487670703840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f790be278ac3d5ec9ca2ae487660b3e41f8cc67dda9bf78a5bf55ddd3ce4e1c4
Date: Mon, 01 Jun 2026 16:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780330473
