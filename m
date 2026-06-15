Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DEE40E8EE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 17:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781543194; cv=none; b=NM8hUWUdChFz+E+y5JHcJiHGBDislmgW13rjcQAHA8YIAmaXcBUBbkMoaOeixPEc6Z3150Ta3zRG96YhkT+pycQz/StK6HrcX7jhCAZ8jx1slrbehNf6mNXgVVpG5LQ99WOQjvtebQAMxSr60CPp5eQpTzY5EiS9fWUaIsWTyXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781543194; c=relaxed/simple;
	bh=u3DuPlTK/RNaLHWlAq493CAAORgd3ZNZ9osd6OTUTtc=;
	h=To:Subject:From:Message-Id:Date; b=e1pzdmMhnk9aKbHcEZv5LC2ChQ2EkK5tHnKuJRMQUqm2a+ELm8jonmNUdE5hEIm54CPVWKjHv8EKDlpVT609lMPTCPV0SXbt1WEZcMPUe+9Sff1W5A029xqv4vz3cpnersdenXBNVmdJ+/i764viFDUCvqhYuvqVyyRpTp+WvG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kXJ4Ne8l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kXJ4Ne8l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C996CC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 17:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781543193;
	bh=u3DuPlTK/RNaLHWlAq493CAAORgd3ZNZ9osd6OTUTtc=;
	h=To:Subject:From:Date:From;
	b=kXJ4Ne8lQBJwJxPuMEouTtLVMwr3vebNoNElW4+o3qmQJb6yPzK+n3KJezBnkavNi
	 zZeanyeiYIXXJx6kIx6h6DjAo9TPi/tu1A+8TVBTocFfLuKHOctNzmSy36yMyBsb8A
	 MJVVqv10ycI2enCGX9FR3Sdt/DCJrVnCX8Y4Mwr/MZ7CSP1y9KK/sDDj/EY+CuTR5d
	 qvZrSCCaNoODLts1npT9OF8hlMCvOR7CFP6b9GIaGgv6xzNF1c5pc7Hp75H02MPjzL
	 KP2LRApXe6kkdFXOGmRH1wMCm6pamhBGzIsP1yjoBEQLeDBf7QNUq0SiTgI+Ah0aZX
	 RtapmyIQKAclA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD6DCD98DA
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 17:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178154319369.20192.12003687095561526078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 639e0036b7aa3b0a39a8045bad9ab9ebeabe48a61f553306bd907222f998ea64
Date: Mon, 15 Jun 2026 17:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781543193
