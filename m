Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A62367F3D
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 18:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779214834; cv=none; b=l/E+1nxmQck9BJtefD2YaPE7SkajU5EqccO8vehSOV3/kmpvwq/WLYZoUua3yAgJ0XovAN7F6fpf2DWTMtC/zVA0ScacJEFYDCisNcX+26KHYILRJbbsS+HXmXG/HrIyzUUyG6gxQaCDZx3Nz32SH05Jt0bulKzzcWwZRn5H/vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779214834; c=relaxed/simple;
	bh=IjLTpOf4AS0a8/CB4wKE5udUUyBF7W1BhyusP7BsGi0=;
	h=To:Subject:From:Message-Id:Date; b=gRwei56wIcLNV0/DwYwnAua44Ixfqe5pOOqc7DSBa4crp2YhUHmUOOmbCteuDtckrz41xeLUWNa2sohLfIElqW3PBzRjYOP5s5jjS8Big8BUJmP5yvhuJ/P/UbzotUMyCAcDdjXjbQXEl3BRq8lcVi6ry+OaV4lIWhiZOxtSNx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oxIJhDW5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oxIJhDW5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF114C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779214833;
	bh=IjLTpOf4AS0a8/CB4wKE5udUUyBF7W1BhyusP7BsGi0=;
	h=To:Subject:From:Date:From;
	b=oxIJhDW5Zc6EGtFsLbTE76OcFfj3pQ1cGi2tR1Sd1wcr8FybEmNMpRwRJKKrsTd5H
	 6ddvB7XyyzI543a37HYcWhahE9bptMylsEM74KkqAVNszWn2b+YVgIXgfBON6dQOxY
	 Fqks6IPXDcJ2OunXqeJay7uNyfmlKytvSMWMB3lLL+wtGr3ethhFUdBJZx+w1lj+eA
	 rC5ARf4bc1oz29BRK6WJvXfdwj8L4MgTsVQ7LYts2K80G9XqtNnVNqlah4avkJqW5K
	 hgchrCfIrOzRHEFw0qrFAoOxJjuXqSLeUs8/u7M+LEMviaexlSPUSEYcLDS39q+kkc
	 Lw+ObVoubL9bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9A2CD4F3C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177921483369.5768.7970770968039686483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c3b4d41c543477d3ea4a3e8a2e038835c1ac23a3a72726953f5b214a02ede4c
Date: Tue, 19 May 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779214833
