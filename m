Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA524B677
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737969354; cv=none; b=mU2uEc6TOIc1MzEU60kuYgnOCr9AdDcjnspMdRTI3JYdLxmlz79/Q8da7qzi6AY8L3P7HC6DS01pZ+LD30vcYjX/b8EClifnl8Yner6EKJvZTHzNMel/9h5+PUgn3vLZ7oys8AGhyBZ5wyMKipLc1S7s01fY8an5bUfiyzWJwm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737969354; c=relaxed/simple;
	bh=aNEx+x2vUt448byUs93VRJ8CqyaIZ/Bj6jc0Firs8lo=;
	h=To:Subject:From:Message-Id:Date; b=QFRaLppo+KV+nE93PtyCljMAXvldgTbK6PSgqSIIRqRhsaDkvI8SSorpNL1ZoWrLwID7NykyEkTDAriwOIG19KxxHkG4zpP9pd4qiNe709I6KHQzXOSFQp4JsbV+DkcKbeFXClCQnEca3LtARhhfrq1TTrifCHxK7TutICLoAxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+aaA4/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+aaA4/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F2FC4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737969353;
	bh=aNEx+x2vUt448byUs93VRJ8CqyaIZ/Bj6jc0Firs8lo=;
	h=To:Subject:From:Date:From;
	b=m+aaA4/kX6K1m2L4VbS+Vu8G3BXxWMY5cR4TEgmyOnrEYI4J4DxoBCbvW1qIHSGXm
	 44aWZOuF/CfCLBYfofZUUOr77PLWSKhIKxl71PAPwj7TrF7eVmVefrhvshsv7P51sa
	 ZpQp2pl1ZCxM2+36gl/UY2iQExWz7zmIjwC4Ht1zYS7Q583TgH6EvaZOoCpYxz1MMQ
	 iDBZEn8N1VEg1UrITbPPMPMX+6TTbiMylz+6e9CvZBErr1eO5EWcX1dKD9B8WGB6Pi
	 gNj9YsqJBSnyYT4fJiA2GV/wSln20IPN4J9+1swFe8fPhptNYj3uwVhz6WN0MGEtOH
	 Prmxotcd+wz9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97595C0218C
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173796935360.6381.3052860740259424434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 128db4299f84c15fbd5c1d3d644aa2110debbb52233bc8e762228c6400e558b3
Date: Mon, 27 Jan 2025 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737969353
