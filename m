Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203EC28A1E0
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750697996; cv=none; b=ZjL1IRGtQMdRQVolM6BRvLWxQFH0wrQ6KrVnrTHQwpepix2Nc6CQ7OBOcwPK91Uh9UeIRkKi3/wuYf885jKHx4Jx3PzI/RTLL0jcugaPlwBVmqWdV81cVAJnxG+QmwXI1OXQJNOuHGjnhBHBo1Kv/q4Bmgf7SU7d26ISQh3PrUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750697996; c=relaxed/simple;
	bh=7YX2g4OBcrSSRpfJG5tOk/RdTxxStZOYM2K7gh8Q/x8=;
	h=To:Subject:From:Message-Id:Date; b=G5QLAZK5AxGUKFsjyPN7i1DHU7klfJy9AC+BNU6OV7+Zi12W33FOOA2kXc/VaTa57PjaGqCLJlcoQlG1OKhhKBqT3M2Dwg6h8EknJCGXSwpIKEYGzXIiVsP71HUKYl6sLnX/o4HJE4bcna+0QoXTAEipY5BSrdHfWRXT980tZsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ECCQujYQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ECCQujYQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E5BC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750697993;
	bh=7YX2g4OBcrSSRpfJG5tOk/RdTxxStZOYM2K7gh8Q/x8=;
	h=To:Subject:From:Date:From;
	b=ECCQujYQ9T53d+R+LchDtPdFaX8O7c3vDIO1BErrPQWnefJel3F6R6fpkKil06dhT
	 5IT5B9vtaqk7CIfEfHIQBvovh0HmrhO/8Dla0l7PmACZglOc1Cn9lfQiYfjDA5chj9
	 8In2bWMYYbjc9ove0YVWXwW7H7v0j5NnbQ1//WbyhKFhEXKacGzrGk1odQXGlLdrx8
	 5gd7qCJQnG+7ru2z3oEPuXFIdHz4efRrJFUAI7xs8/aApmWldpQckPRnN7JuE4hSDB
	 o49kPOCe+8E46e1P0tC4269X04deDq3C37x9iNSW2ILm2/mmndT9ULA8daJie3fEHN
	 IAJ/LhQGIKDXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDC3C77B7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175069799358.24632.11931278590959293095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 922cf9462961af11f22bb5621a8ee0cf48e438500875196a228fbee071671335
Date: Mon, 23 Jun 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750697993
