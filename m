Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6C9154425
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757125794; cv=none; b=s0RsA7ObVkJpc060v42QEE50Q4uFGcvWiVQvDxGuZ5Fvfltwv5aENVNeQR8uW2wMFmuxSF4exGvL2DFdc0RHzvUbiMuMdRtgKcfgEK4VuTfy7di3K23E33zRJdEjYPssyfapuvJPakbDdFewYmm4LuLVs5ivCyJWY8QlUyNQZfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757125794; c=relaxed/simple;
	bh=AKiXyY9OWaq6x7rssQQDoSH+zhgA51WI7Hq5fJBT9S8=;
	h=To:Subject:From:Message-Id:Date; b=oLrFAN1SCgvljs6ve3Iif57VlI/Q1Ozgv8Y9U3NrzY/Nvdl5P0p6szOFdAXqLv7BLmju1AhmUduxtUAZVPF3ypiPWF4vYwWo8cFuM0Z4YUW0YnfL+IO3CtKIWnvo0zz2FCymaPrrXKt/UItrleADoZ+tdteoE1Be5z8W/B4F5no=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rlHY15n7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rlHY15n7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F1FC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757125793;
	bh=AKiXyY9OWaq6x7rssQQDoSH+zhgA51WI7Hq5fJBT9S8=;
	h=To:Subject:From:Date:From;
	b=rlHY15n7Knv6BiOwiNih9OUegY27jC6Sgj49EY3u/YegMAitZ2DhZ37Gh8G4dXSnP
	 Zf+nOIyUv/SZ2LL00eccwdAFG4QPMKM8JNWcoxtbMgyIBdjXwDnUkNGbx+ptIhV/Uu
	 QLvtLuOjGqMKKW7pxwd/mMwgBlqGANtJ8x1PTwAXKPK7jCb/5ZOBy5pbeUUkYQhDzi
	 /S6+wrsxuOrcxg9LyJyzd1U3CaNlhK/7z5OapwuT9/FoiBcO54txsBTQ752QON4nG+
	 dakaGAzKtL5wtK1hQEjJ2wdr63amWJ0i0OqOCeg4P5qQxrpbonQ1/wEbFExFnckbJu
	 9TbMxHfg9xJ4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F66FCA0FED
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175712579358.25898.13390511562368003510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 263fb62d3f5b73874732935cf27034623e16f70429e8ba36b8156ed192b21347
Date: Sat, 06 Sep 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757125793
