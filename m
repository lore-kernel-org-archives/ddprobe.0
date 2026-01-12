Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1124F158538
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768180434; cv=none; b=Ean5i9Jda/pnSXiiRVCyeJmrpDO8aVaDU5TJvNdFmJ/EQRLeqJORUhNoiY05lYMKS5qD2P10FBlpMPxBpuOQIGpyt4NFt7XbIhryrxUO5UXNDRnaRtM9RQaeXc/msQMFf2EYxSFT9ho4EsZgc0gwE9E/QJd1B+e9ybzz/mGeWWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768180434; c=relaxed/simple;
	bh=rYsYARN3fF3ZJf272iQK7i9vexmeeEHJaUhtVgSvxWU=;
	h=To:Subject:From:Message-Id:Date; b=gJhQJ6yiBLPIg4Ad07ksFMIZNYHGAMgB81VKq+KOu85DNfFhCLzxT1QNdFQ3D80T0zsgx54jEhEZKJrxgP2/DHgPxCqKETn6QtLz8TB3nlZYl7JSh1ke5XceSdgeAo8mmZRP1tyXBeaSseIpkPSvTMS2YjZRalaCPgafY7uMgpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oV03f1Y5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oV03f1Y5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EA5C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768180433;
	bh=rYsYARN3fF3ZJf272iQK7i9vexmeeEHJaUhtVgSvxWU=;
	h=To:Subject:From:Date:From;
	b=oV03f1Y5lKN43KOxmesuLeBRSL6p4dRJf1PzwyBalpHBtccbsVkXZr7hbftpouKaE
	 IpZJ8KlPZ6jk/d5O6PiOEGs6Aa+SfwDhE9GVed10yBPjmUNhJOmdZMJGWhM8nkWeyC
	 kdCVTpJZtfstWttzTnzLgQeNPcmmBSPJK8VWPARwCJyEaMnd4sjGcMl9L0rS2hwcph
	 In9vvbE1bKQJDvw9lMqsUH+B9TtM5idr+62/UI3SnYD4iFqfGvwGOyYln+uJQEYqzx
	 gJMgv5Eh/sR2jHeOYiqnQjXiQmK1RwzzV9lISVi1lsnMnzos5hH5pgHw+kwq3CWJdH
	 z0yjbGpopLwQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909B6D25031
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176818043358.21430.2165372363347200658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3103c95b80086787ac35a31ce3a0eabc296674226f46018f927d795c0c48ce1
Date: Mon, 12 Jan 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768180433
