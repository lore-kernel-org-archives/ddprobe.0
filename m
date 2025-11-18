Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9D942EC081
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 03:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763434914; cv=none; b=IPuJVlSXrWko6JbK94x1ohddoC+VXflyn3qu5wzbZy3lyYdK2bmPMqNdCEHXeVzMmFlJ4RAAVhPvEz61ngH6iyLceFp0bqigQ8nNRC+/rvnIqzJSfItJs9wle+R/hB/FbAWReQwCBTh/1siGAStF57ryA9hpXWyl/Pm8odkeBlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763434914; c=relaxed/simple;
	bh=jEJtEhvNqTmYm0gLIKWGw74rcgKd4qbsXSWgPW7oun4=;
	h=To:Subject:From:Message-Id:Date; b=U3k/XhmoKLfV8kRgLq4zOPQC7ycEOiUkgYKln511pSLdwGdg+H9EuLwwc7QbBzer4TMxzqiK4J7CF+qNJssRKwCX/K8BYWPtBXDfzon6gsaZpDgj3MV+AXCeKN7dvnYPo8gsMQTGC4nogy1ru4Gnl4re9yIctQ3FrDajdu9m9FM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HNIlB0Pa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HNIlB0Pa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2B20C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 03:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763434913;
	bh=jEJtEhvNqTmYm0gLIKWGw74rcgKd4qbsXSWgPW7oun4=;
	h=To:Subject:From:Date:From;
	b=HNIlB0Pa6gTLkqPFrZavmfFDkT/zY7G3HlrML9wzlU/vi0cBWas570XqilliTBiez
	 rLDAdgBuaE0WJIGugFwWjVpH+fHj9eEZL5tKM9LxKxfQ6YVRGKS2Z5cdfJ8hXUm0lV
	 KfkWgLH3f3MeW8fZFDb4dd1A515NHBeNrmSa80KYbTU90V0OiEiVled8JY9H1beamZ
	 0YfzbYVFOK5zq0/UBuW5/Y78Z+/FTeoPSK+FKRhUo/f+4AOSov0PfkG2HGAg25EhAH
	 eshaE27GIrXM2INkrtfJkMcVtuJqfp3kVBVNupYMRDCO7FQ/1xize/MQe2tRDlGyYs
	 t95BKahJMi+oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E57CED243
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 03:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176343491358.18792.7640856323867352266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dac483d625f14f8d674ceb44eb15490dad3cd34621f636d86bce04db599986a5
Date: Tue, 18 Nov 2025 03:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763434913
