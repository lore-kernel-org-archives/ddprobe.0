Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255B51FECB4
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745796594; cv=none; b=Ruud49cAlaR5GDYUSn12LLPdwasTRzcWoEfyqrcDj4mO6QYAQCGtSubl+o6r7LU5JbcPJmtK3aOxCd6TPoXIbgVE+OuS0vIg6z/jKWv0QZh0kzCKL4Fk36duNmxGSO0Kvdq7AiKiA8O6Wpw3noDj84Lkjkx6gKyCth6hlV7CHTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745796594; c=relaxed/simple;
	bh=Wz61SiqTIndYKYTsfJyFEIXFArhRhYvKdCJtFC7WY0E=;
	h=To:Subject:From:Message-Id:Date; b=o2XNdpVSgAwYtfHQuaJoAESQIedqVb07Zlcev3pht4GO5F/vnV2ppLnoH5IHs5FKKv6tgAVP/rVmpnxjdQhLGuL9CTlfniXELY0XG3zj2SWQtdL5Ju4DETAmoqXnB24PqmI6v3QsKydJVVIdo40fVixMHmRZbU+hEOIBa4lXO9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hzLnwTg8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hzLnwTg8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FA3C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745796593;
	bh=Wz61SiqTIndYKYTsfJyFEIXFArhRhYvKdCJtFC7WY0E=;
	h=To:Subject:From:Date:From;
	b=hzLnwTg83Tnxp+eeE4IDQ02QCBIWEJQ9l+RXn4hiUPNb9/TxWSZpADPz7YPOqnRpw
	 TjZpBi8KeLerpPO7dGAujZLL2g8xyjx9uMpaDfgFT8jsmqfaNsXswuxOrbrkL0koBC
	 cWrcZnAx7lLjWoug9mQM1h3sCyIq+gpPlKHRqaopr0WWjqx2a/OPlce+GaBcQz/3q9
	 9pBuAA2S2z/tfyjjk4Pe5bn5rSWHxSvtUHv7f2YEHC8iUkArXkogb7XxNqxs5tQ8+c
	 obxoCjxuKDUs/c1/ubrCEbXonfbgIcn0XrfeYXjd2L3ToX+U1FJ4M/yqOhbbS0jdvX
	 9nYq8tkAfI1Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9065FC369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174579659358.14757.2244021815301958049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b818197a52afa72f3827da863c43bfb0ef32cc8251257e1d9c84d741063cbd2
Date: Sun, 27 Apr 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745796593
