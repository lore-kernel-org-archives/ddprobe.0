Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BACD30C616
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768281234; cv=none; b=df/hKDQzvI078LlJPbfnZO+a/dpmKra4Fe4DHvGVPzfvqTW/0RsbYJemZrXhKZ1vH3v/+rz3zG0pAwtJf+osUcvhO0m5qVjheiuap2UeBfUB+jcrlZD8+LKKcVn2tfAUvTZNbP57yp8fty/34pf2GUfMy90jw1ciQhZ4iQkgY0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768281234; c=relaxed/simple;
	bh=lNmHeYJgRIosODiU6L+6XMtIkbwG+EXv9wPrCZOzE2k=;
	h=To:Subject:From:Message-Id:Date; b=pDAVzv2s3EpfLj9NvPWH9GajFg7Cz6ZXeMrqX+0rOnlz6H/IPflvJ8WC7jGCxMkfxwUVkmmFbqbNNeMv7ucxL9KOAY4rlFOwCMlCDZ6U54PdN6ukzkr4CN4HnCQqmb9IN4Mj5kWAWC0nhIjY3Y6pYQsylUD07+1M5hUVSZWt4Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zm0LXmpW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zm0LXmpW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2148C19422
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768281233;
	bh=lNmHeYJgRIosODiU6L+6XMtIkbwG+EXv9wPrCZOzE2k=;
	h=To:Subject:From:Date:From;
	b=Zm0LXmpWaElpITPdGSUgq0kVDn3foKeEEXlYt/CcY3ddiQQnD82QNVvvB/5WpM03b
	 Q1w8MXneldVxnsmYvx0C1cAbfpfImMI9V2VfkkOT7/ZbK2OVdJnW7e9X2M6cbbDZQj
	 xe/VMAkE949Uermvzs9r0lURVHJzbX4Cg/UKiKygg4SiECUDtwMUm04jOdQC91NsJZ
	 xLGlc/pidTu5wQ7mvKrimO2YS+c1WoXc9PgIeb397DUj06LB004xuvrLR/0/YlWeFN
	 N9k41HJxd2xfwBrCWMOx/S9hBBNOLGMdbiGSPSD4NKTXs3w3tM5NkfcrxyEOS2/1sR
	 v5X3eScEcNnEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B59D29DCC
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176828123358.29620.13321225072962527013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41ab4ad54b6bf7e41bfbb88fd6e8270b97c9544f6d4bd5bcbf1c567a34efc4be
Date: Tue, 13 Jan 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768281233
