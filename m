Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35905472F95
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788191434; cv=none; b=UWAYTsksud8/E0HnyCktChiYBD+IASxa2ZXevIuWY3Caaa/320+9gV/vylyCEq//sDvd85MD8wq/CLZNr368aR4SrztD7VQbKghyI4G2AyKOEfCwCyDxNZWw+VDB/pTpgeYyrejwTtrI9r/kiuNO97XRSThNvnGTbjBCOnmy/nI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788191434; c=relaxed/simple;
	bh=iyKMKIK+0HhBmB7wKi8gxUZF9dV07y1El1iYSSE4nb8=;
	h=To:Subject:From:Message-Id:Date; b=AysnY3OaGysMqC6eUM2zFKpxM2lLACL2dUnSMSMLqg5DgqI5gMFDIwI5GBlBjCEL2MRHsisYqZ6+3x4okQF256inyoqSMIGOPb+zTjo2iDdDwIQWTxRznCK+05Jz3rxnI1KWJxew6NgwhUu9mgUa5akD0eYLcS7VHku0+o/ooLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SPtge6VX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SPtge6VX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2CBC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788191433;
	bh=iyKMKIK+0HhBmB7wKi8gxUZF9dV07y1El1iYSSE4nb8=;
	h=To:Subject:From:Date:From;
	b=SPtge6VXGTzlKmPFvh9208jflGdVWak52Ezmo98jetmJisyqVl7jcRjSp9lV3MetP
	 NZCAoVNEMG+TJhVUZBFNiZPo5EmNw5FU8OY22Q5gR9ZUj7ONmlWuQB7Sg76ijPUpLO
	 YZiAdPYEicD/u9+xuOUNDDerfvImcwa12HUZM8uw8GbaAMvtNGl9raEQi7K/qDLLg5
	 N7Z6u0c2QNJHBSN3hj5TF4+i4ENVeBrHVyIxC+YA1ETYb/FaVBTxM+HFH0bGk11p8a
	 +Re0n10JB1F+TgSD2+tSCBDFZ8GoH0bakM9iZKCEF3szXDZCeuMRW3VF0TbG6oigh6
	 EpXjjSaD8dwcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAF3C624A4
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178819143369.21160.14037861726663176347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 156335cbd8bfa462eafe06f64ecde517b71df57c47ba794a55ba0ab57dcf0121
Date: Mon, 31 Aug 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788191433
