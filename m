Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E63A2D600
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736147154; cv=none; b=XQQVsygLMmhWpjw0uw0mHlVyyQeNJWkCb6RkrWjDsCcOR4BQj+8f7vix+cOU3WZhMP4s9GZb8NSs+SwytqZrldCzCwUtDNiiu6cfSX+BEM9b1NygzXXFNYkAAi+JLLouczd3ij5VmT206wK2JyNlo1P9niTsCq0r4jtPFE1CJ88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736147154; c=relaxed/simple;
	bh=kQkVFxoCnTe6dwEC0rWU57wWtOXBWQIK3pZMZxenuxA=;
	h=To:Subject:From:Message-Id:Date; b=CQ1+4dGHSyk6Mx45qF7gpuG+qy78+rgnsdNaAHWYB8r7INMh8qZYy4aLKsEgZh+dWQOiJxsYgWVOz5f5IqtKEnFyZbGyVmMSqwXUZgW5bEboTJeyOd4NNUW4bigPLvUlVawXrq7l/fmfnnMIhURt08FqlzybZWiRrzvyTr0R4dI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BvtAQald; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BvtAQald"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC8DBC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736147153;
	bh=kQkVFxoCnTe6dwEC0rWU57wWtOXBWQIK3pZMZxenuxA=;
	h=To:Subject:From:Date:From;
	b=BvtAQaldwUGGpTVcLVZ45Y3VIuRANWdGkmsq7KYFClPNIzM/mjapUcBDcVUkhCmmw
	 wMoIbd4rHh3z0tY9hEdCKhBnbDoCJvxvhfPNsnzbyjyJKf1ZiAwNI5TNw9VdxE8pnF
	 IbUXO1Gc7GgG+E2wZ0VZMfMU5AartZiNHryOqcn5Tslek5xGKnFrAMHFuDX84V+zQe
	 ciJ+1al4HaeyJ/D2MMaIDuDYwKlcejytcEtN0uQh/kEHBpSXnx1VxE/7Bf9Tg5aRNA
	 JbHLuqAmXQf2Vb7uy6XJ9dSfcUE/xUVbsCmxMP6wFb9mY7QduI07fDNgJTcg/6F7OQ
	 NqaNZbQKlr9Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2B96E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173614715365.32553.8110941298993543735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f1bef681c1216a1f5cc76d96ea811447dfd5b2757a659e36f63ec3f42ee20df
Date: Mon, 06 Jan 2025 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736147153
