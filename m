Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309202B9A2
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733050554; cv=none; b=nm9pTvxG9f1XtXdseImQl2VAV3K8dw4sDyzpgvLGbmPoCP6ygUVnzMHY9+2NmkzRaLRHpN4kx3oewe8GzgGRZxTpX/QXOxUQO/A3W8fyWp1gxDmbcmBPJiJsP/hq48T1EtSa6Hv89epiJ37nQY7Q+65BGcoLInB0JtOJ4jIqCi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733050554; c=relaxed/simple;
	bh=/fKQLs6sZjXBlrt1CwEGU4nGWctOWV+fgw7qO3GcZVo=;
	h=To:Subject:From:Message-Id:Date; b=DdqJpGr15p0PsEzhwhqO8zvTIIJ9CiRp2OMEqseGvDLDyv9YrsKki6jBhXWW0F6gOgRf/pJS6JswYofJbojk8DlMrLc/MNoX0LzBLLTdI4UCItAsaWnEuVerZNXzM6xKpmOo/Th4iTwT2NqdN7c30SB8aYj8KrKZs3tycxrxFYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ozEmRKlT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ozEmRKlT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFE5C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733050553;
	bh=/fKQLs6sZjXBlrt1CwEGU4nGWctOWV+fgw7qO3GcZVo=;
	h=To:Subject:From:Date:From;
	b=ozEmRKlTAxKLXzCmX2YHvSAhd7ZKwwygUfZY9ajETKDVTgCIYJproGtc92Oj8R8BS
	 7FQOmX9Nm1asqh43d7LkpbAJh93BVLSptjr56erTozqzQ6UtCWq5sc1u/IuroRzYaV
	 4O3dNq72Vj5H/IsZBd3SF7EeN+tNy3rFO5JEP4KPH0rYHqUvNS6+9QTPX4IJnYMirT
	 Dfg1uffBR9550ZoKhAVZQQ157jrb5Se38iaO1wEyNMkHubMe+L6MezcOyPuzJDF3tP
	 4AbtgmuKDCiwfJ+VJQ3biM00mmiLvLhGI1HGxNBJTfStvxi932kAj4Mf8XVb1ubPiQ
	 mMMdWcJrveW+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984AFD49763
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173305055360.27504.9383882894808129486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 126773c871978c50f862e4f76458098b6cc7bb07094928a88ac57ba38adc875e
Date: Sun, 01 Dec 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733050553
