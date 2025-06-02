Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E02BE199BC
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748857194; cv=none; b=Wh80UCwprkKQV2R0IVDgaVFxbFmy4drFz7QKbR141U06BSMf0s1TOO7m1HIdGKW2Pwyqky/hXI+ETquJ3unOYTp3IK0ZBuM9XNt+b0pYAdW79bFdgQTVg1kCpddGcuqeWTx3yZnhSyFQ6kvIN4bACDAI7tSnQ2qSLvEow+bZYik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748857194; c=relaxed/simple;
	bh=EogBWK/Q50uzYnqUgBBhHP+dQ5V1noUdlUb0soUscXE=;
	h=To:Subject:From:Message-Id:Date; b=fruXjJp5b7sJhgsVTbNZ+35GfhrGhZtRzDZC0QpjqXZIegUeF6kgiIKStcUqBEjTrELbwLsHhhGBM6qJCXMOSYxTH3gRXOZglnqlQHiGuPIEA0GfWrcmUjg2LaPJgWNpLurP0R+Av9sgDrnVYQ+1ifddxlHogheHEILvSn0bGow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JAE53Hh+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JAE53Hh+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A6BC4CEF3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748857193;
	bh=EogBWK/Q50uzYnqUgBBhHP+dQ5V1noUdlUb0soUscXE=;
	h=To:Subject:From:Date:From;
	b=JAE53Hh+THwBbtoFzt+qQf12quxBGsFu86tmk8bJTcjb1nxrvLqEmTvyfdfbV02Py
	 8FvqmNE/Je+O70u7SZwzpOgWqTQ1vDLcm90cVbAvLqOcfZ49c3XMxp7kS+hSbTCQhB
	 si6k6t5GWEV1GVNcDXXtqkVSrEsZ87foMHVgS2NqmU/wzdxK6hUitZ+VEyyqL0FhjP
	 Cqiyf3y7ZMzYc62351ktvDDvPxc+yuJ2WqUzVVeO4337BrAyeA0W/XyfnPk3bnSO2O
	 fpjNQnjnG0LNUDpI6dNiKcwZndkxuXLvOuzA4PHohDp2ZlZsx1sQOGlqC+oQ1amEpk
	 Y16Mt3Oaeu5NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9001BC5B559
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174885719358.25268.12270261934967537515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96a172e3bb81ce5d481e58d01d06147fc1ac8c8535b0ec9e6bb2204da3dff551
Date: Mon, 02 Jun 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748857193
