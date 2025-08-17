Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0764C98
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755425394; cv=none; b=ubp9PlizHywYm6GPYao9SZVGDWWhe+dXVOGenemYCuPnQY0DX561PAGSlRMtumXxKL1aEhcKvzg8tlq89EO0HfdQhTNk+mDlYZ+07f1bODO7cJvzGnV02uMu0zwLBlThnCCK+BTRFF5yYy5S/qqUiTuqVhCzsukub3IuF2j9NSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755425394; c=relaxed/simple;
	bh=Gg5d1xGvMhcs6IiVwPI6w7/A+ZLjpvaPzUryiCnfRvY=;
	h=To:Subject:From:Message-Id:Date; b=gTJLUSwd9GZMFIHS9n0M00YWtGyiJ8NmS2WbV2J8g1fWIEi2arrQ4msPptbJ+r9whaydQqqV2lgzLM8zX0ccpCBohCTIpSI94G8PBevGAUZq6xlu0waB7U0VTXEzCzTL74rhSyuAg795OkPt/fxa2xtdFbRoh+EL83nSDjZ51HM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bhci7N/Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bhci7N/Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FC2C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755425393;
	bh=Gg5d1xGvMhcs6IiVwPI6w7/A+ZLjpvaPzUryiCnfRvY=;
	h=To:Subject:From:Date:From;
	b=Bhci7N/Q3VfpzfKN2ozUBHeK0r0mpEyfZieB5hy0YYW0EQWhytRZ6vk3v4JfrnfFI
	 9yU9RZ/DTddoqN1iVdYWg5icXkmtzqLHAV9Yv8bafabTO0aRZugAMuIZ5b2rM0mMmB
	 4daH8RHUES6C6U6cjGY5I4KlbpYfJ/+RrKb74DnjEL1xAK4j3S9bxFAcUIs0TqK0MO
	 rxlgmOxZ/jl0QpuY5JuatfWWuSvylKHxjp9H3pDIk7Fx+JVzaxJJe//GcGHsJhzG0w
	 K62Li24fjSF5vavwKADsIDPkkdFgOTHT4dYHzwvziK4l2h/nELqegRCVVGo6vzRa5c
	 oZ0AkFs0jMKsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911D0CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175542539357.527.7752394997637872026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5e6e3bd9f13327bf908000d3efa188199abf64f37c9caab230b5b670f59f80a
Date: Sun, 17 Aug 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755425393
