Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18EA51C07E2
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728996354; cv=none; b=PjLT5RW+WTjIfHrx7caDF3KTFQYJKFBUPkyOWF7thVgoP69updy45vpEO14ihOpVA+yl5wD7vGQFtwbNVp5UieJbwtQToegW3uDIPcVkiaBZX4xKC/zKYTPLY2Kd9sREIjXaPC4QmDhUKM45jMDmlcat4OqOP6/g2VayKvzj3YA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728996354; c=relaxed/simple;
	bh=m97ug+Hkg1mWMDUk7EAyQ5FAeJoSqVxUg3/Vi2vIx9Y=;
	h=To:Subject:From:Message-Id:Date; b=HqEoU/8pOtyVRQ0o2o/lba1ceGBlNwLreP0IsUHYWFRiGuFOtQOlwJANJ5V3uFegeJ/JRnHLBXwgJ85h5gVnTqtyk9a4gxSprGjiyuqEhmiQQKwdGQD8bjmXX7dxvRlBrKQJv6nZgN3xuuOkTQHRo2g3bubdTEiG91+9blwOsr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tXujfgqH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tXujfgqH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B98C4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728996353;
	bh=m97ug+Hkg1mWMDUk7EAyQ5FAeJoSqVxUg3/Vi2vIx9Y=;
	h=To:Subject:From:Date:From;
	b=tXujfgqH2hI+DS0tdxPF+DuNy7ZTiuLHQ6ZbIWTvmMpy8VGmaBaARPLfAt4/eqTbl
	 X2t+RQ1VZJrgOiwR7JprYR7z2V3tjfXj2+erfUy8KBIZ7cQZ/+UFZvDA/6vDPWcicw
	 R9SxQJxnY9r4ngM8I81Pp3ClCxmZgmsJXJFESbiW+5YFl/hFD6hAB/yJUkpKFrmglp
	 GgjerfGwOBhcMcUTPpBXk4ZDaxSFx5ZJmQY/oYbK4ejZDXacgYwxZoyAVLVOJQi3WX
	 TCPQMfDT6EfIEv+EpuX7jYatlbdKTfQ/MbIvfRpNrrLyZ6d3lY2x8oav4JEUSGh0GX
	 3naTG9chGMRoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CE5D21699
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172899635359.27879.8225501842085257273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb486cb2920eaa6e4369fc38d3ce0319c705f48c72092a68797aa254965eaf32
Date: Tue, 15 Oct 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728996353
