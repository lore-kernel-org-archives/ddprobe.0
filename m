Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BB127144B
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754399994; cv=none; b=HpvSzyN46M1Er7Y5G25xdkKDyi6uhzuCq81qU06EIt0HKE6iPy0YmNff7DGp37lvqpZkJ56Twm61lIf30V7Ctd7oSeMlCFKmMVjCSEIyfXM+KD/XO2DIfEk83f6ahoOfStaGCSdDBkebgNLpailvjeVMbKcLCDxPD4bQbu1SWYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754399994; c=relaxed/simple;
	bh=5kI3bGw8fqoNQn5/SSzR3RwDY4PrM4f2AP/E4r61VmE=;
	h=To:Subject:From:Message-Id:Date; b=UWIWx+A6IQVteS7pYXyBf4s9/pW41mVgogTGf4HhEcKK7a0xeZ/29q+EzqvFCHQ5KZNo6vc7J/1hhD1NBm/07hAPvNONue23yaj9tm1QJQhXzr6AV/dVgk6PXB9wqUCs8Fuk1aXEKjRX5YN96gR/EG+Np1zBnrI6ipMpp+djEas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZ0UMpdx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZ0UMpdx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1EFC4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754399993;
	bh=5kI3bGw8fqoNQn5/SSzR3RwDY4PrM4f2AP/E4r61VmE=;
	h=To:Subject:From:Date:From;
	b=fZ0UMpdxNGpkJtR8yZDlnW4uFV60soJF5CRioBlamKBSMMM5cyceC7pWHyflzGyqN
	 Pep7PotWkgUeXvbgm3aqUerrKTKaDljT/zb3nl+4uR9T83HRG3jNZQmRqrfT79sRZq
	 qD6+zwRk4DeCbGvE5k4kqSyCwXLnlRk5FPlYou4uichmySopRg7U3xUHzBCQnDptz+
	 Bc4VyuXBMk4N3glWnVRqgdqNzHDDqVZov7wOa2ddM1bZKbUzWsDHfb9l+gBx56DDgY
	 C7lf719lxyh00HMiAw71wltG/LnLhyA85GIAW4AnKh1fHyY/pZ+ZBOYZMdqXtFTPBt
	 8P2dDCWwLCyig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90456C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175439999358.3798.14691461556298599221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c42fe81cc1d9569967413b88dc28f9f1ea4e01e02e682e0971265074f1c86ffa
Date: Tue, 05 Aug 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754399993
