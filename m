Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 878C71CD31
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 05:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719467063; cv=none; b=QzC+3qcaPx+B3Z7NZkoWaoKYjHywBEybwIsv0N/MmiV1DJ6Gn4u8TD7R3haXNvl86T+P/N78RliaQ8iRGMOzkUWhFADeVUMsIJ/Gwxq7EMjAWD2nq+vzS0FqAhwD30UTm//KXpPD0UXtMMCBOWOW1OereKAPyRVyGdG6Gb0z7Y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719467063; c=relaxed/simple;
	bh=8D78eedEMtLfYbIIji7+HgCFg5HsVs5cBHrmDBpZN1g=;
	h=To:Subject:From:Message-Id:Date; b=ryq9zV3ekx1+Xaj1MLrkV9SlPXmqaLUN6omBItsrYar3krnhLUDKQivn+zWLps/P+MMa2V+3KaysSyl/LsCYjScsXS+yWL41A4EOwqBghNL8wDppdgzIJdset9Uw46yLw1Lq8X9LAcAcKoEbEPmQkngRuSfej27mfqMAcyl0WsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hhgWW6rS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hhgWW6rS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1AC0CC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 05:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719467063;
	bh=8D78eedEMtLfYbIIji7+HgCFg5HsVs5cBHrmDBpZN1g=;
	h=To:Subject:From:Date:From;
	b=hhgWW6rSnkWYiR0FPMGfmXtFsJybBUOuE6VWZCLsJXM5vXk92upBAMba8VG0yZLpm
	 JVxbut7eYoVcK34suLSDHkxDwhzWpPsw3p8jvENVdWOEODw+rUuSCq0GUldRHTUynZ
	 ogle4wUZbCaLjeWh3bHd8H8YERkahqMPZVWjLVS2XzkBXFcvGtBjOTtL5dWl66XnMW
	 AoX6oCSOWbsWWLvwxonDpO9Q0/eXbgMW+K6tBp9W8VEHFx7vE5OC88JPm7dQZjXZmA
	 XnlMFK7PG53pKdH2xh54vRw6aTQNwQZjHAaqJ5ntj29cMF77qhfLEACdSOzcg3P1cm
	 6ZQRagGHFrr3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5EBDC2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 05:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171946706283.28455.4146420267974073310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3d513611850143f9356c429beaf9c747fd007f75bd20e02680b2f4d7ee9b9a7
Date: Thu, 27 Jun 2024 05:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719467062
