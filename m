Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5230C4CCDFD
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788744034; cv=none; b=LGE1Qm1dsIXagfKhLTT3Dxz1c5uPbPR1Yg/NVUjKkxN/HEbDq0O3pVijRcx3OsIF+w8gLWRb6s8WGmzCCPPZCUWRzE4uFshMZgB17YcwQLXYXXfF8vQ9CMF8mOHkVy9vv/c8IrB5VoiDPm+xEjd7508poAHmJ9WJGfWSUBpof3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788744034; c=relaxed/simple;
	bh=tG0L9J9fxEeVKbF8kirsbm7mISlkfYTzNgNtMjmy9Oc=;
	h=To:Subject:From:Message-Id:Date; b=jq1Cpu/WXACbcYZvW/ziJRstW5GEoFSMa57BMVwJjdnYxlmjFQLLhzAEEbMvGDmCJgvRmUfAvinp+2DLugVcJCVko3HfLQaivajHvnHJI0jD3cy1tORZy0hPe16QHUP9iyAKpMx+dHIsUF8K/yYm5esTJ68CdL1LDYZrPic7ZM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PF8NuQ57; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PF8NuQ57"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE7DC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788744033;
	bh=tG0L9J9fxEeVKbF8kirsbm7mISlkfYTzNgNtMjmy9Oc=;
	h=To:Subject:From:Date:From;
	b=PF8NuQ57roh8wyZun0ArHJmq566ZoutI8pQoFUWLHpLgXziMm8Q9DzyUyw3CpImTz
	 7KbKAgCsLya9N1874woDjCouXMF9pXhRQONe2V2KyqkksFF8G0+bCwXgZUCtgQclfs
	 rPXM2WyVPOZ6iijjpfCyRgO6g8lvFzPDwJjY9ZNGHEUA3EO4pKZFScnh0eLvy4lvic
	 uNBygO9gDh/tDZZM5ewTOPKxoSob78TQEHmBhp7l5AfXBJI5+8bXA8pJyLUIf3B/HW
	 PWmTUtOiGmaxeV6NrMpiB4Ftwo65jHBixvlfQE85F9AmnW9WtV/fYwPtkYO4A7IpHS
	 cPLWz9nsiujlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B95A4C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178874403374.15438.9984123811829683575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cef8cf41da87138cbb54b076e5a65ed6a2a3b650ba572f0968f0a848f80b7803
Date: Mon, 07 Sep 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788744033
