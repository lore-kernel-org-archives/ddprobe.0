Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA3A17C9
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 00:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714782743; cv=none; b=GZD6Fi6wqxUpKmqMN/9FeQV95mOzBoKxCXR6N7E1dOFtSUPwvjQl3/bc777oCLzeM05Ye7OhfAGU4S2ly/OsxaRMmXMbU3oMLA7jlZI/KrkgIR01whSUVztNi+m5nF4DQQqgzf+/AH+W0fJ3n3OX1lsLljPF0wWcDdkjyVIoS4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714782743; c=relaxed/simple;
	bh=hEew74feYcXI3cyXfiwMpW1jZ6FSnfSxjIbrVOeBlE8=;
	h=To:Subject:From:Message-Id:Date; b=hjgoEDEnmrnJaKDEYx5Pog9N9biGzcYOfZaA6m/sKOV42e57lKc0wQtJGUEXTcyvxXpiLjKbQ+maeqFHAoMRAzWTeR+RYXxZzAero+8Qv6UPgp/Ryc+Ot5kt4FROjD35lAXNc2KSNrm4c8vpE4uZINycD6E90zcZSH52SizY/Sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yex/91ht; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yex/91ht"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E2BC4AF14
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 00:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714782742;
	bh=hEew74feYcXI3cyXfiwMpW1jZ6FSnfSxjIbrVOeBlE8=;
	h=To:Subject:From:Date:From;
	b=Yex/91htFa7fMxwR4Ww6iCm5eRlkBg3K7MXq8Aw6NruNX02c5H6SVEhHcZYciZudc
	 TDyVp1Ix1jhje0ZKhhsquKjTWDS/GLljnrFYawyGEjjrq25CDP3iiS9Lz3irH+5zwW
	 M38ASHeM7dBZO4i8Kr0tzNnijvFSGZpaZFyLOZ7BZqy2pAVNHPZlb317pqFd0YS2hC
	 phyrTBGp0GEykSzDGl9z+gL+UC3MyHF2Un5b1+1bUutGZYhwybdIQLypZHxPpslvxZ
	 yiRnanoYTWRjRq0dGgRbZhbyVC7DZGyb2hYndXyjq2G2Mx8N+iTxvnupvpwMXRsJZK
	 kWSRepxsljOaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3252C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 00:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171478274278.14868.14207385050212232190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5528ab447ad4aa710c7273835a64b2e36950556bca514a830675d27f2f9162be
Date: Sat, 04 May 2024 00:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714782742
