Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B882316199
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 04:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783051714; cv=none; b=R7HoOOG9n65fTc1beNK9m9sXGiUvV70bHnNmCrSI+4dFh04l39HY9ltXX1OUXtpLCi3ulZ9tAClKh+FU/s+vmPWj2cSf5kjSJ4L1NdZL9zpm37b2Y9smIv3WOUG1aSemSS6Exnl7SsDQg1taSD6ZXTItmH2D96Wh3laBOjL7WW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783051714; c=relaxed/simple;
	bh=sPHXfgBUoPZMyaicKzVXYYXQ4aAptsPvEt80bxgHDyY=;
	h=To:Subject:From:Message-Id:Date; b=KUIFs+/wGdDQhLW6u3SV8SGzKfIjoFhXtSZXQf3Wb7U/wTQszdk6lyoZi9jsRDyJpXHi4lYNJfgcAARKVkTti5GvAN/Tfvigg4U77DadNu7uIixGGMYZmcK4duaI8l1QKe087bDDiFvDE7cZyEFRXmCQIaMGLOxTC4vHzU3whK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f3mN+0Vw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f3mN+0Vw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9816C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 04:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783051713;
	bh=sPHXfgBUoPZMyaicKzVXYYXQ4aAptsPvEt80bxgHDyY=;
	h=To:Subject:From:Date:From;
	b=f3mN+0VwbgC7yT7o0y73+w7IZy32Q6LeGIMmvMm9wqILX463+Yj9qZs0pXt48OqcP
	 ShLVpCIzQ+vVu0aJY9MqhZQUthR820wxgbvs7z2DYvCHCpyf6G0VpTLsMEf+ejvVoR
	 KlwWM5SPoA7k9zMscDa54SqGLcTg082zv3hPL8Xa/phb2wz0FXNS+3suCaeVdQt+nf
	 kaU59zWf5fkNZEs6M6dhMs5js4F22Uog/tLf7MWR3ANWbN6pwHzKuC72UaS155v2OL
	 iKPTBJHfzTpcRKZJHSxQT+XoLgyqxmK7Ray78X2aWdwSUVZExPhLK8vavKoI8cu4YU
	 iaAXX75KrKArA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3B3C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 04:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178305171368.16012.9189731637442619714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f108416e5f73b9431b823e1512f8e7f354d009d48ed5f28bd486c9bbf026a8de
Date: Fri, 03 Jul 2026 04:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783051713
