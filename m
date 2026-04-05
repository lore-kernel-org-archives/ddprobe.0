Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4EC288B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 15:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775403934; cv=none; b=O7EjP1wthzbxYt3hzT2SnLKV4FBUWta3VN26LNYEZon3cRzJKcw/baeIVxu4KoGPXAiGk/f+AIBSMN5FvnfzuQFMY7JZ+Gb+19gAIvo3odIW3tlDUM8Qx4ACEHGqWElNwDgt/UR1YCkhUIxh8ZyDLJUGNJ7qQRxcdm2tvQihNxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775403934; c=relaxed/simple;
	bh=h4FHS1oO08mAuzvQTeEmI0ytuyJGNQ/uNteQ6jhwRTY=;
	h=To:Subject:From:Message-Id:Date; b=mRNTzbxsTwrx6XDilPfhg5gymY3t27HiafjyL7rHGkubwa8c8fRcDGfuR+WPuk8a8do/lNsJ9gJqD77V99h9nsEBY/NMRhARSb8N+XrsyJBrRIgTCSf1UX/ZuHmC+3zuNU14RMFu7RJw5nOh2LRLmry+E/uewShK3yOcmXOBvGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NWNZ2nLw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NWNZ2nLw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5DAAC116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 15:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775403933;
	bh=h4FHS1oO08mAuzvQTeEmI0ytuyJGNQ/uNteQ6jhwRTY=;
	h=To:Subject:From:Date:From;
	b=NWNZ2nLwoAk3fooG6p4HRqRGj4SczopAqqeoq7B5TcPanrn1Aj6+q5COCjHYgU3zH
	 G6X8Mtr7dMdiWDJA7Te2cwQ8GYs/vTRD4GFKMQZIWhkjvBpbsZGdtaoLfCMucyofm/
	 zXgQC5aL28eMJ6J/+gA6TbDHANXKCeaaqv2HFtjQhJI2BL7LNS7zLxWf8M9DfWHmo0
	 dljjtBS54vANrxHxyuvMxKqyfORRgRaZ5UJ3/sYFQi8lxi6GbU9ePOUW2Z1/AzI1H5
	 OtDA/psx5VHjhYyPpufWszZ55RoYoHmTeG/j9BJ7vLHF458X7rNkEzGO8wECxXu1ce
	 460SDnHCidMZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B48BCE9D800
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 15:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177540393370.31891.2481895279545420289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0f9b68eb2532cb0e221d3689587dc7f992f1b3590d546ccbc0c90b2c468240b
Date: Sun, 05 Apr 2026 15:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775403933
