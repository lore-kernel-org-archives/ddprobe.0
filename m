Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F97E30E0FD
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 03:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775101534; cv=none; b=h9GMJjFvDJc+Ns+7obW/SW72I1Oie7/EZfYuftARtLfCg8EWZsfSPPmaJDZJdy+ViYNY1YUnbLmft0gBHrcU/rvsZPQ5cj9XGHv3HlTuKyxTXupglBarb2TexL6NUPzAGG5xU8fpt8Fbddaqi6FlHGUbogJVxeQx8DxsB34yWYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775101534; c=relaxed/simple;
	bh=lFkT21sJXbnM/mXe5GfTpcUsKGdGi+VdRtBkQ/8GraY=;
	h=To:Subject:From:Message-Id:Date; b=CZrCUOmE+TpF1vTNHd16uqMQpUDccosviyub84EsSfMqSk7lD3J4h46qbV8fp45zcrzBWhSi61fTPq8j7TSaeq+nlvBbXOTmYWsRdcfwl7YkXBBjjXLNpKkd/SweqBPr/lnfpLIPban4UdSNZ0waNiKBK/WaPJLkB77r/6yKDM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DWdm4gII; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DWdm4gII"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD76C19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 03:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775101533;
	bh=lFkT21sJXbnM/mXe5GfTpcUsKGdGi+VdRtBkQ/8GraY=;
	h=To:Subject:From:Date:From;
	b=DWdm4gIIbWq3G/cCMV0Mknsaiqds7FiJHh1wiB+lW9KQpsSZRFs80j2kIT+J+cqh1
	 Y6ZioE3MDHsNyX5RZ0aCuNWCYf3GOHnjz5DMRXvcPaqvGX67/onXcpHT/k5ML+2cDl
	 V/LGYeL1GYJm690yalv6JXBFIVoviBvayDHbE0ypi+hb32Hz4fBvOwMT7myrLakmxm
	 6lkKXSRfXx8Jpf7rX/wKvsuFVxU51Yn5Iwr3FVS+Go5zDgEOIkanFWZELL7/BtFDwa
	 stnlC83m1qiDAhIWhvyF5WIXHfpWrmUArcrKtIuuAQv1LrGLFiPXexLcQ1c9oHgnwP
	 vzQ/og5ft9d/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1F5CC6B00
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 03:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177510153369.20586.5168543701692509499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c724ddb16291f092232288b3e9171ba0c32a1a67019eb1cb646ccfb2615c9c8f
Date: Thu, 02 Apr 2026 03:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775101533
