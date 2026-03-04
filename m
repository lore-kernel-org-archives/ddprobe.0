Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FB3277CA5
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772630094; cv=none; b=MCRFPULBjple0+Er9eSgPnkUDggiLrJigim2zmsbLaAQDE874Vrc3eu3dTmmA+IW43OrrFNrX6t3Y/jOXFnGVFsvmeYRc2XHc5lRwV6iQZ3dXa5iV/wt7JDSP1/FyDSq5ufRB8gYWO/YLntTwBBuBtn+AENRsA9WWwj+ng/TM0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772630094; c=relaxed/simple;
	bh=UkTvPRxd5hQp1wwoN4eTj1hsOJufUIkHny539h2a8w4=;
	h=To:Subject:From:Message-Id:Date; b=QwS21ubSwffoBWQVEkLAQbgWT69dtGCrGn5iq8ltoYHBQURkMGFnf4fT6bpyLR5O+snmUTbKNH8oF4lI6sMDG6gkWk/Gk0zFnntwi6r1dvwaRqezLRkVdaI8iKBYuWYmbx6LdM6/oZHC5Z4zQxCTvIMELKM4G5Ky9CQQIALsHa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=plYOK2q4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="plYOK2q4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B434CC2BC9E
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772630093;
	bh=UkTvPRxd5hQp1wwoN4eTj1hsOJufUIkHny539h2a8w4=;
	h=To:Subject:From:Date:From;
	b=plYOK2q4PwbF9p/1dh8WcX2qx7iQYf9n8lQEQBZhWhErNoQ6xu5tN33Dm6Nh0efXe
	 RHYaG1GEaNHDBxrKnFo51CQHFTiigNwk42bQNQ2YUt8CwvSabxWdIuwspR4U5oNWkN
	 qDRL5cer9JURyFx5U17W+6U6TUUVhI4xQBEg0IdAvfWU3sgDfAiaxFI2brBdEWuH6K
	 a5idy+2zFeDGI7JrfCUqd73sZnWr4SYzhCEgawv30jqUQ/VFgkobCTpcUt+ZxZzdU0
	 13fYvZR7v3tS2TPnrpxcXLYwfSmGII/CnE37aqD6ApimB6Jq07FnlGVO2A/5y7l2zq
	 4aPyyr3GCDDhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0EDDEF8FE6
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177263009364.3184.4455307136594909852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a0049f14d6e93b46b5184fcefd1dc3aad835e7c512ba4cc2fcc4d0978b1ad89
Date: Wed, 04 Mar 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772630093
