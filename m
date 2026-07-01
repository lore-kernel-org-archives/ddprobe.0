Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E76F21B191
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 02:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782874714; cv=none; b=f8YHsz1SLYwteEWdxjitqTbjXv0rSoJzdaQEX5nOnu8CM0+Ji5QFlwIxHmGcpzemmZMIY9cmQI9sIRYNCOxcKwR265U2DoI6mhIIs0rv0FYwhSntcJ+PPW17clIu8fRCzm7Hf1V9gFApuu30UHXKLe/RRT51RdlkkdKl2ccMZLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782874714; c=relaxed/simple;
	bh=QvVnKWoNTeJ0ItGgDqGSXfejWKGsjZbgeUDCtia9sVk=;
	h=To:Subject:From:Message-Id:Date; b=AtDLhWoDfppaK2ILXGuiqSncdGzN05rJQZ2OF5QGAiDAxurAx3xbcYQoQwpFIqTIoej3dzVTpgsy4cLNisiQ6VYyl1fa3II9EPjLQ2TJZPzVHe/IRoh2fIgsxKE92/U6ia7PejA/4Iv5fVww16pcLn0iagVFQte4FJcBq8/0TG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rAjEdgT+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rAjEdgT+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEEE8C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 02:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782874713;
	bh=QvVnKWoNTeJ0ItGgDqGSXfejWKGsjZbgeUDCtia9sVk=;
	h=To:Subject:From:Date:From;
	b=rAjEdgT+Vwy6+khBCCayJto105++0QipcG5SiwGUTyM1LUg9oJUs+LmI9I7jLiBT2
	 GSI9PtokZBmVdsCl9WUSI8XT4HMo+4yt7oVBGO8VptEUGCLGS8cZodCtm3fl2gMEQ0
	 DtY2t0fwpkcGVfz2HZFiiStZV5kvjOB+qQKJ+GfaFOSHNAZi5ez0IsejCKvv/0GTJV
	 4U/ZHPNpcN2Sg5c1wPePr6CZPBU8GFuxQXC5ohYajA70tb0AVW46sQXTt4qpgqzVs5
	 p1bzzoBUOkhAWMf9Mv+JppYOZNlH/zLQ7TZr17wBK7wUZrwV70TUInuAFmQOlZ7Ucb
	 1riZKobmFbB+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF750C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 02:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178287471368.16882.4218626159934903451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 909eb5885e600108da05cfb3e1ecb31ff1a6772ea3bf3e08c56d7656bf49f244
Date: Wed, 01 Jul 2026 02:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782874713
