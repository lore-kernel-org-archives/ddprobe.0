Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249D2204F9C
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746014394; cv=none; b=BgJuoAVQSRK2oDyt9KnjbW21gCULFvJm4R7PeVmSSKGAYMN/5p4EYsrWi8t2iJHzXcuTjpMuQI1G9f/2MtmUQZ8LwYKi4I38IPejo4U9nfIr8qrP/radyo69Kc7A0yGrTs0tL320tAZMy72EAlIq8WqshmROwyZcK42XMyu8Itw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746014394; c=relaxed/simple;
	bh=GyWzhOuJfZrE8+Zk1+OV6SjvqRfOJSQscV/T/zhJ5oU=;
	h=To:Subject:From:Message-Id:Date; b=m6fllCzhz7J6qPAMAaD6GR/bH67jhaHCqq5nhCX+kZlq16N6G+l8rz6mSOJ8bw3Y0vLAFSM6645jQhXS1Dr8XsYAVbZX/5zaZ10BW1cbF098DG5OAbTNDaE8nP0CPu5GwCLuvgMUB24JxpA0O7K1lyuqNhKvzDnLCkMDFeyAoWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GHhK3l5k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GHhK3l5k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01CEC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746014393;
	bh=GyWzhOuJfZrE8+Zk1+OV6SjvqRfOJSQscV/T/zhJ5oU=;
	h=To:Subject:From:Date:From;
	b=GHhK3l5kQe0RNAwMWhVOYJ7F772JTxzPdPyQ9yoR4mF/9L+G0hoXGcXIBVVlxq42R
	 LVLUbbUdqMPu5y+8l+cfl2ptzNVhb++AHv5q+9ehde6zwZtfWv7/x0O9Wn4vljZM/z
	 G3GZqvQcP8yo/2Gq8pTONn2jm03A96ybKNXKNhCOHDwt5LI4+rw6T8CZcESRnCmPEx
	 dlWI4eLCGQlWnk7UMJX2Mv34FmUHgYBXLtYlBpbkij4tYW0BdKCtzzEjO/YQ+tqQCA
	 L9qaWs8qMSylpSBUX7opfpcAO80LDEgg5jnNOnOhbxu2NsY7yGVBSnriqd446Wkv54
	 /iW1COKQ6flHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF2DC369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174601439357.3527.12117292955280339230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8843f4efe84bf56e5163aa551fa0679a57e23ed908b22fcb52d4c97bb9e6043
Date: Wed, 30 Apr 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746014393
