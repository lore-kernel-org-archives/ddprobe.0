Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428953446A7
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791411034; cv=none; b=s+sWBxFdiF1ew4ACy93RTcn7ilBzZCs5+niUcSJQvcN+680PI1vdmrw9xa4eU1psMxtSMuQ4J53k1eKxBpRUSBAZH2mmubdbGTsqt2rpsMIKaT2YOXmCwY97QkAR5Mv6mW4c80+qAsu6VUou1zUg8fnMqzdwuXjManIULhHpFiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791411034; c=relaxed/simple;
	bh=OmK3Jt9PyyIhl/RqtRZu/meqnwfFRAcBc9bNqA6HXH8=;
	h=To:Subject:From:Message-Id:Date; b=bh0Vtsq5wxuslGjgemnMCUA0tK6ARWYWhMg+H4Aoex1T5q2Rt8fPydIdPHBGrQwe7uyur7ifkwqtKUHfwS/woI7z3hfcf5S1lkxyRgUG2bz/I20AcYyWRIYOfAi/UT5/+fDX69szXRxUysulzHJEt4MxSJNCEO/ekcl0jDNU6iQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etJHrGsx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etJHrGsx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3234C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791411033;
	bh=OmK3Jt9PyyIhl/RqtRZu/meqnwfFRAcBc9bNqA6HXH8=;
	h=To:Subject:From:Date:From;
	b=etJHrGsxKbm9VBGXnLvn7qV4qHY/S0hxgro3lMoH4avvGPUG93EkDE+l6CuUb2HwY
	 Txlg5kvrIwYxGBZP42ExqHFzwXkxHdnJSy2NDOekUu53Iv037ucBptnpBRci7/q3pY
	 G6Kn5QtwHqkfVayj6vQhIkFkeH0pGz4oVEMe4rruSBUczOeIY62gt/t/voCzsmuGYY
	 ZNcQy2jpIWWbsQb4Jb71g0j1nnzanahVYx1wj8VZAxYsCuTzDC+t4ga1U5xxQHdTFQ
	 NuDzCAodnC03vIH6PSYwzTSoEgeo1OtWoTa9aheBZ1BOk6NNxA6A+WNXP/rpU+Ql5Y
	 tsBnhzPxdoeKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFDFCA6009
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179141103368.3929.11252482525462086096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6e6875f045a761d8bdd6dfb529da020d440c274cd4b506365d28e3fcf2d71d1
Date: Wed, 07 Oct 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791411033
