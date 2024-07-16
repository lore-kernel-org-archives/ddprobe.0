Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE9F1A01CF
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 18:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721153123; cv=none; b=NOfCs57OO2Ex8L4CQa9zuxEnPZNCS1ZQDzqtzmfqNKPBGpjuU3BguDLDPLgKlYdnFNHpcu+mVmNRA+KXqgbn2EF5kgM9zN8JuaYH3fSpFaiVOoBBaNeirAz7fIQIij/J7jJBgfgzp2RC6/kI0l3DNC1HI/3HQStYbK1MhVinVck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721153123; c=relaxed/simple;
	bh=+7JikPQH5OqF/dC6lgIfvLLqCJYF4WhYpAvL00GQ+zQ=;
	h=To:Subject:From:Message-Id:Date; b=SCf//yRQM8GDZklGuCyxRVTVDBMCJpdI7+6rURaU4u67QzEqe++0s48H83vS7gPkmAJi2FT9Vcdiwu2MN6Nqj9mK3P7a8URzQdNZNASomRa4wUXmZtUC54refRo0DJ7QqrAso5AS0oj3PmZti51cYUGUGSsAilA038y1cq2W54A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bAFtymDR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bAFtymDR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C68C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 18:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721153122;
	bh=+7JikPQH5OqF/dC6lgIfvLLqCJYF4WhYpAvL00GQ+zQ=;
	h=To:Subject:From:Date:From;
	b=bAFtymDRecG126idPju2LfjruMB9nQwi7+M1JV8QT+EODzZTpGP77VL0ES/KsT6Ru
	 IPIksul6o5AiWmDqOsLL7TFgGXZYNBFO5HdIJo7KDpQ8kOihvNdWlf88JwyfrdqKJe
	 iiw+zQGyzvoHjtaaJHW1wTqmA6qCgaLW4PGWXkivkhoR3YDbDSH4neMNBIyedP8M0r
	 U1s7fQH+2BuQw3xukbk950eIPA/lFLzoR5ApNk+y3kckDzFaLzT1KTtNQq7oDkDTas
	 oTm9uGdxTfIY3wwzqVBh2uXq/IN7aF7iLepKb8czzWOB18X61peYbJYpIqIpj6frMK
	 lsylCvlpG1QYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2F57C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 18:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172115312278.25793.8374506097740282096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1593d17d1a97456abe716a27ae2143ad837d88bcdc9ff7aacf898bec8a9be621
Date: Tue, 16 Jul 2024 18:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721153122
