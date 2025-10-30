Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1FA22B5AD
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761852594; cv=none; b=cqpZKksr5OncCA3aCSyBfBhnfJ8sHBW1ERTvcILniXihe3CpmaRNW5MLp7vAWGMqmPG0bUWrEOwUFHT5QGgLoLfks3R60ZsxDQ+d1bggxaHKF4KRCkL9F7lYlQLsEocOHmeSwlyS+ZpXbPiEWADdNSW27XWi1zamcxo8WZ/1Lmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761852594; c=relaxed/simple;
	bh=mtgM8bRqfHdmo9DQ6HI14BNK0kYZGSy0L/x9kwjCnnU=;
	h=To:Subject:From:Message-Id:Date; b=ltF+jF6rbCESYGZeEXxW6ZZHr3NHG/PEm+ONRm53oAzZ3uS/elUDTSGgNWpZy8rbf4KShBzF5AVVZB0qAyZLKHzBJHgP2uoxeFbzPAs0S+9vv9bcInS8NhcTAzagb88W9+4DyG/GPHAhGqQkhq8q3rqKcALGwTehUXU6qxDgipA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uc2YOqfx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uc2YOqfx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39D5C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761852593;
	bh=mtgM8bRqfHdmo9DQ6HI14BNK0kYZGSy0L/x9kwjCnnU=;
	h=To:Subject:From:Date:From;
	b=Uc2YOqfx3Q3xs9SjtgkczwZSSgI1vE7z1qx/2fpwtGfJD8sW6YKsaAza7v1FZkSFi
	 8u/k6WMR9Ucoysxl/0u4AGu9PCEZGmscUFgMFMtEWQAlW6u8o1KnyAltUJjPECQ6w4
	 9DIY2hArTOib89qsm4OVNXqfInoaJaC3pCjSFIxSkfqc0NjV12HQIyTottfOqIrTve
	 Su6vO9Vr+ksd3b4lPxGWIHzocIsl6HWPVXZIwbRE9aL6+J9/qbiN4VOAPvLv5mQeEx
	 ROdvpIrTSt4lpjtxDeo6TO7kb93ubr1TlYy0d0nNLgC479uIFqTcFZUdt386DigCyE
	 Y2yFSJmbEWfDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E2BCCF9E3
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176185259358.4489.5520330613305422933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9aaa32e14445f55f1081be0c56fcb870db3ae8e5279c12fdf4c5cb7fc999131
Date: Thu, 30 Oct 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761852593
