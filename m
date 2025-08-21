Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CCB2253A1
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755776394; cv=none; b=QvjVhReccugLzDCCq6qI55Lk+NGhO/S1fqspqM7dAgsWgKLGcRn55MrZ0n8PLBm5yPakXiOhd7bTbgraNF/9afkdYK++kMbVZBKBxnqcbM4QEUCRpHALhMZKtneQSsF2jMjK5w14Nj7nZOyZP2A3SO0+uxjFcGSY6V/nWqxRk6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755776394; c=relaxed/simple;
	bh=M7xmT86d4YLysaRqft4uKaSwGTLkT1aVTlM/GWp84IA=;
	h=To:Subject:From:Message-Id:Date; b=UMrigzzYSzCZX9pxgb/mh5QJxOoF3+PVjzadcoZYqC0mJSlhknu3I25AN76QEZPljO5/FMkG2BVQG8yRGwqOtVx90CQEJMJogtFZZGp59HWRh2395rHtyype2iwL4EiC5PonnA4mh5DUNZwPpcL7oF51jkFmt75EYjBSUlnxFWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZB7jw5bY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZB7jw5bY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A294CC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755776393;
	bh=M7xmT86d4YLysaRqft4uKaSwGTLkT1aVTlM/GWp84IA=;
	h=To:Subject:From:Date:From;
	b=ZB7jw5bYUyuGWOPKmo3bK3f0dGZFk+E4XdD+8W0rWUHEccO5aJjG3fcIf++EX7fEI
	 BTEGMtWFOm/JEl1GCFTg+z12KmA6E+80VnjwgIc07j61sEHa9VztxpGA6OkAXkFmUt
	 GDvomlHYA6NO2iFwnq4tu2VC7+VUMr8fhCmmd2vByhUlauqeYQIDNCPNN8B3kmv799
	 oqwL887XBN14KZ0i5/9hh+QLNeohNIavfhuk60pBKuURHamBNDk+Tv2usTPD6uUxOz
	 S1IPE79T0rCfXpcDi0rWwohxG/oyvYkNvHyxRfJvJ7lUpYvTvZIZOuunpV+Y8cARRd
	 yLJdREjHf623A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CA5CA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175577639358.8343.17922308906114685149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee5f7dc9d65642124bf4ba2eadfd95c07f754136a1e2e82081bc2f754d5fa63e
Date: Thu, 21 Aug 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755776393
