Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E9514A60C
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755331194; cv=none; b=WkKlfv613UcCMAS1d6x/5206grxwoGqelw7V1F5dCsmERSfXJwzDzqv4qqqXUa5XPWOCYix733+N8lvwcxuHygSKEclJC7TV7mSbcGlHmHe5c5HObZmJJECP4mggBcim9klQkmICttvCVohqtE+RIiKGHVixumgw2V+RMjfmumY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755331194; c=relaxed/simple;
	bh=Qe8epgtwnu0YhZf60rg1xO3dhE6zRP26tyTVUMH+Jrw=;
	h=To:Subject:From:Message-Id:Date; b=ghdjihkmCnWmAPxJkSGHRThe0YAq6GzVcZj6YP2QJvfF7Its9rYPuC9CrFidHkQXJmVxe64nfn+3NXBpValAHTGAOc05GKMkPbmqjXjILvFLlyRU5JSWYVdx5hd5/K38Yz0L08Bzr7SWZxja2lp89p8MeNEk4XdXWErdRgCfdXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n1jXg99y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n1jXg99y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9647C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755331193;
	bh=Qe8epgtwnu0YhZf60rg1xO3dhE6zRP26tyTVUMH+Jrw=;
	h=To:Subject:From:Date:From;
	b=n1jXg99ylJeq12b2MUAIqOciCuq5tx73XPKBMmWGd63IU+HJIgH7GuCnelyG9PYgk
	 UVvXtqOqAPd4s2DBttMdfMPUtgyvdQpb/HPFrvIhXh0mo0BUQckxdfmNeSawRow4Qa
	 O+YP/Y0hOBkiVXLTy0ejs1OzAJC4qLRctz2dfiLOc5oDwhTuT4JQ0nvVY4gMRg7+Vn
	 U8Gm13fWg5/UfSEfVdgfgOBLkz1gYsO8XhY/XRnqnR/5uDikNzbwbaRI/Q3mR9ZwKm
	 sVE8tzufTasdP2FMG+WULrXwdhYsJSBqPlYzzk7CwQdcvLCH4M+SNtr6fK+w1bcbpq
	 tO4Ehn6zg0k/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99608CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175533119357.13800.15100382968522055404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb1dd9ac072c6d63890387d315cdb3cb84eb2b637862504b6f62a45e771eb607
Date: Sat, 16 Aug 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755331193
