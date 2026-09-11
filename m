Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 653753ED5DA
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789099834; cv=none; b=kwy5FW1A2DkRhe7+tRgLnq6v4As9RRr5dB7vx5PKCw4M/tGHMr/ornpSZC3paPGHBc2bzprGiy1H4i5njPJwdAiSloF3BTC4pfPZHXeulIBPvj123w/8/xRLZ6f8kMd0VkbuQ3w6FKcPQH/xn1802ZoKbXQhq5EpJUKAWLTI9SY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789099834; c=relaxed/simple;
	bh=u77NOB8fgRUs0NFQd7dKxpTpmgXOH4BW78kUzIqO2wY=;
	h=To:Subject:From:Message-Id:Date; b=MyIamxhZhDdC8yP/MpWKK4pOBqY1fss0iQ21vNR5sSjrFm+nY7ZjtP41U/aklXEVbbz0Vk1JdjUD2HKApG2Q6UQK0frLj6gHnIX/kWRN67ClqUecA/Th+PlpEyJlrttVE6oV9XWClsBtJoiCMawsEAHrdl4pYxj22z4dvaLAOAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uaqftszy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uaqftszy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D388EC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789099833;
	bh=u77NOB8fgRUs0NFQd7dKxpTpmgXOH4BW78kUzIqO2wY=;
	h=To:Subject:From:Date:From;
	b=uaqftszyma5c8y+F1V9x7iDX/jgleTbhEamoDb2PpUQGxdN4qIh2OXbFGT7SNMJmG
	 X3YCZ0uFieQGTfeKdR5uZx76dRLZ4vI/SRNO+k5RHuK6hi0aKv0kbNFpUnzLf6pn1Y
	 +3dyXyiVgnkWy0OtVBU+i5/K6fwdPhkFNNxs7QrG5kbKejBHnb9bpdlU8TLwjR6a8T
	 RaSCZ8F5pjpTu5C9BBhzBM7EylwqcbzMVfeupypkWjeGU8VEWm/D+z9ADsF6M6N2U9
	 R9x7caTetJxinSGmjEDSMV32TxHEuEXRtyPqZMgPZqOAiC/KFP5y63kLgY2rmWNQQn
	 btxuFGMr/oZpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B074FC79FA1
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178909983368.29443.10284943200431427000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 949003ca95c841d3b09d80031eb823dc40d380bacb401ad0ce066ac8a40695fd
Date: Fri, 11 Sep 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789099833
