Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3DFF136658
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 00:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705969696; cv=none; b=kBq9hpn/vQjat0pxertUou0+iTkqFF20zZj7HFhXnSSXLzvUH+FS0cl4mGmb2Tg1x0JYJkUdcYFN8cGCHgMC2N68GrzhjptOgGv94hJ4aXjEK5HSoeKd3Dkzjwwd04/bKH/zJIPAQK/xnCUp0ALKZqt+1dBj+sfPGkZ5hxAlwZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705969696; c=relaxed/simple;
	bh=7UE/JEQiWzKrn7WWlXJiuHKfpxw2dmmaGpxrP+XKq/I=;
	h=To:Subject:From:Message-Id:Date; b=IT9boklLTJOe3wQesSODhTCwApVPLAWuSkczoEnmZJOpm1MDcoRqXkTt2GD8llxEddmP8tX/RZ+xhXF2oewDZoFSS+LsuJZnDpMQJawJsuandLpXzc0H/9yJyl+8YNqjkYS/pVNHPx/gcHgrz3UGhXkLfTr6grUMBBfiHT5H+Po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Igl52HQx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Igl52HQx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77823C433C7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 00:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705969696;
	bh=7UE/JEQiWzKrn7WWlXJiuHKfpxw2dmmaGpxrP+XKq/I=;
	h=To:Subject:From:Date:From;
	b=Igl52HQxN5jnPvqXj3R0Q75Dn3Fl1Bi02XlCujQAIW3aQ4bCA+Cb23R96Ml5KRL0Z
	 OrSgxKdI0UvnZVZzAAu30ih8TgNmvtxoE4q9H3KvPVj7vXmmpu8Clzp4XcvJNw34w9
	 R/Ube2KnXW+A2OBahUUPd5A9hRzDf7eDb2VFJOst42lMphgHi4XYLSVqZLqGZIBK1k
	 PZy6GUkA4/OPfSK6FtSkmmItFUWmS4EMvCpMQGkdkJJj3qvUulx6LR+YupYasjWKFC
	 /nUIsUN7azTMbdSHAiAr0MQYOOwe3i9K/APKWw4gQDLE7uZ49wzQx5u7nXpocnu7kj
	 VWxroLmJGp2Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FAFEC46CD2
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 00:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170596969638.10119.8098652673963440553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75d47c4df20e74575812cc85aeb9ce25a09016fb98db0e45c420a0e718673781
Date: Tue, 23 Jan 2024 00:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705969696
