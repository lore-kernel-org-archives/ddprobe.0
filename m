Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D36F355051
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 12:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763556114; cv=none; b=I5VVxVp2jGikQ+HaSfqDdC52Kc2etcYTSTTtZCId3r8qpsuYrsw1G6A518fB73fncHGXqPSA2qEDJFW4+f5tHeQ/zc0asdEAfdiFSvtuZlL8COk8oil+/u5FK48NzqexRZ11vvbuzSMymsF2zGALi9Gp+7IZgASj6loDn3HONRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763556114; c=relaxed/simple;
	bh=EpEG+o9CYvRmLad2d7OaEE+yBaC6Zcmq75bkMsaOh8I=;
	h=To:Subject:From:Message-Id:Date; b=RIStydzmkbggO69PK5EE/b2gbqD3UncaCn02lDSXXn0MjgoHM4jom66eV1iC5UxnyZnUCDPqs6NGUvN1CGw84jeBDWgXJdnJOqp0c1uQAcvL4EdpM01rUB5CiTx1KdmVB6BaI2R6v7XmEaP3szneYmWgQ4HOeyesDTeHZfrlLK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bxfSs+cD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bxfSs+cD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAA04C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 12:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763556113;
	bh=EpEG+o9CYvRmLad2d7OaEE+yBaC6Zcmq75bkMsaOh8I=;
	h=To:Subject:From:Date:From;
	b=bxfSs+cDtRuSGBmfv8yfnCsv2DqdeTm6UQ2908A3/BdFLql5cjD9joYA8JLcbv/rW
	 /ealZNMYob+PEBd19emk5I3mKyJgfxTzL2D0V31/6oUBUlEeruz9nxBo9nNTwcVGbN
	 UW4bOVLIYe8aupvy9LseIaSqkUzuQtcnuXABPdR6kYQYWf2doi7mkicebjhdvdGjs7
	 K25tIeH5ebHvKwcnXFjQb3PLIhFUdGAOrTrPBhquGOZbkS0LdEVv2cy00jPc6mhOI9
	 xoUmSD9TohoOvrFe80sXST4KVYgedncMtMstu2WpMr57LLVizSb8MWu9y8ZN5vhwEu
	 6yPi0tFA4foWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90501CF31BE
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 12:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176355611358.4490.14114126259989951321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 639ffd0fc4aca74ec626d67dbdd2bcae986a1ddb3329f6fcba2faf6c3721e77d
Date: Wed, 19 Nov 2025 12:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763556113
