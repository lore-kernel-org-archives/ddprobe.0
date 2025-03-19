Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F132248A1
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742389194; cv=none; b=EX64Xy90OCmYJGh5qSqeyxvxU0Q0hzoxn1nl3Bzt38htR2dui9nlju0Yag/reEMEfmcwwtkcLO+jW9OapinmT/jj5PbW8wpm2X4MZVifD7aikViolz8G1EJUDvdDG5GJ/QdVvAmeAqVgdNwcroFlz0mTCyYEwDSCmHeHmNpWn1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742389194; c=relaxed/simple;
	bh=k5fxSXgK9s7AO/EAZC037WNERAXLyhj0KjQ9AWRmdpc=;
	h=To:Subject:From:Message-Id:Date; b=cZQ6LYPRafGBSBjTOotF9/SvY7DhI1tHXmloG8Tpgrqc20Ie8bfsiFpLP6oK/R+4QXBS3aiBgd4IpCt2zNArxiwpwiC7HH6SXWkqDaFh6BMMfLKYvWhRY0D7S8xZdzVBbRjYjwnJH3Yj5fkTZ1B5ARL8kAuR0T3U3AJrQQapsTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KRooVfsk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KRooVfsk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FACC4CEEC
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742389193;
	bh=k5fxSXgK9s7AO/EAZC037WNERAXLyhj0KjQ9AWRmdpc=;
	h=To:Subject:From:Date:From;
	b=KRooVfskdAv6+y/MImFTO+Py6Yb1KAqLWHmjb6aviMF6LQRItGgr2C8y/9XU8n2+a
	 Xk4/tebKErUrATL5KP//szqnmi5AcLzuDvdxfrkBe43heV+ZmHt3Z/tqjfz+95OLp5
	 fIMEvOiabb5bK9dPNPq2PzXxw6wEKsBC5SaV/6WYOKKBeu0PC7rMVljUeRCze8tVIz
	 Xiv7ZeDrDXEQd/zDavQFgE7wF/1DP1tX+8IMrjZzECy1CyhD+4dlRfgfAYCar/nFoH
	 32pdXmJDq0LkFRI4IHqWE4jSwpYtkLUSZqHd+T7E1Wb5CS7m9dfpvG5NXESjL6TVBS
	 xsfzfcn/jnJBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F8FC35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174238919359.9910.10561415561549749281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1edbab347973bd92d4a4629ff1197d494831d0dd567bbcb8a40f2a3cc15189d
Date: Wed, 19 Mar 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742389193
