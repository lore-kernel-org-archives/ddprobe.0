Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219862AF11
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750302594; cv=none; b=KmQbokKG7VtoC/wnffHOo8rgWCehFck8pgCuGt01efXPz4Nk6VhpSb/KYhvvyn+/9tYcOD7E9G6x4a6S836y39GPQImQjpKTMrU6Jb+lF+tDMnyrkldxH0L721V39zZE0eLT8MN53Jym/vC3GfWvJUR5ToPpG+XYMPUURSwPkAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750302594; c=relaxed/simple;
	bh=DBh5R13IB3ZvpPgj/oZuJ6Zx4CaZXrdmmv4+10u77jQ=;
	h=To:Subject:From:Message-Id:Date; b=ehAOdbudvrsYfo4SvS33V0Ua8fBwxmdAcsyaI/lf177KxH0T/Rh/1cNXP6XPmdKEjQVyc23CccTR8SJr42LAgGm26+GqH8muLfgLZbyORaMRLunkX9Z61VDLmcNXK4oo37wUgqUQXDxzcfl0S/y2EY0+UKrXVczzgngPqbEYP9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pE5J6oRJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pE5J6oRJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC76C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750302593;
	bh=DBh5R13IB3ZvpPgj/oZuJ6Zx4CaZXrdmmv4+10u77jQ=;
	h=To:Subject:From:Date:From;
	b=pE5J6oRJDhXI12XlhRMLYj2CtdERQHItABLIK+ltGI9AFHlVOqlcnfQEzN45nol7/
	 Zx6mR78mZGFBwiV6wSciu5ifVIRRv1JQnuu4FLv5DVptSpFm4JgzEq2Ql8Dc1+JnZd
	 O2jhNlLQBV6d9cb1iSncLqL48/rCuJglfuzxBAxl3f7PLWEQVRWO2elop6VJtwlcdA
	 rfbCjUpLxOfXqB3c6kJwf47PuBnVH+gM+CiRcX0SDB6505YuOB6yxCLnyVVnlRxjJX
	 ezLa72PlULOkXf+fZgis/uWzk5L9uO0TblAdegKnKcvODhQRS2qmoXA5bcOkoLr1RM
	 lj4iaCoccShPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CAD7C71136
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175030259363.8284.7025609838526076104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f73361e30dca42af8e92dcf723db26d02bb020c903869978c79e203eea8e51a
Date: Thu, 19 Jun 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750302593
