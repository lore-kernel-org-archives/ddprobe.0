Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAF7C33ADB9
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767717833; cv=none; b=VqdEIkdVQRe++7Wn6IUiyVV5194/WEPkwqkiz4n9ijxTP9Z/q2TFSY7jfeD2iVZY/yBFJOcnvllSZgYUOVOnlpcHMqrkiuAk29q9FVU2Sum4WM1elJ0ZIO9sgf0M6CCOi0eCk5lUB9tq8+PtTinBEs1fWAeWGyU7VthdWKGbH/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767717833; c=relaxed/simple;
	bh=XeFaeoRGv/oENga3oCVnH4jDCmg+qWXavEaWN+zWSP4=;
	h=To:Subject:From:Message-Id:Date; b=u6a/tbqHRwd5mcNN6po82M38chikbpVzLoM1U5sAZ/yJ5hfRFGvGK9mvnYl9aDOb7SH298S7CKcfugcfYvJZ17zPrW4Wq2/MkrarIldrgpBLq1Um7zcKmdWx1fGMiJ+qCHOqjhsKWQAYtdYNeDGQDM/Yx52rerEiaDx1D4tEp34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DMK0hlkI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DMK0hlkI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E25CC116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767717833;
	bh=XeFaeoRGv/oENga3oCVnH4jDCmg+qWXavEaWN+zWSP4=;
	h=To:Subject:From:Date:From;
	b=DMK0hlkIRJTZm6spgoNJJMkSBFt88q9fCIW+thJzovhpghQVJdoWg3tUJSLA6aik1
	 gLnbg5UIoxYWO+nVsGJAywty6JSAiGEhCQ5VM74kK4LXxLEY76y415phBxsnKiysie
	 axdV03s8X1lo/MBIjXqak8DnWASc5KFwA4MuxFm/Q+Wmfw46L2i3xPBxm1rimViLJw
	 YJ49ohARnaU/JtLW6wAZsursx2Bbe6xlKJ2nrkDLA2kGW7TZBoMO5UwjaJCA7fe9jl
	 ym0lGTIw4pVHrI60EmNZ2xVaFry8DIIkjnFintv1s1t+0PR6ISlg8jBJ8MFlZ2oOnO
	 Yg6XNGoD4BIYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F472CE9D7F
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176771783357.22800.17100759494056958708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab5f23d3c7b27c226755d2152acb71b548fde38be4e0ec9396437b73f64ce66f
Date: Tue, 06 Jan 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767717833
