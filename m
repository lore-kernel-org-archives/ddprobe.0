Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8A825487C
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 17:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780595074; cv=none; b=Lz0dDDOn33G0hTNRkOlDO58ZYDqZGkeZ2P4HQAJNnFTXfzbc74aIB/LhTncA+iuDjgF3HWQNVWKRtsfJYmzFu5/7AuqTEbmb3gyVI6mZu1dkOqTA531mjX+VeUEp7McocZbeDH4csq4+uO2kEIBWK+YnXO1cVF3s8cem5GZ2I5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780595074; c=relaxed/simple;
	bh=OU02KagkmPdKwDnm+DwXPV9oseLiEqZICSZT9zTkrkU=;
	h=To:Subject:From:Message-Id:Date; b=ajnV/CZIHKZJA5/EGDVVzTvZgqMEDmpCPBFpu4zNMcdM7Rs7WH8UvV5dLXMfPt4f/7a9LiKQtKbdFlOlv7jALcwMpjXQA++xMYzRCGr+mENLyXif2cBr5h8EtrUe52hlM0L7gQ0VUB6qRiEVm67sHSpz1Na/5S+CbqyAaJpwGok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=puhprNAD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="puhprNAD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3BB0C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 17:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780595073;
	bh=OU02KagkmPdKwDnm+DwXPV9oseLiEqZICSZT9zTkrkU=;
	h=To:Subject:From:Date:From;
	b=puhprNADOtxMbJSVQbjEzSQMyzOzGYHClvShJwdPYP130eYXSndI6QyPR4rp8cbTD
	 /ycmVWSIOnf5SNqFbJLhuQ/DvtLDbbqkNg3RCS+XV/oa5uES67DJyo8Slj8K1b/p+N
	 FWuEy2RxT1fl7L7khTmprjxrxIfDo6exmU3VDQuES5/3XZFtdl9/X1j87qTgaMyL/D
	 fIAby0+B7LHgjNqzTS6Nl3w6dEh259/Q3Q4h1HEiBAmZhVjuzHAgsyh4/PH9O8omYc
	 MtMpY1Fg4p2W5YHbjfLMhjWXE1atIXFhnMaiIK/MVXaeu36oWw/S/pJVhifGfiBRH4
	 oTgxFj1Vfl0cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6CECD6E75
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 17:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178059507369.23834.16638084991746068375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2158cc1c9f90d037fb0f2f00f950b800c5ab129d2b3425eea757b6b45fe8ea3e
Date: Thu, 04 Jun 2026 17:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780595073
