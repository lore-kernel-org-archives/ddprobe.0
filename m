Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE071DFC3
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706302097; cv=none; b=jxcNikWMOpEJatjA887UB+wUJAyUN3L71GCKmkxah8U3QzP+avIO9j+Pwk0sSUOGCBHA7yTmQLc2H4lLyrK1+MQhh+9qrINjal1pXyUMWlRY7PrcxxJvKJuaaCPk9ekEzPZHyjupHrqso3J4A9pvQdOcIfaD7RE/gvRB4/VqCN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706302097; c=relaxed/simple;
	bh=uZrRO5lE7sAhKc6DawA3uixSj5u1CQIWDStkCYmKt7E=;
	h=To:Subject:From:Message-Id:Date; b=rwcC+SWci/+8OlhSvqPFv+8LslTOP4YUckgKDgJDco10lHPvl1CB/+xi+macl1ItqG/+pdlZKmaEsVlAaIMsZUdgkt7sFGKXTytdHVsgGZsvQ3HCEAWPjKX7McBJwvnmEFNoJvaHv3kI9EfqwBiClnhaeGzkpKd3DsQfieTLzcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BlKkCFS5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BlKkCFS5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A97DC433C7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706302096;
	bh=uZrRO5lE7sAhKc6DawA3uixSj5u1CQIWDStkCYmKt7E=;
	h=To:Subject:From:Date:From;
	b=BlKkCFS5wQSCKBeKwjzM6z1ye7mHbukSIXU2IWj6UjXw0XOPK7530AoQAOeF1LFgE
	 xrEkTMztJAuMOV7ZUWlLRAtGOFSmjpk27VExwRdirB1cUJJtddVGr8eKfQJCac8INI
	 M/iXd/nJqLpwgHkL6zNLZ9XhL28z04djS6D2+QtaXa0i8Y/9kvn3rLdIzMrVOkohFo
	 3bost+gZdvEFdypX8eGs3LIkXhseO6imLhCXi3iu4G8RpUHiD9v8M9TvNt30IYyUO/
	 yNnQI4uoUrrZXd77nVqc2R3A3XAGRP9NoAqZr13w6HOqaUFGHLkamxzPWXfDth+MRR
	 zmC3pwfpzpSsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ED04C47422
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170630209636.6599.11790092581259166038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6da52f310a9e7246365716f2fa6f2707c18d684547ac9de9c417bd72bc71af6
Date: Fri, 26 Jan 2024 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706302096
