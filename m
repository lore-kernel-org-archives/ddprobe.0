Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3501E1CEE8D
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737534954; cv=none; b=QfDLJZPcVCZt+2amfL/rv+gr2gBRhGVPz3e7wVM2WCAmmxl2SePkW1BQZI9Ss7+GRAyKrtKcL2fUI7uqLkD0TRQw4IOUfboYuu1/lUTGOMFvWYQ1hzofBUJ9Rx4P/rEzV1ISmazJ/SJqMbDbp5bBG+3gpTVMkXMGxVXki7dyBUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737534954; c=relaxed/simple;
	bh=XbFf98zJeX0v4tRKAtYDFb6nDSzinnrEwEvRAjVwXzU=;
	h=To:Subject:From:Message-Id:Date; b=PDMR7ASj/Ce9efo/pKlmlngvpGJt755KEL5tthEYJCglzyHAwRDMAVcTKYa2PKhILBpVYEWgAF7/fRynJd4L7mvVoZM/Y5HKVxU/ADMnCfn/6NGoOLqRuxOwnwS33xT1CXNjKWGawbd9dWFx8jXCLmJo+kn2qsyhU8Z5VolWnBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A1o4vcNV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A1o4vcNV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CCCC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737534953;
	bh=XbFf98zJeX0v4tRKAtYDFb6nDSzinnrEwEvRAjVwXzU=;
	h=To:Subject:From:Date:From;
	b=A1o4vcNVp1hXBqNSrOd9l1JIfLnMNTpac3udh6Icx/ZdM/WLjmoGViImUowk4A1vl
	 ZDFXqeYagiDIp11eyFZ2bBs28oC3dTamm/a3d0YTUiq5D/HOYpOfEoI82s73bx5NUJ
	 RfZrzn/++dektsczQcPo+7BZUW/1DyYa3KccCwkMql7ZdUBcpaSHHx2PsYoaG9G4m8
	 lkI9nwMKnFIRTh+8bHAHo74QAWofHO4rpxSCpU2mcIuzPc2AhNdahMUZ4ven9sXKyT
	 y+KHWF4uRMEzrLRtVZtBDWJJsQmzgFYcdHy9wIo8R5O7bbTUvtpH3Mnsah25OdXkkp
	 9CCiiHQUXbxpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A1EC02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173753495360.12070.16242418485115149274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af64c6bc113c8eddfddb5cca69bbd06cc8c0b73df9a3ce113f726b531d131bf0
Date: Wed, 22 Jan 2025 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737534953
