Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF1A1862A
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770609834; cv=none; b=AmHXsYQ2K+nPQk/96yU27jmq+fLCsb8nvN0wzdAyuRMSGl6Tm7T5iPlICTcm6jQWci0149wKW37zJSpJ/Bvx7xx+E2EC5zw965Ux4hLHi4jo/1rz2TfNjDI8uEyJpZi1UkM0Uz1xcQfREi1Ymn3IDqucO9bcxaGIdgZvNKlBgPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770609834; c=relaxed/simple;
	bh=A0XXaVa2f99AqWL/yRv2PkRZn9wevUPmhLYSMQdfKr4=;
	h=To:Subject:From:Message-Id:Date; b=t2miSwUpyjglVKL9pBLX4fJULKidUd9rfoVMx6gugq7nKNMJRQwJGVm0Tv/Hl7sQYC82i1//ebSi0TIs2DdZDSlk9UsXD6gTN3hTVNA/PMKfYBM7EuyZXk+r6VDhM8oC+o/kbc3t1AVju87tgyT0TXsV46g7ug8aAT1YiUK3TgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DmBuUPFD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DmBuUPFD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6E1C19422
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770609833;
	bh=A0XXaVa2f99AqWL/yRv2PkRZn9wevUPmhLYSMQdfKr4=;
	h=To:Subject:From:Date:From;
	b=DmBuUPFDe0XzRVZ0POvejGgKMrPgNqGaf7NxqbvDirS2ofSgnMGVGagMau/zqMp/z
	 /IlDRlyKz+u5ZoV8eplr2FMMWx+yLcU9IqthkBqX2affFI3O10eAzPGLcHxqflxGAU
	 S31nwivgku5ApTG6Rl8QXwDzwolGq4jdMgE8ZmDDMs11Qaj3he0W8A9TQeSmzLZ1IV
	 Kdm+FJktllfm5WRHky+UmtROVwqghthhgOcrb52jDgAVCy64jo42cgfFcLy58m7ea7
	 3kFOBTc4KM0y5JyCu4pVL128JGplgSvBJdmqqiOW/93n1TV99/2v6hEHaWY36eAt4u
	 y6nM4nPZsZ+DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99976EF06E6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177060983361.24435.12496355626089527648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9b5173cd58275b8e2aeca2c9755c33f6fa375a048df55a4d1dc20c58b3665bd
Date: Mon, 09 Feb 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770609833
