Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408F6EAE7
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744859394; cv=none; b=Nk9OKV0Kay5Mfjw+Uz7pfRH1JSrYHp+GcPSZ5o4aIfnGAIFJJp6lpCWcNhbCuEaUayTKTUM12UPDS+Aw8PEIEMoggAyJ3tEz4jiapVL58Heh52douzhs55D1JFmO6y3pXh6wOa+jNsdrP/b9sozZVUpK43EeLx19duL8QX7vT6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744859394; c=relaxed/simple;
	bh=cScvgd/ly7hrhk4xnbpUBq5wfEqdpfvS6eqmwBugoPQ=;
	h=To:Subject:From:Message-Id:Date; b=aGeHULACs70rdfksDOcyVqaf4ClfzUDzMgReRQFrHrY8ysgyE/MgeW5f3JFdr12dqxeKGeMUWJfGwx95wl4VWAjBrbXRRy4n06ZNZFFnaXVzQi/hrlVvthNPoKjcDMRCfGYH0zO3YEy3R1K6f5D84na5WEusXkdiHcjqZ9Ix9Yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YmqqjEmF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YmqqjEmF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F84C4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744859393;
	bh=cScvgd/ly7hrhk4xnbpUBq5wfEqdpfvS6eqmwBugoPQ=;
	h=To:Subject:From:Date:From;
	b=YmqqjEmFjJ8NahvLoQi437kEUJPz7vS9waZ9f7oUZ/wKPLSgxT7MApNzhBgsIE7Ru
	 lDFsqGbXtLb92G7fgk6In4ZeS+rQe1Id1NiLgixyXqNouzENEyo+x+rlcHYJDrv4sm
	 /hWbappbc2skpB2ZAaix0hYCZrIC4skUggVkj//3IJIemy/3jHRMio/3gd12+L8+Aq
	 1jjEV5g95Zd6FLI6KG8eoCp6pRkh01SdKDm/r/NYUoQWgKf8TQu5r4Z56uCYKuZUCs
	 R7abRkCQoCNfya9VA/GRKQv02ZNyAbLgMbIPcW1NM19VfxX+/8Ga5zmCIJPXusMPCr
	 F/94Y8ZfDAJEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6670C369C2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174485939359.24449.8135810062665704404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ccf5e9751a389390bd0cec3bd25ff0318cb484dd2c4a748f7e208bd267b5e4c
Date: Thu, 17 Apr 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744859393
