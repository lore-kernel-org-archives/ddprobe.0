Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 087481F5F6
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758799194; cv=none; b=X/Zu+26hesKZTjtslBaS3H2VP/pL45q4udqq/DoOeNQrVxJx4ePld0SOlsTfvJal5fSj+k+gT6HHJgHFtretWG6RUa+xBdGZrMbzrFlYIS7ivsoIMkF1pXETcDrz46zUi3o23w4rvx3gdvGPWH3rlO0MgSf9Y1tTsc6a/i4rpVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758799194; c=relaxed/simple;
	bh=8GMketce8xbFM4k46YPsu3/lj0LoKWeVmxJXL6v0240=;
	h=To:Subject:From:Message-Id:Date; b=jKlaMWuhCmR+cv96TIKpJcn5Rdfvf7lOYj8Z6ZweLWhH8nn5dKoD2U6Xewingvw7RLTk4Ll5Q65gVn5/zvzNq/iTIB8vF3wpb5oe0o1SrGd7CE9N7fcODJ8ejMPykoFvKaZVK47izINWE30FAAa+qVcC9dd26Z+GUtyGaHf0dTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rW+3e/X2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rW+3e/X2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F3CC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758799193;
	bh=8GMketce8xbFM4k46YPsu3/lj0LoKWeVmxJXL6v0240=;
	h=To:Subject:From:Date:From;
	b=rW+3e/X2mL2fhZv7XvYmKj6MZ9dhsSQ8d9xBGZGECVJV7Wu7qfH8/uPf1sPJ9jKVf
	 oBhUNMjBFqdD4zthdSLbd7l6sGYwO6Ryd+D6NJ6O45l6LuOCDcobXTArmL8PyT9YP8
	 cuQrTNaFFZlFWTJBxq0Qxu0AvREBXBZ745lD5O+aqWkAuytWjGRABXaBCVM5CH4XrX
	 7Cq/zFYuFttvS4gDV9KxGYRdUGmfR+CynGJImSjKNFJKv/leQ7TPNxyDxyIyUoSrLn
	 ewjPgmk0myiKGsulNUZwh9DwIk7434VJL6fIaCgi9yNMD4OWeGmsFzZTkduqCYNoVx
	 5PN+gRnpkACfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F0FCAC5A7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175879919358.26651.10955193407426489741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fc9586cdc1f42f0cfc58ed2b504eaaaa929cafb331294ff49c43c5381e0a073
Date: Thu, 25 Sep 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758799193
