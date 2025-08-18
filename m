Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353CD1B4247
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755485994; cv=none; b=D+f//8Cg/Tu+8o17v8qEOwLs69mPxJ5cVrVr6je5b/vAfR21MCu5ejDEStuMXxXhV1lecF3VxgYcWBWFYzqdQE+5D0uc7Vtt6IFuefZ7/boFy8tDPAPPUkG9F9vNRi+z5H7TCL/j0RPxl6Fqj5p4cB30QFhLP9NkCujJKvpbpDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755485994; c=relaxed/simple;
	bh=0rMCEhmMNJRrePYL1DJhlVzKsGkvEHJPl5w9D7S46a8=;
	h=To:Subject:From:Message-Id:Date; b=t347f22bgVAn/5uM+c0rkAuVexLhtDvUCi8EoMquW06x/RX4/yXyWw7rPAJTK+tLWJuwOUzjOyt3oRsvA4EJJpiDhcMgR5kPxKvH8BmrbNG2ULN6kArJk2TPbjl/XA2sVg7xagZbXOr9VR2vlsVawmFBl0eVeDclXd1m5S9G954=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qsAhsqN4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qsAhsqN4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0281C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755485993;
	bh=0rMCEhmMNJRrePYL1DJhlVzKsGkvEHJPl5w9D7S46a8=;
	h=To:Subject:From:Date:From;
	b=qsAhsqN4IiY16bswLoZ2C0jVSpps3LO9HGy1Mc3lOIKBK+zPSotAn/N1zQxLYGMs0
	 AdaTq9IkS5ydU5bAZ5oy0recuZnNNAzI3HzV7LX19MfqmQ3KWCSGMFPWIY9LcFopKl
	 nxlEyVbhjd68Gj7mXveqkAJwdreXpNfLFkGU9svWme6VgWitHTMcFdV/nCaCPbN0xj
	 mUxd8IZKA/Bv/I6kg5gIFShhs4LpTBLzNGPwn4Z70cCJBpoFZUg671zFBxJKaO/sjv
	 3R7Ot7vhdCAeCAe25VjCvDQXWlx4IupYIPpFBwOGWqTPPyZX9T+x2DXb7eBRwZXlCv
	 lFTi2unqVZjPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91089CA0EDC
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175548599358.32441.4699349838462556393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf4b5a6b37297315d7cf292890b8e0679b6a2b4b20aa9fcad5bd209923325da7
Date: Mon, 18 Aug 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755485993
