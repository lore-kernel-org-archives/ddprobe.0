Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC644F68CC
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791570634; cv=none; b=uPRwmy61gORfnXj5x0ZHjqDxRYOH0F7WurhCg/vmq2GVOqnFYAcLGjyKk+VZLk1F++KSeQNJMHba5bCM4SHvdr4/l4nCkuW7pyfWm22p1qSwSmWSqfc5PV3+RS7TW0Kje1w+1++cjVhB7dJBEIUfMuav2uQDcg6aM8otz6BXBu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791570634; c=relaxed/simple;
	bh=TIeVugGtAivGUsrwnIIEUOUhroBkYgm1Qp5r0hUirH0=;
	h=To:Subject:From:Message-Id:Date; b=Zygi7qgOILQeajMryNpkiuyCE2R3blC7GagOucEpzLJYShA7/9w2Js7HyZfN2yqa3c8g2776Jfumxt7sLhTHei6onFIgFXjwBORMiKfUWRaJbG/OKBc1HKVUzAmMAmeOPCuRVqbmWBH4kU5etpcfm/F432PzhjJUfz4yHYw+wwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dSd+g3Pv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dSd+g3Pv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B7EC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791570633;
	bh=TIeVugGtAivGUsrwnIIEUOUhroBkYgm1Qp5r0hUirH0=;
	h=To:Subject:From:Date:From;
	b=dSd+g3PvorZkWxtMn7EG60Mt5HexRI5FSEB1HVfMBbCaF+YlOfN9HWkJFSEyWHMN3
	 NGd5CnGy7DPJ1XjZjz2nq8OWmIFQtlOEXeQtV0twZCzkdABysXeE7USeuQuEJFi9oj
	 VT3z7fN50u6a39MkBAjAWQUoinEarMibdfn8QtpV0aJ6B0FMLp0rdFkGlALR+iCA9l
	 0Dwvn6KDNPWeNu0qDBqC4uW1TilOaXBfgBlaCgAEm7j3kcOmnCX8c+YuCSx1VCdSH4
	 Qcebb+3ttkLb8iP+HPgg3SSzVDKBAG4l0iUhhL1UtWwBnqiTuYcKRYp7oTTJSyLmGz
	 aW94Scr+jctiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC67DCA601E
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179157063369.20925.6962757563310093903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 117704edec7ea0fb4520499a6abcc30a8d3d973019718b2b0ef82a485bb7ddbc
Date: Fri, 09 Oct 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791570633
