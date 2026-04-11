Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7174E3290A9
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 06:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775890654; cv=none; b=Oe25//65/29vOOnDYNIe+qnXnrE97N+o0y++FlHMpGn9Y5wHv9TprkCV+N8z26idM6LmSk5bsJ+3adX6JJTRUNFRT2ZFGemDpeko7aWU8Q31BzA5bwdPlgUjTr+RX4t+E0jK/a7/Kq5MwdLNrxEWuVdmeXisRof4v67yODtYlnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775890654; c=relaxed/simple;
	bh=lrGyHWJx+YmX0YxWmLQ/b8mU6bdjDxcAPCQ4N4sw1qw=;
	h=To:Subject:From:Message-Id:Date; b=bktlskzAeUSyzhdhhYnmzf5VmqLRU51cuirMMuIiVeub26XrrlwI0H0sKWbIgoGDb3Pbcln/2Zhakr+dZx+yBLCyr25elfq8ohintY8HEgaAsjJSOXYk3/s9PVIwP84abqRNj0dCvnfJ6Ukv866gqcrrO1LQTZ1z6OtDIv4vYtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eg0AG7Yu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eg0AG7Yu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C57E7C4AF09
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 06:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775890653;
	bh=lrGyHWJx+YmX0YxWmLQ/b8mU6bdjDxcAPCQ4N4sw1qw=;
	h=To:Subject:From:Date:From;
	b=eg0AG7YuMmi1CeywPIRFC59fOaa4X+Mbfk+EUn7e+Dk8tGX78/qWr1ZV1uSzkMncu
	 xxLs6tNdTDuIm1Gm+ZqjHTK9NkXBEYZF4qg6PWoXRBe3w+xBiWxx7aP19i74VNc+r3
	 pg9J+zN6lSD3YQSOnRW/KBhngj5wtwJZ93fzwUIeV/DKYLxUz491QLRRB2E3//KUY9
	 vqdypF65tLTTsi/kilzW3sL8Fe8Wa5g3/Ip4smsHgYaNU+Wh4kPHl1fCUD2eb6eQH/
	 gKJTZy4N7IGp1qUfSUzf33PknMm3aT+i2JPLcxBQWn/u02iEVoDMhThRPHznneehdX
	 TQhQRFrK3YD9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AD8F364CD
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 06:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177589065368.29123.12626790820999036554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 159dfe0376ca355a4b26d0aa78888ba91f64b1fe13e8cf85fc533bbb3d958b37
Date: Sat, 11 Apr 2026 06:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775890653
