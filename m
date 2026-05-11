Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDDE37C909
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 19:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778529034; cv=none; b=L/+dE+ExWG2rpMZppuUKqh/A581wbA+gx6H0FnoGrGu463oFLCeLB/vNSFSex51J1MppUdEtjMknj/kFTh/L4oH2NYoDo/rf6Ca8NBVTXxxfUheqmv6qDQP7e3j+iHma5jJY/hw4RV1ZBI0cp1elleB66NFMNMb78fbhRKZWBmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778529034; c=relaxed/simple;
	bh=AtJE2+V0FVJJlmXLDQBcPb/KNLme1dhG7aQQ9QSoEyc=;
	h=To:Subject:From:Message-Id:Date; b=RVgV865iQw4PgUroc/okqU+AoAHCml2ZG6dG/JBLeyIZANWi1iLRs+9G/nPnPvVRBpGZfdnXyGF2Fcq+OmUGq1GMNJxKuLrBTYSyFnq5ADL2VLUDQIX+wdINP0BwlhHmAGomuQbQBr5H7AvDnGOp2ToDas2BOD9LXouqfemnM3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=prJAylpK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="prJAylpK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B887EC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778529033;
	bh=AtJE2+V0FVJJlmXLDQBcPb/KNLme1dhG7aQQ9QSoEyc=;
	h=To:Subject:From:Date:From;
	b=prJAylpKKW7kS3rPuGe091cU6HFZKtPQFVLTten5rbUtFzMrNXsJsgjJ6znsrxKPb
	 xWxxOj7hc3/KALwXDe0Zvs6Jp5h6erW4FTDh/hjRJTShbQ7UTkcpS7v68OBrwvcNO8
	 QnbgEf+0KaunkiL33+YaULjj0yDb9pc7T6mM5mAzLtUZeXPnWVMlFa7txwFkxCO2UP
	 Tf9aoUN8MoKNfTgUwXmiKny2VqNJg+svaCQ9opujdynIq+bj3vrJwkHxVsBJic1/8G
	 ro+WigX5YkE55CQpmq+n0QUzP6Mj3UPX3P/0teDZmtJm6vlu8m95LDu0SvNS/9gtnt
	 7ArmMezbQLAXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAE2CD484E
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177852903369.26241.3359437886161859577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 801da8c6f4ae3ed03a3e0b7b6bed7947d877e1e6dd65c93259a1cf97daaf49e2
Date: Mon, 11 May 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778529033
