Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD552322B73
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 01:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768960434; cv=none; b=SX7ceY4NpVGyqg0T/Ads60j+GE/LIJjbnnTs4jjBIL0CBW+Qa7LGOFUzHcZvh1R/CHQAftvmQnn10EMGkRd1msoInCYGtYTsOTjWHXtxRHiowz9o1/zlDV/mrYq4YdIORkLI2qusSRLsTaI6MwMqKM5Jv88PplQm5u5dTTepyP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768960434; c=relaxed/simple;
	bh=/Jq6vzRzVEqe9JSM9+TWmGbRLB8D5l02EN7IZ/Z5vuM=;
	h=To:Subject:From:Message-Id:Date; b=OoqbKR7kGyMHk4jRHqE4/yb47i0RiQ5bdNNv8p0Z2PANgRgz0HY+hwxUlamo6h36V8siu//iOtYCc2HGNUCd3BPdo71dMU1jfrZaTQXobnh7La+0bwufiTnFA3RJXFYjhVHSTUne7u8TjEqQXTLH0O2dZ5nRG3XMM/X13NHqDqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ltxeJ/1I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ltxeJ/1I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDCEC19423
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768960433;
	bh=/Jq6vzRzVEqe9JSM9+TWmGbRLB8D5l02EN7IZ/Z5vuM=;
	h=To:Subject:From:Date:From;
	b=ltxeJ/1IUZUmjeSdJilYzpgy/vVUoZG26S0/OAOTStOpWZj0BKeFKmt7zDgw76RIu
	 5rBuSCKCpA8c/2EnoE8nfNnKGYR9fywyjea5G6ZGcs5vVQgsih8JS8uz4L6K7Lrbjs
	 C8fe16ULLai/4xA0M4MmLlQIdIonezOR9phjiksWfGpz7EFJf7YJJ7FPZx++Y8+G7d
	 SxqPlxzjwgPffF8Y2N3zO+Q9B1xvuN/FQ6TqtawCvcoiMpjyuYp7vacbuBaCR+RYJc
	 MI/mKpc/LaCHLTEf1OiVav2E9RTQR8VdQX590xntiSAgBGAZCKRm5jTXYlOF6WmWx0
	 7z1mZ3O11XSTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902C1D262AD
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176896043358.28838.2561641183000356273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 288174d0374ab313932d461a73709333059cf778ebd1e5268a681386167d55a3
Date: Wed, 21 Jan 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768960433
