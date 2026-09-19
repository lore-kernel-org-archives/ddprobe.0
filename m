Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C0C2ED16D
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789783234; cv=none; b=uKK1Euj5X6GOaGIcJxXbIsDwV5bKI9jSbxImByb91wDZ+vKRAlLprTerEqlFMlIUbX4oYtTHPYub4c2Xa+0wiNxFAG8iqZmgjA280tzvn9Y/nXkjRzC5s8VQaN1HpxNouTW325W99TywgOX3ijBWg3V48YeXOaasLLLJ3HBydNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789783234; c=relaxed/simple;
	bh=fe3HgmuwV33Pas2g3RbSETSuvvqIV2C4R+2gjkD4NdI=;
	h=To:Subject:From:Message-Id:Date; b=iEWq5Q1UsPulgT4Fu4/P7xMZa5dAI0wm90ixlxQpJ8jtxktE7wgxduhieAa2bXWUnWefFjqUngHWxrHRs6kGmjL6ms9A1+AOwqIGTs97BzJSxAiSVHetuhZyLzkMi9v0jw4xz5SkDYwTPn6DPkfKF76o2e6VeEq1Z9MXkIPCoCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M7qAVBS6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M7qAVBS6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2700C2BCF6
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789783233;
	bh=fe3HgmuwV33Pas2g3RbSETSuvvqIV2C4R+2gjkD4NdI=;
	h=To:Subject:From:Date:From;
	b=M7qAVBS6PgQGD3Nxhw9rrbAdtmKXLVQCsydyNMaU13rI30dDvRryJa7rO9umIEkFz
	 8Herx8wnBSInVIlxrSNgGNq46WaD9v01pM+7QaP1Wuo2P891WoVeSI0M8e4JkYbIAc
	 121UiyrV0VHSUGhuaAI/6ww12n0erUY8c8kD/UM92b6oTywVTcUrWmxDN0Pti2M8xp
	 A6eFQ67cNaG+XK6pYVx6K1g0nr3cqqfekaJv6uecvGYa6byl8kUGIjf/qjCJfmU0V8
	 gpO8EogLlFagVLVFHRTMzhgVGhbGv3kkTQj+D1/TDCFoASlkO5d/3lZyzR7KGhsgC0
	 GUm6/LtrxVjaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE95C982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178978323368.29500.17757819027590357219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a014b097c83b50511dc1d03343c660907162c981710db6b9d351a6f523385aa
Date: Sat, 19 Sep 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789783233
