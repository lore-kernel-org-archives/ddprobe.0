Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EBAD175A91
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785719434; cv=none; b=mt3r3s3Zmrqtu1Jbi50mC9We1GZz/yGbUKyHfoo2rEFLLeHeSXJaNpIE4fgBGAmZeuz2SEnntP7Y5xR1hl95gdKTPde1VSGxFsUutiEekGRWkU8A2Y2mPK0iL9AzR43Shwr+G20gvauZrsm1s5L6kiTmnbdQeXeIdkq7GQX6C90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785719434; c=relaxed/simple;
	bh=zNDoaMoxMGWjlRguxpvmAknPM4g/3wL6Ms9d1rndWtQ=;
	h=To:Subject:From:Message-Id:Date; b=GxXj6Bfgedc1R9vgJ65ufBdMRb013KmuL16lvAej6Jzp2b2q6mCzzv5P2oPHyPxmFlkNrMlIaC1cKDO35HtnL+bhgS0LlVIFXH5ODwhRghYyYm5BPlJ03n72wWcgXKnHhW1lPFGMnyg0Ftj3hVenuu1AZqLF1lZ7NteWjhiFuo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YcQt2qWq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YcQt2qWq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E914EC19425
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785719433;
	bh=zNDoaMoxMGWjlRguxpvmAknPM4g/3wL6Ms9d1rndWtQ=;
	h=To:Subject:From:Date:From;
	b=YcQt2qWqXA9sSV+5A46P1jV3haxy4Ggywrv+hW8pyhfj0iaLmftbOwWUep/bjBUCV
	 lgiQRoV9nROGTXnyd4+d937bXQEe8e9Hm/sXUHQcxjTZJffbeLkr3H6IIrPXjHh7ob
	 miNVaqYL/VDzzCuQMMVj1zhjJWMwpLxbBvCfMjCn1k5M37XfsfyUoP7MfGFdgG+I65
	 4SvrYZDLDmR4oK69hQXS+r6rqMc8ECO7ERSvN/u28YIPr4qfjVySYd3yJOfXDBFX7K
	 Xz+H1/nPRFw07ttjyyznFcuI+quPkNDH0+piSxQIErJR2e1wMTbIq2wPe2Rjc0aiWg
	 6Apbi1JqQfi4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE738C55162
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178571943368.7660.10252298014263236206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fea7e4d0e9d1b52628a61566ec5580d47dc6bec1ca4fcc7d198b92ae6b6339de
Date: Mon, 03 Aug 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785719433
