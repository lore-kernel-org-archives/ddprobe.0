Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F8413D8B1
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770085434; cv=none; b=m+KkwHUakkEQ/sX6bKlPJUlE2tLSM5XpRUVcqkyzYfAWDATd82i3cCEa6ZePqAi+q82rrHfE7NtoMIcSHgoyRUvLxiIk167kGy99tbzQSQe0wHEjx4qTqdld4hr1NTpjxq/QGT/WYttSTkUT6B16zrmPlcUN+qSpEAupDbzoloQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770085434; c=relaxed/simple;
	bh=NKLJo56dnubivxSkuStLWO5eR8PvYhdpmLoZ0usHKNE=;
	h=To:Subject:From:Message-Id:Date; b=QU/E6WOw1sf178+baZ4pZBoy8V4epzJsMjaq5apv49ndmGmrK6L6VAAjUYtL3246xaSw47GztT8hwoIJvNr4NyMsA8tkGADr33buYAuYwJ0D06cod2pM8rwo/TSNdMLuXXoMUGQ8xrBUTrv8mVH3MFgVLTTVL4NUSdrAHhjYCBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VCDlyR6F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VCDlyR6F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3718C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770085433;
	bh=NKLJo56dnubivxSkuStLWO5eR8PvYhdpmLoZ0usHKNE=;
	h=To:Subject:From:Date:From;
	b=VCDlyR6F9slZ8fEBvB1xBdOnTO7OSk3p07lIytJEBBkXhh/60brTtmeumLOQfa7ff
	 fCxHm7bKwslhe8O7a8ppFMVCFu5quNgyt8FYoRHQJTbHZ3OtSaE5B8PtEsXYCaQ9jS
	 RDHFyauoEoJRPx53B04l3bWZjhopj6uFVtc+1W3YzohoqW3Yahzg5YNKqnyuwslaXr
	 H+VMwGPKpo0OrJQozWzFJCZYTqH0qOx57wRFkqkSpsRGPZsck1v01C+9WIHPv7zL6f
	 zlDExQeIcaev7IEFWOl3XZ/kvg+iQn6hoiMPwMFxVJ2rybpEivX/eVc9xn+i01qP5H
	 XNHaYbuzz8K8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EC26E83041
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177008543363.16363.11927553393384503237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89df16c29cc4ee2c0b1e99c408bf48e51677bd8c2b82a3782da234e2790cd715
Date: Tue, 03 Feb 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770085433
