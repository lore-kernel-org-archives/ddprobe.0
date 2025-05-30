Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352F779D2
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748569194; cv=none; b=LKLGEoZW6h2JcqzohhddaIQW3jLTSwbP1opmTkCV5BtkVq1Aj29w4yc+L9Omc8nmwpUQbXlRQJ4j3mvPrNOQqCefEYi1ncLWLZ9tggnfLp1RE64n4TZVCZalafld328uV/kBxQwXDKDVk8vOYBiLVDscnzsZFhji46bk/H7Etbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748569194; c=relaxed/simple;
	bh=hlDkshI/rOIiRf3fLME4dbOAkBqlpDMHwMOtP5hQDug=;
	h=To:Subject:From:Message-Id:Date; b=KFFM2VtvB+LuMYVmHc16COg+1sqXywcVtTa+GDPTgOGDJue7oRi71PSgVQhVdlqOol0chxXLnbupvIRl6BxXW7rUXZGs8XFHUFn02Mx0sx46RPTTTzuFtHI0FNCqFSsA0Tld3JzjY58O6XN9yVWIFpb31/ret7wLJkiRXBFrJGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I0+Wf2ZX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I0+Wf2ZX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47B1C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748569193;
	bh=hlDkshI/rOIiRf3fLME4dbOAkBqlpDMHwMOtP5hQDug=;
	h=To:Subject:From:Date:From;
	b=I0+Wf2ZXRimJeit07aG5400YpR7Ftyve+BqYt8kvua0cdiB1+E9eeEsX/Px9ynkoG
	 Mg8O7tMNZQuj1L3qlq+B/hH7SEzO21WgmAzMBggzSee9Ck8jrfAEJ0cO/edsrJfv9R
	 WngofdLa544pEbt5GbpwF8Au+WZtUIwA0yIVpBDmV7sWon4W6hgStEwS0mrWysHbRk
	 f1MctPXit2KPVDQz1DP7/3r5oGTkZvf4x4VKVuxLZixb7tEGxV+x+rlevdJM9UOXzv
	 YQDGqScQiFYhwVyMY8o2Rt1SE4nMkIwAbQ/G4rxjaXb8pVJ6n/fJpGMsqTr+hGR90Q
	 NlqA5uIZWxzMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9090CC5AE59
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174856919358.28249.7197072841454352569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdf0c6464fdd8023b5e5030f674e4b93a9748cb2b1ebb4aa7b27c999be4d1571
Date: Fri, 30 May 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748569193
