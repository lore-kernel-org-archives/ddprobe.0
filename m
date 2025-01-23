Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 690A2155A34
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 21:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737667554; cv=none; b=BYTgXHnXnrJONrm6KSrLTwPmwZvKuru7A3cTpGJyybeFzpad21s+ji1M7Djs3ef5GOROfBGb3icubAC0bQ5LG/fkdUCTQSH3j9il3YnH4TTKfQeoCDze+UkqRdppUSaB438uGpQAtKGivHOWtzyEt/rH3Yt5QcCVc6Ajj1+ADyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737667554; c=relaxed/simple;
	bh=Z4ZTMVKR7D18NDaqBBt4IgW6PaPRDXvjk32tw0rkX+Q=;
	h=To:Subject:From:Message-Id:Date; b=P3rJzdCjrr4R+oAEFwwGyd9lDyLfcHUuyTmpWRh0waHujV1nWG9hO//i6IdO8Iwb/D3kC+Ag+NpKnd7/Nt2tLh9oESKb3MRoAAJ1YE2rVPZvFyLSoSW4b86Ibwjf129iHeUk88X7nkpPMB1Tf1WDYVVw40l/a+1W01XBz/DkcNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rw6YaGhW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rw6YaGhW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA3C0C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737667553;
	bh=Z4ZTMVKR7D18NDaqBBt4IgW6PaPRDXvjk32tw0rkX+Q=;
	h=To:Subject:From:Date:From;
	b=Rw6YaGhWD0jmrzBiSAOpo5X+/NBUaqper2EzPlKWeTAF3T6c9MWIq/QiqFFb+G25V
	 PUeI5hvahtbDwi8UO4JqhgIUl+SU4qJFcho2aflEgxZuGMPkrlz8mbFMt2qpQyTtC5
	 gbtzt/j77hl9ljh7HnKaUtYOSAGR06VWWED8WCJidgMixh9O9AzgDD2+crNIiXfev3
	 tyDt3S86qBvDefgrUfsWO/SohH0YczSlcUR/ugbtljmK/zacloc3b0dM0Lvu7ugq/u
	 hwtwVihrI6iIOHaie0y6gD0/NXmIcjiBg9jaou+8D7R2GqIR7DUJkjri31nqVPNrYw
	 da4rVm7Gfs+MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD80DC02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173766755365.6123.14626486610382637309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59338ba2fc5091090e3d5191d93402c48040ff0d73917daa8fd3ded5ae63005f
Date: Thu, 23 Jan 2025 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737667553
