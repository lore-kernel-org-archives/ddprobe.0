Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CEE8AD51
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727585754; cv=none; b=N+5KiBRE57O5EjCEU67p/1jDLEZiOVGTwU8jRu1S8wf7cUQL5D1i36ovG9Q9o0hDOK9ZgWNadtxd/dqto9PJRmMipv3FqxpHCy2UumKSBY5pJVgbNAASi+Cha8WMG1r2yYmQmlzttgjj9GFH4PsNENLdFYNDRbosqC/mn9gcoHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727585754; c=relaxed/simple;
	bh=dhH0GkxFOuZuNtcc60+9glfnfJ7RLrXZWANFyDYR0BE=;
	h=To:Subject:From:Message-Id:Date; b=LSa1zouZTgInCJ2yzEZWS6STLklI1m/zsIZaPmp/rOXhdtJ5yj7urm640Y36JC6+9y3p13EDmzIiKX635DAROvbATNYoYWZ8vQga1ZEP2Gs94rBvle7EAewfOQcsQdv1NtfZ5L4s0mZUnYWkqKIfmzQ/UwMYunZ2KZDgdX04fL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IRyNeIyW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IRyNeIyW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8AEEC4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727585753;
	bh=dhH0GkxFOuZuNtcc60+9glfnfJ7RLrXZWANFyDYR0BE=;
	h=To:Subject:From:Date:From;
	b=IRyNeIyWpSdRT5q411wyiFB86sTDbYf4JGo3TzHhbOqWZLooM+mwJJRjEKTPCzqWq
	 r7i8hjHsaIuLWsO+tXlKH4AqJGGgBWXByJNg/pfkUBqrQUGIDI5Y+SCoSrNo7VBGxF
	 EJOejVw46+q2247/MnfK/wlpDWjWS2n9sU7UqgFhHFMqhXO8xK8BUX9o64dleWE8y7
	 /f4JuaOfypqOsIpu5+8xgIQiSxqstOx0gVTKnNcOhM7+5pf9qJZHqpj2HBpbDRLrfO
	 6g7rcQBYulgbZ7SnFj1pURHmDnorBUTfoyopeRZR81IxlZiqHYatv6jhVG63kPVLcw
	 /T8tgOQtZw3dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A232DCF6497
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172758575362.27583.10693385281840489870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31778e911d0b62cb5df34222f8b9622a444f486db614619931d1d58be4c08101
Date: Sun, 29 Sep 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727585753
