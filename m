Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05A847DA66
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 18:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781117194; cv=none; b=j3zgiLJcUk82SRJIanbQ0Emnbw9aEuA8TTtRi+3IdcFMeZnZnCHkDLvuxMEOzaqfhgSk8ukPuLD/65XMPwynEpF7PYD12evHH+AmiffENwcVxjHazd41EBi5d0K88bhXafKe8uDhT5l3b21Mr+YcKXzSZxNzyFbzGi7LpgEl75w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781117194; c=relaxed/simple;
	bh=YKVDBRVD95gJnA0LCUarvsEWBpKZhr/VYX0Nf43ZAcA=;
	h=To:Subject:From:Message-Id:Date; b=DfyNsNsoCPlYnEhhjG+xjxLsnA9UySnKplWrane83dFmBguaOCfc5sRQdQs3Jstpr1Bh5bS6GCNlzDrjChKpJavCAjnIzhTJjaQ3ZJcoaQ8GSn/RGtdMOAmPMnzJMAioUN1qil1zEOU0vdM/B+ccOSp9l1X37cfdFKWFowB/US0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/a6hxcm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/a6hxcm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8039C19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 18:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781117193;
	bh=YKVDBRVD95gJnA0LCUarvsEWBpKZhr/VYX0Nf43ZAcA=;
	h=To:Subject:From:Date:From;
	b=g/a6hxcmuIa2Eg4Us5y7tF4EJ4xNrXfRTsT2sTHaNtuelPSpc6UNXwG0LnvnMIv5J
	 wo+r+X0dH4iJVoNIoxYOw0mRzpsY9VDd0uw1vGkvMJ0KucUfiAq8WeNltTXBlD6Ixe
	 mpt9S2JOt4b8m9crNF2R0e8BYAThA6Ub8zCb+WODdFt5KE8OoYuqmLpbnw4bqYTYkj
	 dqfOSVr+mlTbs/iSXbZLVTRMDXDtvYsdBJkt+gFT8wX7jflBDgw0T0oGt6LJBdoyAq
	 RRxbLdrwawG2Q0NBe0LxxpCWruIfKEFlNLxpsnG66YBJqKMyvqM73jYkb7O6QoQJTG
	 Dv2bFo53pOl+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7C88CD98C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 18:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178111719367.7078.17296746534848282819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09f6989d3415d7ac7dc246dfdd136ee073121d66138f98e72cf5881f9cb737ff
Date: Wed, 10 Jun 2026 18:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781117193
