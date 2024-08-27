Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314E913A258
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724801154; cv=none; b=FYB5V5OTn8AiMc04cwKY6TfRaW5IJrm7CVHS+OqlNBHBqZCDeP4l6J978SJ92byUdnSPojN8x97mI0cve6LFYpCYB4juQ2opdCfECUcum6JyNSR++zV+GqYuYGO3d5E7C4bXaSOC7bWDNtgyL5Cgcy2XNVz/bhhvVbLvV1SRgqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724801154; c=relaxed/simple;
	bh=fHpiokMYluqo+nrTA7gIxOn9D+ClBYzLdx4KDvJ+gHM=;
	h=To:Subject:From:Message-Id:Date; b=PnN/tp2qqjsABj+HbjXdgwsV+t9Kia97snifC58T343/ta7F8zyz9S8oQ9n7dVsvI8Oo+D02e8V/JT1QAZjCwUE99r0oAEXQxjTOuB7bVX7JbyfxaWpH4mNgdMcLyx9M0WJaEjjY9EASsCtXJhEZh3h4vai12yHB7coZU8ciWDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cUn+qC56; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cUn+qC56"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1CF5C4FEA3
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724801153;
	bh=fHpiokMYluqo+nrTA7gIxOn9D+ClBYzLdx4KDvJ+gHM=;
	h=To:Subject:From:Date:From;
	b=cUn+qC56TQKCo57x01ATx/ZU/Edpd+KsmXPn5r6CNlhXXJuriV0KWww07ZE38McKU
	 /XSLV0xqTlUkAl9kxpB+yBWA/j9IHXhttP6p2BTDFqNCZFgHef9i2IqN5cJIbt0rnl
	 bvQ/2iusyPZXlqMmoqmWuRUgtPzlkhJ+b2yMX0VXyDJTmGCRe4w/6yN/rdx1fQIRa4
	 Hd4bao4++eUtlN+U5bj1/20RGwxz8QNr5jJcvuAW9xl2t07VFe0rlI1bdHcVGSGFd9
	 /hvfJr5e5FsGZejHFInzt9tYY9a/4NhEQhxFIR0pQZnjhdxvroXQ7nF0CFSpEl6Hc9
	 R5opmvH4A5Kzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F4DCC54743
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172480115361.7732.10792149022900925187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24f0a56ffe8dfd5821db830518b61f7d98dbdc2efbf09069789855beb5b3e68b
Date: Tue, 27 Aug 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724801153
