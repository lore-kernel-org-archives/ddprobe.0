Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149113A1E63
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766027634; cv=none; b=nSaQq1B8HIJmkQBlOgzwyFmBtJQOTC8wd/sDeBJpWm6l9xOCtGMQq5HHjhsTIxWM6TZtmcwaAnUIHGFu4v9vsZYzbAuAg5qY7uX46+08nbG7SGJQqX8wC0TNvgRU+JuawPdNJ9dFiyaIK/sYXIQFrEbJ4ktChVGzQgT4YtR6a8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766027634; c=relaxed/simple;
	bh=XWmgyU4mhyzhCj+6UwjVc2IPtGsp2ecQ1bC3pf0SHBs=;
	h=To:Subject:From:Message-Id:Date; b=Mk62zIwjw1AhI9Y+IcnYXMYncjg2n5QYsDVTK+nUbIcP9srk/dp7kHSZhE6DqIX1cMo5Tqy498G1uABakA0x7Ro/nQzIYOTZVU3kx0Ny7hf5z5Zxe7+I1HX63mo4jhpUO61Y0hcy8xrSRMqCzNlUMNCTUh/YiRHWDmlS0oBx+Mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IODoTNI5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IODoTNI5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5948C116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766027633;
	bh=XWmgyU4mhyzhCj+6UwjVc2IPtGsp2ecQ1bC3pf0SHBs=;
	h=To:Subject:From:Date:From;
	b=IODoTNI5MBd4jWWjg3eqo31MQjsHvwINlyegQpGmq9gND1F9hOEWp91Wkdx/pG8Vu
	 Eh9IdxenaqtAfgEBIO+oVxyB7LazjDpAp72YttKALUTYHQkxg5eN/tU17dBwyJXMxW
	 CcI/ND3Dj75PBx9jtET4LFDFjCJItvSrrAkGlE+BueMgSyQPTsF2a9G2DZNmtiku61
	 2jSgnJbOPrSArfUuOtE3yv6aV4AtGcwr+FVjMeXotVUOjB5nc6hX/6ANkWrx0iRCaC
	 uk+lHwzEdzscbS+zLVPUdwv4P20h5RYSHPkGwkLHT29Z8D7sMjI7SN4+JorNhsCmZA
	 SiFIx8RgjqNYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948ADD68BD4
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176602763359.16827.6861221372266559882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0de4f2fc703ab2154a54ea20f9b3c9d60950b394b2ae8b98c28f0981b4defac3
Date: Thu, 18 Dec 2025 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766027633
