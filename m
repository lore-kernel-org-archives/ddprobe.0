Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E4A235C01
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744026594; cv=none; b=d8e0kmXI2WI8WRqMiYGy50A8zMyIhoeljYCJCKAh6mKm3fc0t66TtkFYbHANWHO5/fzsS4CCXFULnnjNpv32KmbDyPhqNNmxNMPQsPSeSRb6lfysnKjDOjSWIk2CHgXrZcO28/IuEquVDGETePTyA8R1x6j+Dnhqkg2AsFBV/wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744026594; c=relaxed/simple;
	bh=+RIPw4vws3cW1JhVRqU//kIzHE6cy2FXttnoR0ob8QE=;
	h=To:Subject:From:Message-Id:Date; b=o3JN5t7v7jaGrWBHzQ2OxOKqiQDrTcqRw2oCTxS2I4TV18Hb6bf9z6d7Bp/TxjV9o1bb4bsLS0TbxFUuwGx9hdqYvMEuzkpoZ+jkl6snaE4G77uK7aNSBpl8r/njHVl6l8D/ao3KFDLqMbQGansDu4zi9qsWGgyqVaN7T/w4zdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZ5vLR3q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZ5vLR3q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22E3C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744026593;
	bh=+RIPw4vws3cW1JhVRqU//kIzHE6cy2FXttnoR0ob8QE=;
	h=To:Subject:From:Date:From;
	b=tZ5vLR3qsgpVD2lKXJ5fOtEdJsKUuYAjoIUrJaGzLMjRiSa29L6hN7QwmRcds+yza
	 LYEY7lXYqEC7098YYAUvIzQE9lajwiKFsNQl5Ng0Yj031+iI3xeEVLldKhHoNohHaq
	 Qohe6XhmJ3GJ3bhHoW1ki3S3ovU8p7TTqj949dOn0HqlVbPo4Ioy8e9Ybu/bdELsya
	 uy12Vqd8x2WB10Wd8zlSDec13tQeGjvauvHX0CIcNxTajFk8rCQwnpzUI9+WrlMtIf
	 Zc8d/qEoDizmt4l5peHj9I2E+QUiGk11buzF/eo47ZpZLtdWhW1K/Xgz1fEQwUHiaV
	 vRZftvg4LvLEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982AAC36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174402659361.25973.8673684364319164721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e6e992aa1626a21503db9a58297ac665eeb68bdba509939d06278da03bca0ce
Date: Mon, 07 Apr 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744026593
