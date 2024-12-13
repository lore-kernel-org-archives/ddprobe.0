Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253511547CA
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734115554; cv=none; b=hBhiX7fOXsTQZ3K+Tyr1eJFnmAEDQTdd9UDxW3FsjCqwFicsX1Dwd01nKb8AcP2mPll3XlAnD8f1xkjdUjs4tfGHpq4APjXP4rn1Y0QWp1p/ldmCqTNGbZt+Lm4m/Fft4ImO19gOSlOy6q2OeLQwKsq8J/pLjPA+EHoACys8voE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734115554; c=relaxed/simple;
	bh=xtBI02+HLnP3cceCEUU2BxRex7ZrI9LXnMWPkWDP5bs=;
	h=To:Subject:From:Message-Id:Date; b=iUq1Gq2QYhTWDO2BtNXA80hivmNB3doRyvBz8DfGxzWyWS5SIN3PX4iSpVdZKDL4dWPydmznE9rrtjZcK6FFPlohPZF+SJuIOuaLvUBJ4utX/Ni0y0CDJKJvHPxU4W0/E8BH207jHG7f02fUGQF+0nVY9uxozESnXp+qoQhIw4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eX+FQcDy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eX+FQcDy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FE6C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734115553;
	bh=xtBI02+HLnP3cceCEUU2BxRex7ZrI9LXnMWPkWDP5bs=;
	h=To:Subject:From:Date:From;
	b=eX+FQcDyPQKT0wJiqHHowNA4VYNHb7tXXUr0E8X5AQxPpxPwcH3oI0QlN5g4bky1T
	 158gIQk8dGhiaJgHDHeJ2jWsivlfkAqm2HUclrqreWMUYMIEtDQmLiJzJedzSkOU3G
	 MKxZ4kE2prGOzhEQT/+wg1u3np7iQgQRInNMvsLq+gEgflrAQDlDOI1tBGzTAy7M5O
	 rOIqxGSBMl/pOVq5AJyIHGNbVzZW3ekAM45kn4lS3358hIe7SByybL2AGiB2+NHjqQ
	 SzJd1HVhAGne2ktqlBbtSRr5q1Q7dd/xc+F655r8kTpHbP4b19aeixPPlIwsp98pkC
	 8QPchbFBWAi4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90613E7717F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173411555358.18636.12740847396969059831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeecacc88e909a19b85e578fbdcdec15bfbf03e6f63bbf9b2af943ec32475987
Date: Fri, 13 Dec 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734115553
