Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215EB2BE043
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 17:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778521834; cv=none; b=GbM/szxbsagBwjOtpSqJxcTjA5jwfHED/PFvR552DxSKBD31mUCpgVs7jTiVY/ROXulRZFsGlveDDcOASzQKE8uJq5sOUYzFiWq2kj6aI8+44ilZb+QWKS+QCy16UYmPcgLujMYT1l4b1GgLcM2xo6VmjtdL33PNH8EUG+NpYtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778521834; c=relaxed/simple;
	bh=dZewcW6VS6ULNamWOqpsiIVn7ER5h7ngUnXTanrKLKY=;
	h=To:Subject:From:Message-Id:Date; b=I4N7hb4BmMHD1aC0CWiuxarxgvjtkP/nLYKp+p8FUYHXNvqP5X32PGOfciL9f73B9h5WWmrRO+cymZt6tneP547djZ/NhLeF4L3ogz9EN8nHA2D5ntzXq8fWhERnTT9wh/NzbJfYjm7LSvOJRzFuRWj3ZtSrDVDYXCbl1d7iFKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXBpVtj4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXBpVtj4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBF48C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778521833;
	bh=dZewcW6VS6ULNamWOqpsiIVn7ER5h7ngUnXTanrKLKY=;
	h=To:Subject:From:Date:From;
	b=BXBpVtj4E/Fwl5/sgmiRaaQuAllNhZx3Uuzla8Xb9GaiVR5fZJStWxqaYe3eN+5E9
	 1pD3jRP2zxBH2btgrhuJ0FnRCkvpamw53eRkbCqpK32iKGy75z5OlmYaJNT7nCx+DS
	 CEiyDwLy6Wtz5pvU7EHh/lEOT0ojC307nAcnrh0DuGhFoRa4kwkKP/C01Lzj2/oTJI
	 UOFLd4ui+J8v+vtWYtsYhNqb+KC46sO5BIo4Th64YFKEvr38I1eAsZj9MQFhgqMQ4g
	 V4sESFxVhKe/J/e1bCmrbilbhKWpYjEahrfhe2Dp7UrW2IrDWnUQjKwkW9d6ZxnW42
	 c4pb0UqcLIq7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEEFCD4840
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177852183369.8762.17961455107266118586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c2155f70bfb32dad8a1aa8100cb786e7f13a18172134891f0730190cd27cfde
Date: Mon, 11 May 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778521833
