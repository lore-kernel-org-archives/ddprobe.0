Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE89DDC1
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746232795; cv=none; b=m4hBAVsuzg2M1bRZJedZcNEnkaDByXhq9vy/wQ6p6yPVvpvm8hTLkxSBllS8RuTwzZdJSrRqRJb1gHN/8bJnACSLV2+SUakI4uWukstihPFP/AOiLpBBqpwqLBwnjaznSmo26zqrPcH0BLRTEhD/tNLaj+4AtgOll9ME2h2R/xI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746232795; c=relaxed/simple;
	bh=08sfD2G4HiRGGGBQss3akjnRa/SOZpHu+0k05GarMUs=;
	h=To:Subject:From:Message-Id:Date; b=DSmir4S4xVFxCBmtwXm6vvGA39efppMgzUWGVqdNS/PL/WLGS/ihH2F9JdFlD2pCVgD0R4q+Vo6oOXPfHKsrm0nfacsb9OGHsRNeLFnuiUP71D/bCXRajBfwthndjQ94upsEaiOwU8/UihvXX/LkBT7X284O3XJkCjWg8Et476I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YaiiuZ3y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YaiiuZ3y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E79C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746232793;
	bh=08sfD2G4HiRGGGBQss3akjnRa/SOZpHu+0k05GarMUs=;
	h=To:Subject:From:Date:From;
	b=YaiiuZ3yM+lpJ8AMZSpF2qwKeagibuSptLcjahFz/FUf8SxIrC6Ndpi6mNrao9tJx
	 ynb6iXQioDAXfdXk8dy2kKdVAyzMaz1o8i701H7AaKNRq7xdQoHML1IRW0b4wio6kD
	 OVtRdDmYewil+CdePX+gfIAf5CYiVUL7Gf18cNqGQSGFO+1N2W69thihwbx+Zd3R/h
	 vvCuCqVgvo+v6vlNDbwgu3YcZKyeBx5FzcWRPMPoVkgvo6mnJumTK4gDa0GSQ1njwP
	 qQhwtEQs//OzrBka3+CLXUb7BF82zsgV38qV0O8Vs1p+IWdtNShNU1fpjVW77Kw6mn
	 M9HkVFb/QyNQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91002C3ABAC
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174623279357.19511.11011792262367492590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e893abad2350437b86e2aa4b71a09e1a302f0e644b0e6a56bb647f8db8004cdb
Date: Sat, 03 May 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746232793
