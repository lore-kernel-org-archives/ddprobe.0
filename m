Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19831524B0
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723536354; cv=none; b=pCyzzgZXF7sxo4IOHx5hlHDokNqbehvPWa+VhMBzFDUhJqsGhR27pYmbL1ZqUug6j9VsZeQmF3imafXCFi3b7lW9OMZB4LxSaTaiJZfkDoZARt0uL1lZbytzup+sANOmd+VC6sdwwKQxLkn1R7AqGLd5nYF8fcC4f7Aia4QQs/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723536354; c=relaxed/simple;
	bh=uIAjVG4yDKI4cqK3r9MAi8yjpW38Lxk54fkpoz4rWbM=;
	h=To:Subject:From:Message-Id:Date; b=WK0yrdhTSkG8Tv3CQh3mfSiOE4fjIIjKDLXOPjj8WMx7f9QDRdaXbun4NbvPXiui7P4cXlHg2sIYXZ4Ttg5Hr1MqUuLEWIQZ4FKb+Fc2uML90LdR5W3AirX6V4/kZ7RZ4iXn8l+KTkhI0/A/4ZkCugAWQWEcm8GfXOziT3vegj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KVlOXbLj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KVlOXbLj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB993C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723536353;
	bh=uIAjVG4yDKI4cqK3r9MAi8yjpW38Lxk54fkpoz4rWbM=;
	h=To:Subject:From:Date:From;
	b=KVlOXbLjaV2jpLmt0Ul0FOfriMjmf98OO6pu6OHc4JrigWm3wQS1jT8ZDg7iV4y2w
	 Jxk81cgyMk8LsoKGAGxarg/uSlzcopzDUkpupwkzyL0/sfYorX1+h7GZGItv0BjWYh
	 gesC9E+wpkEM3Y4YUvZ5zxjUvoCXmREa0lP7HPSzuoDXfTfVJOXKTzAAbSxruJMCWR
	 RLb4+nEzipvsZefWzsnzoPTKkkhXBmNeTNnIBG6mEv8KPaS0Iig/Qb1DyO7G6KwMNs
	 ZnFNUeEhqUVWjFLKNi88PcRARV3yxaDeW/3ylEVJlFVD7VfUBv3xlEPogrd98tk8cI
	 wsOAUTTLDGy1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96514C52D7C
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172353635360.9623.7569317553054822329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13e32fdd20f623e9d515cecf544a652a6e32da990d0cb50cbe99d2332d087b02
Date: Tue, 13 Aug 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723536353
