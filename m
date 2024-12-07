Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F9414884F
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733585754; cv=none; b=Ow10xohLZuCoWlpZpqtVoRhMmSsXfyz1Yk97SB54+tyq9hpjUdfyOcoPybEEgpZr746606/JbDW2TNFiGrD4I0Ys2OsBWFKbybpI+mjLdvS5sxAwH1PRzpF8IlJivEPa4mKiylk4VG/3iZi8NdZXEyPs7T2z9AllvtqQJcWlCno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733585754; c=relaxed/simple;
	bh=s3Ttro77Wad1BwmMn7xKwk5N3nzhCBhP2AG8Wo76dtI=;
	h=To:Subject:From:Message-Id:Date; b=PGhswuxnPq9+D2NdqIqKMsnqMRHR5SoUuXeVMwd6XqZ9nxAy9AoYu8EIw1Pc4ueCYQv438jmo27rC+FCH/8UFwJphtPiXy6MSAa9dah5Twr7fXNQijLd9DQY/Gyk1t4cRU0IE1dFb1M3EYfEjPFsmbfRS1QEV/7dXQVtowWcTgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j4VtV92p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j4VtV92p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B85B6C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733585753;
	bh=s3Ttro77Wad1BwmMn7xKwk5N3nzhCBhP2AG8Wo76dtI=;
	h=To:Subject:From:Date:From;
	b=j4VtV92p25cLM8CnSn0dgYY/nG9MzVjMrIQbZ1WDisc8lQbEJDFBL80p0XP0qOUev
	 5G+JftCAVko8nlaQq8DdEJqYs3m96XeYgqdwvZDeeCX6ZrGupOybED3dLJrH5T6noG
	 pTcF6hZJgFCRYLyR8F7NfG1G/QPBv69zgAqFb3sZw2FkGrOvMOYlkwLWDnrvA2dL4+
	 kXooPiIMlZvtoD+MBHLbI3Pe1Jrsmcrrph1wzXJ+OVAYzPmhQOE6rTBgwqmKo7ZWLz
	 LtxFBgcHBdzcRCu6+bAGT4nKl4CWy7kZzOaPWqmd153MRURC/JJWEPhvpdI52W0DS2
	 t6z8DwUrj0s+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2638E7717B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173358575362.16903.4792094514573767569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e0a6f03d7ab3c8733445bb0995346e6c3dd2e9632356d1097a4c6b17b96b707
Date: Sat, 07 Dec 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733585753
