Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D6562E5B12
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751996994; cv=none; b=QJaNlPa59w3knKbRJUawzdOdPsyLwIv7AGxx+iC2ux2wPzlb4Xn77gqRWRaUoqX2sI82tRad+uvlQ1KtU7u6uHbj+IfPCbkf08Po+guTPn6cu3Vo2dZjeXkCCnPpJIW0YpyGy5HnkjAP+m4YsZtWOFdW/0ruvQx1byzrTFlgu5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751996994; c=relaxed/simple;
	bh=8Ywz8jcv3IV5jbSnDb5n6aCCPfHIDt8aQ4xQT1OB7ag=;
	h=To:Subject:From:Message-Id:Date; b=ap5fIAQlweOZhwhgnhk4DQ+eyBm7eyp+rjUsO9+52I0wftE/Wsuj3b02KThxjI1lGCyR87H4XbuAuyNL5JzG0RfvCmeu5+YMYMBvm0CtmqffQ4qeXOWH2CP65mmma7CXnHJ18W5aTGRPWRg/GQWvs65XQY2CEB4JOLEw5k1QrYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S9EzzrpJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S9EzzrpJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AE81C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751996993;
	bh=8Ywz8jcv3IV5jbSnDb5n6aCCPfHIDt8aQ4xQT1OB7ag=;
	h=To:Subject:From:Date:From;
	b=S9EzzrpJWSQw9kYWqVVlRNywjonpNLnjZRPczVW/pXL4SIfAjOJTxXJjkTEfIUZ+X
	 kSTkT6GQcvNXu7VgR7JrxE/jw//Zej9aLpfi9+Swpiau5/gWsxSmUblnVhGNy7YbSm
	 GU83xlN1RJ/cRzA9qqKl0kO6Vf9+nTQX7gZMC21f375MjORQjOqpIvctmiDPK2n571
	 ESNr9TFjy0nIGk4COacNcm9nTeLUFZuZkoKGivKOZSOBIsHiXlAxG1K6CDUvRhW920
	 Q26bvH+/Olcci5hv1dpwD9RnxQVQcxGC10UY/fHOnjBLN3ot3NmJ2ar3PxASVQPB1p
	 jyjqhJ3+OAk+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B42C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175199699359.31543.16735941650791092962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b506955546c9770696809b166b2224f07c2e65150d56e920e672d5de983251d
Date: Tue, 08 Jul 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751996993
