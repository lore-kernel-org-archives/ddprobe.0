Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B24A17836E
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727423754; cv=none; b=Sc02vKaZVVG7Qd0MK0V1xXpAmMoiPKy88CyY3yBodeOJy/EpENbTcpLy659DJC7RWReJ0VBGgZQXOH235nRAUtUkJ/CkCuTuBEs+ewDdCJWJo3ETwKwVQDIyZpYyRwPy+0/xpeud+R4BLa/YYVLFaAflSmW3Gn/jqUGMwi4747k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727423754; c=relaxed/simple;
	bh=cDao8Z3NQxsQw3YZq40ZmwkUlBIX7tg7Zar0m1aUDWo=;
	h=To:Subject:From:Message-Id:Date; b=e92sHytuSUVY/HIkz/mQy+dBDjiH9b8D8er3fIiL44AaUrHmpkyyF4JtMUVtZPLkD1+xFiOacnG10p4Ptecwd6a5fsBm9XSGsiDR6+zM0oUl6vzN4ywqfTRRYpTTbjBaDCNijGZNieToZUPnaCiEwGrJfD1RNNH3x36Q3858WQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzxB3YOB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzxB3YOB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6872C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727423753;
	bh=cDao8Z3NQxsQw3YZq40ZmwkUlBIX7tg7Zar0m1aUDWo=;
	h=To:Subject:From:Date:From;
	b=qzxB3YOBhzaGuNb3pzsfJi4Sk3vM1Us1H6D709Kub3tNFhfKZ+w5Xtnt4qqkchFdQ
	 MUBVIKEKk2ucg9RTdKL859FGMA3GtuwVQ2lBLMHVdbi1K13Pn/zeCNEPjZ/xzct7W/
	 6NONqQLpQjXEQ2W16qqNidG1nnJ5H3JFMvm0wJVbp04PpjJFZ1urAG4sETy06hLF0L
	 cafUevaZs5S+B9uJAG5q5Bk9cEI6l7Eyw4KtZ/nZDywlzOs9nskYe5DLGY5zY7MHDo
	 kA9x3zCqzx0pGapULXMRMamy8AEuWbLCuHQEi/+c+OdECZ36FEInCIcXrE4PJmG/VF
	 rSzbrC0ZuMg7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3B01CEBF7D
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172742375363.26404.217231262422794101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13f886e79b9b6d2c32dbaad1bd1cf72c89088e669d68613c29dc43a16863c61a
Date: Fri, 27 Sep 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727423753
