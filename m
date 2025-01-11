Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0721B414D
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736616954; cv=none; b=Di2jZI9czFfBvIeNnJHRLkNNGDgYyiTFTBRCoCzj6/NLVJl0d37HsJLtSQJ9zKZP8MrNM/SqmPnjwR/CWR+EGdDkUbrCHm84L14vfthoBFKI2I8El034ho4vrHQcEUKWvqrbMIjIbAMdpLqnhJ/Bgy6mq3CpEGr5MtajcH47aYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736616954; c=relaxed/simple;
	bh=QSRorfzWEdiLbmSCf79GdwtywoqEm+3sJnxmQN+NkbY=;
	h=To:Subject:From:Message-Id:Date; b=uW5vIHC9Lbeq3LGiZyuk6wcZB9ATLkI2fnL4cH6QV2zb4196+kBhlLAe+lk66n2emsqiI06viVGVaZcVejGGd5G6f/EvylKbHkJJcsM7KMfDeu6IRXMcG/k+AO6H1N77jdwA1WX3WqRLIbpsHbi2+7Ts7ZZzRz8CMCnXdSme9MA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XpPPalmj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XpPPalmj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABAE7C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736616953;
	bh=QSRorfzWEdiLbmSCf79GdwtywoqEm+3sJnxmQN+NkbY=;
	h=To:Subject:From:Date:From;
	b=XpPPalmja1NXF2li+Rn/LvPB/qMELoPbWSKPxwY/9xTTV2o5SMRp9ITltYjLUzF4h
	 Hx3Zdf8mddCF5sWkkvRRII71qtRvx0iktTExdmARCfdWPdr2iHKYQj6Gn7QifpKfW3
	 xUKDsQHixb9nwk73re5af5wYYsSgT0a0JcWRIzXWiGyZsgAhuIfQ6rgKCen0lLANDo
	 zFciQb88VrSmAXhRLgiE4PiOIL9JTy1I36JLHUuMZElAkeKODOn+nQ9LvspcMY/0zl
	 JifBUkwaWF+xK7JrtX4m0DHmr60zspA5CcDnwflsdH7nmlQhgAfeVLHUU2ZlMhpbqN
	 3+tdHnombDY0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D23E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173661695359.20192.4310396559603009728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fb72f5a657f5f91d22da9251e123cda5b1ea064ab0e67c25ee73587aa47add0
Date: Sat, 11 Jan 2025 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736616953
