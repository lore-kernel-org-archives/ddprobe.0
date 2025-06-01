Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C5B2030A
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748755794; cv=none; b=HpjU66e/D5YbFYTILsT+QqTLZy17RNKdG0eU8mKbxPYwJhLmX3bgDMh/w/BQZ3clp1VBEDUIBfoKuGSP55v/mx2TUKzDuUVrsW0Zo4FKT8JrO1iRvq94hx0kOy9ZDr/sGbB1rJ92xc+xIxWf9rVvfZlOuVeeubYwoxbexLJVh/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748755794; c=relaxed/simple;
	bh=XKX2afvHBc6iH7fC24dKxrhh4Uuca4PkH9RVjZLBz74=;
	h=To:Subject:From:Message-Id:Date; b=ZhQlHwe2ZeG9U6skXJDD6OpCZMgGPyCXu1AhFRUeFTfkzet5MUigIEWlXvIpr9lch8c4Jkrg4RAEdIx9+Z/4NeNbDQE929nClBBS+WWs5Z1S1gPS8wdB/8Lx9LuUC/zJY4nLYtmJBvrs4nGBzTnFG3tzIBFtOrchEHDREcJTV4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gmK0JemO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gmK0JemO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A712BC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748755793;
	bh=XKX2afvHBc6iH7fC24dKxrhh4Uuca4PkH9RVjZLBz74=;
	h=To:Subject:From:Date:From;
	b=gmK0JemOr91FR+VJh92Rfb+I3fGgd08EO0obYWBRAlcE9Y+eFRRlndzzDq5siiSmF
	 QhlpI2OdI2nR0yGe/MF9FylK0BzjqL8jkr+DwbO71bpZhdndmwRJD5/jEkCWrQq/kg
	 mmC7UFcZbI8bZnBrg2ULZ5vxBwmGr36rikOZD+kuQA/TiEV8jCHwGoTnJondcGMgpJ
	 qVMEPcCeVb3I9oMtzYZIkCSmJrBP0A1N/wfh2JfQVE3Uyemn0uhIR09RS3nzO9/AR0
	 9TQTi4xYwJWopWHdma1NcHuzgkhxZiCqPAvnhAbd83rqw+hQvfq0adGhAObkhReM+j
	 egSg0+Vc145ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9501EC54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174875579357.17241.129792576425839384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4400de96f04ae9e07241fc9e0001b11db3fcbdc23b2afb0e18efddcf6f9bde30
Date: Sun, 01 Jun 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748755793
