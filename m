Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A80BEAF9
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736079954; cv=none; b=RtlFOFWIPUyHqEx76PkW/hGfJnmJ48e6m7lASnQ7TyXL8+PBQ2ew+wFqazwX/woYATPPtsaOEl/jWkFlRA80OEwLws5L4anWgIppSSSKCq0KAYiejkVfEJOwDlCE9j+5iu5Q6+4cbgzaBcIa3y95o8H8XF5p8XKjEnGotMJNNjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736079954; c=relaxed/simple;
	bh=FsU35wduQ/DcWEbPa4tZzrcOz4a4HIlpR2b7ilC6FAM=;
	h=To:Subject:From:Message-Id:Date; b=YLujLUpteRVI5dZU3goD+1eQv27Bs2hvckwxHtcFoSZoRkjHl0NINi/9JVyXwD/gMQ8UTcfhdtm76dfk5zY3LG1t12tmHTyCG7XITmauslHbKluyfyGemPYU7LhSd1Xw5l6XOTwpstEQGkt7TefwAmwEYwsgwGkIpkQ1hlMiavM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pNiB/zH8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pNiB/zH8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE278C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736079953;
	bh=FsU35wduQ/DcWEbPa4tZzrcOz4a4HIlpR2b7ilC6FAM=;
	h=To:Subject:From:Date:From;
	b=pNiB/zH8q8nq26hrjVS5ZwRVyc6ZBCpwys3BLrIitfc5LnjScs1WCGENHS8bkY4Iz
	 LCjcLvV3UJVlqvAyoYzrM+0fBMHvj8QQfZJlIYBgzYK7EDJFNAnmT4NnhpVD9n1suG
	 DSRM7aK+TiZ621gXWvCt6fdeRuPQXOtQMOmYetiM2nNrMYv5MdHa3F03UUM5o7gyIA
	 7mgsP4xuDMlgYO7KVSZM0Avvzm6+S1j1kXo+Ao1D2RHd+rJe+d6dzIoHfmtmYcCqyT
	 nCTFESY4FiWBzZ/egV2FpF7qC5GBXc0B+PkulpWBoPslw/e2tgdZglygHZ8UWVA0LE
	 VPxGpptWNNwAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925F8E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173607995357.24035.5833726788404028671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5133da706156b812a67e5e0f502ca578577aab17b9d275b1702fe0c2723cad1
Date: Sun, 05 Jan 2025 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736079953
