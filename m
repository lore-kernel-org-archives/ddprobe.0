Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D1334B0498
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786197634; cv=none; b=UlbaNK8I2hdDeWlCgdUzkhpkx46GQ2H5YevVGToTq3qQ9vfEqhbh2RvcStLk1e+YulM8oIm99rdoMjc/IQKC5g5NfpzJegLEnM2A+C5OovsR44YmUiQGrHa88HjIfVqe3XY3AsVKL9+2W1PyLjBXP8bmqTKJUU/l5Q9mbYZ0Vtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786197634; c=relaxed/simple;
	bh=RkA+QHlu6e4V6Jc7SLScP2DFXzPdVG1XuI4pUnR0qEc=;
	h=To:Subject:From:Message-Id:Date; b=XzCwMFMtmYLm7HJyvg52LaE/NKHJUXBkawdOAmrIOo8T/19N4rFSld95KD1057e8K9b39mq68+M0koqgm9ZzKDZ8YGnTJqyqMsQuoF7vhlLItS2sq1Ft26UG2jGHnlQVb+s4hXLHR1nnWQtQ3lhseQmKeBQYo/gJBdasEdURv9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZRmmH+RX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZRmmH+RX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAA09C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786197634;
	bh=RkA+QHlu6e4V6Jc7SLScP2DFXzPdVG1XuI4pUnR0qEc=;
	h=To:Subject:From:Date:From;
	b=ZRmmH+RXG5skeppxJiVXACb4miycvaBPSS2i9c/q9X+6Jl53mbO+z0a0YLl43F7dw
	 mTn3AwSEKuIZzsnUDrvj2sIQ7E7X8cf/ogvllM8LENmlWkiGMaBOtW5X47d972B814
	 EH3t+VqUX4CKKAjwFGbEhogB+EC4DxPKl8Q0cyTLSpVrByi91T4soaQY3F1ODWVopn
	 ISMcrTLODUwi33bIwPuaKuJN5u+377HjWXdiAJoq+/cUAqvH+0/ERwgpWy5pxWDgnI
	 EOpA+DhZTiSdfytspBM3Sr2AW+Suk16nh5fxAdjYvnA2J7tSXIIp1zh4zfACZtYVuf
	 BYBGKlqh4JEUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDF5C55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178619763370.13997.12361778695102353440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b100a1efabc3193a103aea808993b1de4b77f31fd47aa387b2b08d7b0b49c271
Date: Sat, 08 Aug 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786197633
