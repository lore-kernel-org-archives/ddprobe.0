Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2082514E2F2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770519234; cv=none; b=tym4e3n9pUBhtYz+oReJOooRLcVQeRusC3OXFVzG1aRRIjS4DCE/URu2wP2Sk2gJhuZ6iV8dIqDXBAYNPziOcM+4d7MdOMadhkTQ4E+lPlNWr2fnDk1JakBL4r5jPusswxdCaQUI+d6uCAM0I+lxG/TtJDbPG+4ewWhRNfAtpKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770519234; c=relaxed/simple;
	bh=5QgZlzu8U41XdHJlFujOrAMLHrXp2DerUFZ8tqupEb4=;
	h=To:Subject:From:Message-Id:Date; b=bHqKYS2WyjmHYBFctx0VFzi04dG+iguw46Yax4t1RhcrtFr9hcwRZ7VH8YuVu42OuUmXtAoX5XHrHjcFQL1eLziADAy+AMlfUR4xSjYDbh/Ljiyfg/Ees4hm1Bl2FYb4WWEOn69fbPNbcmMnscFO3nSvd7505l+7xPq0bPu3Z+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hlMa5qzv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hlMa5qzv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF36C116D0
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770519233;
	bh=5QgZlzu8U41XdHJlFujOrAMLHrXp2DerUFZ8tqupEb4=;
	h=To:Subject:From:Date:From;
	b=hlMa5qzvB25giaEIpab2+gjmuMLgWst7IIvDU9qSaTkmUpw0JR+qAombbmrEqFBER
	 GnndTwXrSgTDRq1wQVV0AL7AR+lOohLNZFMBrB3r8t0tj9aX9tef6edgpvPMkGJNqO
	 GnlHa7Z+Cms6fVxZpA8eSen+qYilV+/TTCr32huRKkmWaBQlR0agnTI9A8kpmJOu2y
	 N9ZaVxtWgYbH+FUqZs402GiQ4uXszIo+57vR+4EirUhnhQCvGPyRbaI6lvVXMMuVdH
	 3d1u3/ASDyA8QKgDNVKjgV5kBEG8KWRw2ViYyUcjRBqp9xZg0z1cI9t3cBrqwFt1aN
	 VRy/wOb3FeWjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B23DEF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177051923360.24281.11266631440550291172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36942b01af31cf4ce0611f97378a2d10944b8f85123ebee8e4c7133668ce06ec
Date: Sun, 08 Feb 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770519233
