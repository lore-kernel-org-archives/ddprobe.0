Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B79D373BE6
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 17:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780074154; cv=none; b=lFiOcFrSv23V4bbdd1vfSbW+hA9k0wtCxLAJyorJycWZdx3VjUSg3q1hT4BKYPrFFqM6kOhc147Ifc+3dtMlXmrP032MRPbQiM0LtyycxthPiiCDUGThjtCyc8xZEhPc9UPscXFz59+oDN7mIXm/17bfmVo4iKsaI2YW9fuxFhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780074154; c=relaxed/simple;
	bh=qu7b4dDIJr5yPcleaQkNjX1gVpaR/au3MhUZfNI09aw=;
	h=To:Subject:From:Message-Id:Date; b=BvB8jaSbq3z6yy0rif7v1O3aTompOAzA1DImN+VA3lKpRSgs9YJpTgqOPYLc69CnDRCW7m5oTKKGMmyLuIi+9f/+eHvrXU2wO/9g3/6LLu95Ahk/8RCF15U2oNk3svPGpZOfO567wnvBq2bFqf1IKGBZzkllYxMbC9uD4gu2TCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i4eMwo8W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4eMwo8W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C89A2C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 17:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780074153;
	bh=qu7b4dDIJr5yPcleaQkNjX1gVpaR/au3MhUZfNI09aw=;
	h=To:Subject:From:Date:From;
	b=i4eMwo8WWAGPeiD+uMmSZKu/R3mmfFrWpEv3freS0G7awIpaRRkBB+kriSSRTft5P
	 M5V45b8ooBf6blQdj9ngJzCslir+X64+F0s/0QiN3eqdrqo6ZqmkLh5PbrHsfkTZv7
	 V0c/OzZHR+4vm4Re+bmNgfdy6rrjcgi4JAERtzifJP/cdDi4SiqIe8VH+OHjpxW2R+
	 H7xd/S8OJmb6T+0kXNaF2sbH/u/R2JA6HrIBMlkn19QbfzljbH00RZrwwKnGkyNn0X
	 BGRAaeOQovV82IKAGullQvSFV3fBV24IIXrmFwf8SMXzFbG/ZuD1O8F8XSb4s5xFG4
	 66jAEw+85XzKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC74CD4F54
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 17:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178007415369.29731.15717106817782877892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3f9f07959aedd3e9ccbadefd1ed038f4511dd969bbeceea4de0d85627ff18f5
Date: Fri, 29 May 2026 17:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780074153
