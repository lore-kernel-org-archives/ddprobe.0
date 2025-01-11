Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D47D17BCA
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736556354; cv=none; b=kz7CHmPXCowoS/Zzy0CNP+xT7FJk3X+d1PzqKcTULXxqK2cVYe9GtBz9iLJRSdJ/JtGR2vQhK/yOKbYGQHe8kUcMfDr3OZXE/p3/K1vCuMo6mRR6Hh1TP5GCH0YV9xuMkUjecCjmjCbc/R+FxLh21pRA/xHt7/ICoImWtmQU4so=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736556354; c=relaxed/simple;
	bh=L3aGrsgYc4DX5oWl/a7arnzRzAc9GIN5Rbd92JFIeTY=;
	h=To:Subject:From:Message-Id:Date; b=PhhJjYydueNL+gUj2rlfwcGlrx/vIa4ycCreeCZXqqG/neghkP8+CeybkoyIsMphdLTN0TtFA4N8l4HYmw9qPpHP3nAc0L2jSpSildDX3bv1hPgH8MR/+b10oJ4olrs4Hy6YzFA9WF4G1XEMp3+1yka78mJUIbvLgdH10cI8tAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TN+JprcS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TN+JprcS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1858C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736556353;
	bh=L3aGrsgYc4DX5oWl/a7arnzRzAc9GIN5Rbd92JFIeTY=;
	h=To:Subject:From:Date:From;
	b=TN+JprcS/G8OLFxloJczdnwP4uNZ804UPXezL1W6X09rczYXgKbYH3rKl7Q5TLg4y
	 pnDbDEioHeBgcKdhOlmIA3230bFtffPpdjBflO2CVNI1+Bs1aNfGu3whjE/gl7GTNw
	 EfhTD11TLXHb2CONRhaSp1sHPbf8XCb5/a/oVgoFkMVbkkTvbrl/kAZsUtjoUC/rH8
	 +VTe8HBHwFPvFu2V7vAKVQWTizLtslC9APY6HA4sPaIwAECC47pZX1pTwgC6vHyMwS
	 vR8KgL83ruAu/aqSEtAXiq9Mu1ttrMJY97fc1eFV0lFQ9iD/089A479UWEMma2W+5C
	 BFdt530RsOWaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1AA4E77188
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173655635365.22640.16402330979951954145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4279b963648c87814c90c9df2d91a8898e638f4dadad7769ed4c1ce10db1a867
Date: Sat, 11 Jan 2025 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736556353
