Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED5B37188A
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789429834; cv=none; b=NxDwRIqUTd08iJyb1wIpGgT6tStL4EupFQohazYKHU6R+8jJ9JkPbOkm++PZ1I8leEOg/1o6Hm9YCz1B68rR/EyKRj8uQ/X06ca6/UuhVDiLfBHO5agJ8tQbZMw42vP/vnKSe+GP82I2BmUIpGrnBMk7jGN9HTXL5L2bz1SycMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789429834; c=relaxed/simple;
	bh=qo/bOLw/T96FGFXBktDx95XCWVxR9WqBwfqCOUPHjk0=;
	h=To:Subject:From:Message-Id:Date; b=jwzesSfXJGxYoug472djQJSp6FJw3sc+J3YDPGA0GveuELLzwZ5CNpXgOjOohYu68EtQ7cPL9RZ4bA9tkEPDjjaTBjb5AOxy+syM9pkrwZ/9Y99iGGzrzoOxd5V11D5EXkfjlSY+6TMk2wT1DZpgrRDZQiSAo1TBrjD/btTkC9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H76pK7rZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H76pK7rZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD83DC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789429833;
	bh=qo/bOLw/T96FGFXBktDx95XCWVxR9WqBwfqCOUPHjk0=;
	h=To:Subject:From:Date:From;
	b=H76pK7rZFPLAltk0rQA/czWDJ0iXbKwe1rUiDdixygBuh9W85lTXG2zFrGWgVr2A8
	 w2h5GaEtvFyxUoiSQCPJ148dMzsZ8OjPdNpUnNb63euEuJJYCEpWoM5ly9zF6kP38f
	 uccpCjhHkcVROzExNuojedR3jhI8ZE/f5dY3BMTaoJcPGR3K04iJY3azsVwjAX+ZO8
	 wQ1ZhnhNCudJp0R0LXqGXyUkZ/o8JuUJmTtsyLn3CmgbWhgHfzGYbZcoQ+reioV8+m
	 QVYr7v6xs4PmeJs7QfmLibx1a6WytpiE7BMdOzxzr+JtCaGlkhGt18BltiZ+FgYGH/
	 JAeoSOPEu7QvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FA9C88E75
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178942983368.18716.13137405288304202029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83514863b0167d600fb92ec6fc700a9b4a4b4ebe9d082c949ba69ee85b01eb6d
Date: Mon, 14 Sep 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789429833
