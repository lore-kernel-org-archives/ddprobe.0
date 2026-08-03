Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE68313545
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785770434; cv=none; b=IWJdxgbYImGXAFiCH+panAn//7ohYypcKIK4Wp1cTmuTA01cvLheH7TpfFfCX9E6aRnhIPSIgU39xhnbFvoQx3puXv3CyMQbXVZDthXYn64VLYX9xsUZZ8kgxmMtw8xSM9P4PiQWqEuAJVVNAzRH4HY8rWZQxeot0SXsPvZuDcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785770434; c=relaxed/simple;
	bh=oWlT8BWSc7Ae5IjupywAUWLgKenXJ+y/KQxlJQtbHSc=;
	h=To:Subject:From:Message-Id:Date; b=gh1a4V+nA2eCzUzKOWmxfa/N1JFvBciKD3eVnBvMpH6AU7Djh6keK7ntpR/aEUSyNvWEgMg2YupIqKw6MedpBI0XDz6Jx9WdTRkWDo1FXuHnJ342NBhPRxy0lORqVjqVWSl9E/F06dofIa0ycJYy/XzG5AvdWROvJ+j8ftd8ARo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kqRrOxer; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kqRrOxer"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CECE4C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785770433;
	bh=oWlT8BWSc7Ae5IjupywAUWLgKenXJ+y/KQxlJQtbHSc=;
	h=To:Subject:From:Date:From;
	b=kqRrOxerO2mb9uGIfEq4iJVzTQxa3gOCumURni2zcYSXTVv8OMUkrAPu1Vv5WTyNZ
	 t4nvXUWL9s9TwdeOXAlc+EsTPSMBz6ZtrC+fnZDlocEix0UMr9rV0iHkcGOX+0p2dI
	 KPQp+oHaK2S1hCEbm95g1tvRgXVguqslmHSm/s6OHeHAqK37ckE1dTSEM83YDW3cbx
	 o2FJSHfF07ed58aypGDWbNT7j+IUq7DCv9XAnG0ccSbM2T6EK0yQT72pmhH0qdZNu1
	 2Y5X7P3RqPoB7R4p7oOosmslrTGWhk10Z2pRQlGb+jMlk/hm66GjSbUCQWAO737EvX
	 Le4ZUc9fYoilg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA627C55184
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178577043368.5045.3757064711090834043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7253ad9c21b70794ac15ccac2a9afb38ac45d3f5234206bf4f28e7a40bf4c8fc
Date: Mon, 03 Aug 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785770433
