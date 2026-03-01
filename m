Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F47C1E89C
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772336694; cv=none; b=I9oyZbGUECVX7WBmmpcig1iLR6duLEY/Ne6JZH63reC5X7WgrmmIWHNM2Q5NorbMzX5pNkFSGAfir623+cRT2xVt72kOWHnNP0OPXT9pEBHJ3tCAdMXP/aSivgDE5rgVmGOk2A1+MDBUIkvKVNZx32fA5MuTX2vIAPZzz6bBxqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772336694; c=relaxed/simple;
	bh=FRkPBjKknIxt0rrncVElz74HKg6+QceW19uM6+E3S4w=;
	h=To:Subject:From:Message-Id:Date; b=RYd9d68C1Qtil0xMtIodYOu5FDQ2lFnhJKYbvQ2NB7H1bbSE1xcKZ1ZhgmR3dNxk1K9odgD6Z98YvHZ3eFJUlOKVL4g8exx18yl7RXi53ERaJXEocl3ozhXjpd8OWNRyL7j6GVBR9Q1v34ilfjw1zP+01bvgfErK6FBvVuRlR7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fVdEdOK+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fVdEdOK+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B04DAC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772336693;
	bh=FRkPBjKknIxt0rrncVElz74HKg6+QceW19uM6+E3S4w=;
	h=To:Subject:From:Date:From;
	b=fVdEdOK+QdJSIjJkuQXNTCVxfU5cKQ5IJSMPZKHxHN1RYpcqvgqRxvyZV2IbmBPKQ
	 F1O/ITYZufec2njNlyCf79LrTzXMZORx75lDDNelijZvM/kkctk8sJrbFI8j2ufj3A
	 YGB/HhTYBKw8vEwJBJUiUyj+jTgxMZkp9gB3WnMOZ5X0mWaIYSYKSvualOj2718+ak
	 wfzWEKtR+oXjj5qg/bWXTdcLo+tImZRJGtfkIbVLCT2fdhwYK9hAu3prrOMFZahxff
	 hESKXU9/KnIDYF/RSCgJJW3eznBv1LHt6UJFBGqSAefj+t46QL4v+r694MtaFSXAdH
	 WyYbZZ4Mz69wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B5B1FD0048
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177233669360.15213.9080652265106492618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f368d18b8e58f09c4f417f36a277084ad8a74c52d0309147a0f47b8d25ffb606
Date: Sun, 01 Mar 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772336693
