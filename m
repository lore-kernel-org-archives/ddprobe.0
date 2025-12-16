Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40683FBF6
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 07:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765870374; cv=none; b=iD8N9j6heLktCuO+xs6cbTMdHfVPpNB2vzY7sV5DvPOEUgA8MIGMnaVlMFGqOd7LuF3hPpqOsNPqiKeHyfTMaH6P7G4zz3KIT4K1Io7U+i/QZ1GxOvt+PAryEuDMJMiF6DVRzNYk9jT1XfY0272+5gKc3jAJv7aKr9SMJTcdd+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765870374; c=relaxed/simple;
	bh=5aI0wUgWqr7pXUwd7W5s0wH+slpweFEMoDZ7WHzin5k=;
	h=To:Subject:From:Message-Id:Date; b=haLkPy2zlBCCFVsTTU3i9B8pLf6/DSc7LxDG4Qt6OZl2RwaotgnBXrWhgcApLDceIq+ta8yL2saCSbMmty3m28qLO5+Mtd6DePDA3lE0PY9fJlzbJKVZj3FQN9Pa1pPYjgSoGfL3Jz1rDaYiBamvLFbLzCfmxoSmcmIhthVUp3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PlW2gFRa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PlW2gFRa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA888C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 07:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765870373;
	bh=5aI0wUgWqr7pXUwd7W5s0wH+slpweFEMoDZ7WHzin5k=;
	h=To:Subject:From:Date:From;
	b=PlW2gFRai+0KOQqUUP8/jsh8b98ugRpcIv3SvMjX+M8DHQSv9/qXffOdGGihNeWJs
	 LjvZzutLzGdl2wl4vcvU21AZaYcRHCs55Bh7uEv6s2VZ+HvVFoecK3OJDxn0Jw1sHL
	 PSqxSBZI9GIroXXWUWh5Xp2C9fYnAzR27jluvrRllq50fgTsUAAxNpf3sedD3BRUWB
	 k0yGJzjeveTmciGYERZoH+nXW/WfBuC3FGSEjDypwDxvD7zDdjguHkpR2dCsNpm2VF
	 AVEPGwaX+rwuYjOVj+MjcuhU3IEwGZh8YNdGhWvVsVdI0j+7OqjrVdoZgKaUIZKt/M
	 IwquK97GxKobw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96791D5B161
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 07:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176587037358.11624.5096103200410039040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c1cd91bffb1bcb8e274d76230a4fbb4c1f89361ae48d2cc5202d81cfaa7dbac
Date: Tue, 16 Dec 2025 07:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765870373
