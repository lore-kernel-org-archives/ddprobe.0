Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260932451C7
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733871954; cv=none; b=SKX4vwzpuhtU+1gI22w9p3OsLoQKzL/X+FF0oxws17W72c4eXMdCvHrShv2qV0+geR8oQ8OL/psr4Re3OVpvoFOsXRPz0hB0G7lXp7lqFgBelYQeQ/muUum1A37YQpPZCVJJBDJ/dxpazq0cy/S3MUdMcVCjtXPPFIJ+k74VUuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733871954; c=relaxed/simple;
	bh=bLbMhYI++MKCKQJpgxzNgjJazEZYsv7HgsAeTCWkJGs=;
	h=To:Subject:From:Message-Id:Date; b=Uylt+Wxq+uCP1uAZ+QNbNrA1cadUlqhyeKysl5sQoClLRK6FFa3gNoTiQM2oVNvmWOu+kV3x/dy7DURHh7zpMhWXmj4vzkqWC9+1giXth9NW+xM17agdvryMOI9hf/VkXDPFHf6Q5dd0x2evcH4S0poOC9SjY+1IH9eVQ1ptUUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WXPO6Msc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WXPO6Msc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADE5C4CEDE
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733871953;
	bh=bLbMhYI++MKCKQJpgxzNgjJazEZYsv7HgsAeTCWkJGs=;
	h=To:Subject:From:Date:From;
	b=WXPO6MscGFCrBWFZntgs/b48zxwneTtz/BuCCYaG0Vu9VibWY0kaymy24cbggbE8G
	 LMlEWmQBeT7yWPgv6jy5DMswY29JiOO7X5JnHBo+hJNze41bJtCYFTYo4DHd7LV7O5
	 ou+1pzSWPH4gV5zAUDhoCdfFEFBs24UNsNttCaldOndikplFZGFrn24coobWXUHgES
	 kNJyV6IGqpF4pKfWrgyavJ4qvpG7UgB/bWRNaR+MTQ9pXV9dbMNFehQ0SaD47j+TgE
	 Ykbg4CHqa3/ZcuymtUcNEI/JyX5ReUyUiNX19oxps0kHONqACB8DTzZg93zcp6Po4j
	 dfrUvBKSz4tnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AEDCE7717F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173387195362.10554.14728301279495221736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a40f7f8ca4cacb213aa4a7f0886b9ce12ed0be545b61a4f6afe9f4854ea56de
Date: Tue, 10 Dec 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733871953
