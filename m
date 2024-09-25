Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1964A647
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727226354; cv=none; b=Bk+nrgq8EIe8GiXPswJhqwN8ucBciAToD+JEhbMAjUOFZBbEid/yipsW30Q2vkV+pEA/VdCrfB+iXVREhqm95KYHCoZUeE55v/SRPgloxUrq6H5UXsGlAPV4vc8jbLmf6yGkobRJn/IWUQrzTqBEkoQ8d0qAJtZXZh7spAqi0yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727226354; c=relaxed/simple;
	bh=3agcb2ls4ziEhRJrnt6Cyk58baSZzn7XhMXTqDfC6xc=;
	h=To:Subject:From:Message-Id:Date; b=nlefhb1cwV9XLFMeWK7tr9ZldYZEBNCKWpIBJ72PUW1JUxN4OigNxsgRlnIYYZwxuYt98fdk4/TX89JfyaBb9Udqm4xHdTl6KQ2Rw8uER3WgBFrkz66viu5+c+9TKz5M39tdh8qww22Bz1qlpIQbgAnnZ6wlVEI3cIUQngxARe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R1eHAFRC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R1eHAFRC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55B6C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727226353;
	bh=3agcb2ls4ziEhRJrnt6Cyk58baSZzn7XhMXTqDfC6xc=;
	h=To:Subject:From:Date:From;
	b=R1eHAFRC/fbL2ndBXRqdvEFjCNvjlOl7Bhcoe5KJypdYc3qSNJCdDJSJLtklkPImY
	 eMYFFH8qqWy38IbgWTIalQUzP/wA0uZU9lPuAJz6ui243YL4cBVG1yrM27FAvUfzas
	 X6Z5p26a76slkxlEBhDL3PvJ++1MFxPSbNsDYQoRrDw/fYpnhHSHcHQMccuJ8m+CL+
	 TiXAaxTOzt2aGdDrzLghff8LyInDKh4hr/dE55M/JDQDYqKFDev00JrScqCyd+f9we
	 Eo54T0HTVJN6PwFO9M5ID63vFM5TJ+27fSTQ6hlF5Ryeku70vMjvJBaFC0/jslC9EZ
	 +iCHw2j/XKbcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC34CF9C71
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172722635358.14613.2576097440501896992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f9c4338675d9a461c725d2cee98b4c944459c70ca3572dee4953983c88d7643
Date: Wed, 25 Sep 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727226353
