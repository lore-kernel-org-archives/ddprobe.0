Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FF533ADA4
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765957434; cv=none; b=A94XI3LzTIPvv+t7fWLJ9JRetebhGb37IjP+cYkyQudzITQfRMXRAao/jInd631YEUkVQvZnC5GldrmTnJMRe8/K1U+Jp2rAVdgNqYKuNcZXSVIf51ViMGYSDVl6YZ8nBvPLSTZrWXA78hse5vfYI+d9JbLyunyftkVI/DFjohI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765957434; c=relaxed/simple;
	bh=8FW37J4lKmbFW514ijBwA+WrHCvUqXD2aSLfAmytEt0=;
	h=To:Subject:From:Message-Id:Date; b=kNmQ8ss2kY/JApE4+IPYeWX7PBiwKSPBTh7ydk5rY5+5PCSe5zXmTYtfofbp10bwJf7RBOdEqg3RBWSwUxb6E32ld6rt3ht0b567/Pwux++hgT5pjqtrHVsWATvDQaDrPN4/iwycHcBkDZ5Wr6VeaB3PXPUEUYTbiTwoUz0ISNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DVqHwI9o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DVqHwI9o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09A1C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765957433;
	bh=8FW37J4lKmbFW514ijBwA+WrHCvUqXD2aSLfAmytEt0=;
	h=To:Subject:From:Date:From;
	b=DVqHwI9oQFgmFU49HfAWR6mS6hG5nxK1XR7+92vmU8t1XQX1pMdT5xkF4ImCQtTJf
	 XWT3byOmKhrDRM8aAfPTOGGAxM7kTadGWk/DHA1QzjCGkorwoggeIzU8IbRFR2pXQQ
	 6KOaoNhSfNw+1nMX5z1wbLf2oJlgaiPr05B2lU9LJyS2HIJDiJVcc1f0CYALaMD/3u
	 kW1k5pTkaQVexycdqF3PjBwtMfYfp0C3CvrUsFSEtPrG+tGM3FBVkhK0laCsqTGgb1
	 qX2Dgt+g8LUYu3fUBvQBudV66H4LB9/H8essDQAiTg2AZ7aU/VAWBJAPlM9hZ+iZ8n
	 P8qPTudXSyd+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905CED64087
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176595743358.11068.499865791203773398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d27cfb7dd0114359823b74f2902d7ebb1853a84ee6828c7a040ca16e35d4c72c
Date: Wed, 17 Dec 2025 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765957433
