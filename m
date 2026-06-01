Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334AB26B971
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 23:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780356874; cv=none; b=i8WFEERCxKJ+K1CmELOGDMBwuDYD2q0VRJX6cFo4nBl6aPNkQYGTyMxdxn8JJ98yBE4i/pHI5b0/y8VvAGWX6u1MSO1mnv4xaWqnvNDav7gbnWITQC1Yka5MNf+QMlGGmER/AXeHcEgte08/o9lkfc6KJGAEf536Fa61/qnCXpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780356874; c=relaxed/simple;
	bh=Ms5xbY48naYZvg1+HkqIluHk1AdILKQ9b7Rd9rdQTnA=;
	h=To:Subject:From:Message-Id:Date; b=axAMYbrhvs1Dy6GBPWOQht2W0yZSkXvZutvkhza01xhD4QUWzLruXYd46Ju6rtYq7oI2ziPM1kSr2ev6Ri/NQ3+pyH1PLIh0KscbvlZEy7nEsX4Sjx1vnYiDMHJ0eS3tlSJZ3FDP477+1GzQI2o3sA4g21acSvyf/HI1eRugE/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+nJq0Ua; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+nJq0Ua"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7AAC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 23:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780356873;
	bh=Ms5xbY48naYZvg1+HkqIluHk1AdILKQ9b7Rd9rdQTnA=;
	h=To:Subject:From:Date:From;
	b=m+nJq0Uak7H8/GY4QlHEh/zmb+0nCcjiutuaxjjTNYI0fZBYPmUQv0lJ2lM6Oes9f
	 mxbuoUlDW9ukgl2wzQJXglGrO8PoQjvGxpizFJDmIF+4ZNvYE8hCWdcW6deG/CaSMx
	 nQeG27OTi315T5btWNu7ueWMQ4A7GhNH0UiZohMIkwtO47P0SbzmAX5xeon/WMOK45
	 qhZ15SsNJqdwKujucpyospnW9/aoD1l7JPCQzxlr9XrygNx4lWpZn+fajqthc+5Xw8
	 ZCFT+a51AlOTMz981UGClIiK1W+4A7poljn568od679NfTWVKDfVABXTQqPT7aLwqs
	 EOzZah8secwoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4AA5CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 23:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178035687368.5370.3667953808252336437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 247746678cf3750867edc32bb61f18863a94aa0e16418a7541806086fbd40438
Date: Mon, 01 Jun 2026 23:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780356873
