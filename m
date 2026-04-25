Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26FEE1EEA3C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 15:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777130254; cv=none; b=V0zKp+RWmgtwgVCgG/CsI9tpOTAg5rX7oqac8CP6C/n+u+6DEDmZuqebq9aVm3AjgbNDMw8nuHXVJ0xRzKsawhy/ThnnVQUudzzrIYu2URtixrWOppbP7xpUhqQrqC4D+oBMDZ4RJhvJlDYq1iJKzHZGM8YR6eermwL8KSudjD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777130254; c=relaxed/simple;
	bh=ELlmz6TD22N9lrd+x9irtRkdzFhug1+UFuhKQmxqAnI=;
	h=To:Subject:From:Message-Id:Date; b=sTGmByWk4Gz7KsOinuy6cJc6TSWOf/PlcWNIzlKUTWhTUvYEBOvJP5Pv0qnTGBVBKj35KBKUaeVyAxN+PcPUhVB/DELiMidI7n/SCikXI8InOKoZ9ziLxaA0qVFld5yXHd6Bm/RY0yV3Spv3dxFSS7PSBGFk1oeyhCa5pQYGnlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ni6iOs14; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ni6iOs14"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F83C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 15:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777130253;
	bh=ELlmz6TD22N9lrd+x9irtRkdzFhug1+UFuhKQmxqAnI=;
	h=To:Subject:From:Date:From;
	b=ni6iOs14fbhxRGcmBwD/PHVfhnHRdxE8TvsdYa+zJQiF/xq5cSULLEvxOMcYt7DHZ
	 BV6bJiRWXBnkK1g0fVSdj+BY6x56WBL5o2CDh3MQey3ZNztJp7ObbLxjo5p/+vcYb1
	 AqDrsJL1t7k7rLO86G5GuBeUBo6yqB3F84LJPoO3IPLhVwlNpIZILiqJbupVgQGSyl
	 fcy8A8gKjYuxfavYRWwgDKrQrs+x7/kh+HALaMXhpLp4t3OwxXH4mcZ3gyH+uCkyqt
	 m1kQBrBZ1tw9AcMYZKhAmAGkYf2F9Dw90+aXmiv39Z4d7kzY8iTQT4uDG5NwDC9sAF
	 CHAbmFFYJTucg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F61FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 15:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177713025368.3304.8670896657463229494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e24f7623371a1f37d0ebe7967d6f71181ba330bc7027736b1f53f2b748157e9
Date: Sat, 25 Apr 2026 15:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777130253
