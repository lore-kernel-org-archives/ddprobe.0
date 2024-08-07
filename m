Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282296BB4B
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723051554; cv=none; b=CLaYIsfa7o/qpozWVU5Kyjzz1lVqSATu/BOvcBn8/Uk6YT4I6Koe+kmLwU5YeofqGRrbfNvgVc6PX4ZhoeY5SmnlvzSF1QP92Amx/fCtaMBEIDqgykY6Sh2TeGt8gcYHU0rB16yrxonCo1SNsIbhxRBCUHMLjdbPfHly1i0Fqcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723051554; c=relaxed/simple;
	bh=Asexazlquf0+WqwHRYYvpx/HuLRDfPDb9OqtnYQ7EXY=;
	h=To:Subject:From:Message-Id:Date; b=uGC6we9C8QUa17VcWsdkEYe7iDP4DUmLvq2yv2V3QY+gHFHyfrXHKdTngkaSf1qF4hYAHyzRL18zFjulJeqb9xYaIRcFNga9bSpFf6307/29njf6+ZEs4OwzD8ovKVzct+Z02ZVU1DI4qU79lw+r4HAbzVcULznvGmUdc9d5Gqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dNH+bXHm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dNH+bXHm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A460BC32781
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723051553;
	bh=Asexazlquf0+WqwHRYYvpx/HuLRDfPDb9OqtnYQ7EXY=;
	h=To:Subject:From:Date:From;
	b=dNH+bXHml2ia1z6a+ANJ+IViOCszvutK/ITkOLm2SWjQscy6jFCJelaAT1MzJn0Bu
	 AnxakVquQCE8os/MAAHeTq9Bvnzj7+/1NcmMpbwaPRDO/fV8rLzR2kESunaWUI/LtD
	 LHWvJAy93GTiZVlkqdBr5XsbKJA0SlUWRhEjUwPy3kAIjgxBx6mxjgyyZwiXetn9Tx
	 e7FJ3hxFyWSDPV3EAGd1JNhPjy9TB2e6BwGwWg2KCAswmdgwUnQypEFmX8T7XZwUqN
	 XkiW3sLYUwcwXquZPa2V7y+BVVlo7mUybb+fdi7dvdUfdR5NfzMQePbLKzCUCrwl8r
	 BSCyZNEzwzpFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94040C52D73
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172305155359.28269.12126025364906826978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b62c463b786448022e881f9deed4cf54b9061acbc6af780848671ad8ba0b7c9
Date: Wed, 07 Aug 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723051553
