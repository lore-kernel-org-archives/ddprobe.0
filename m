Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA3E20E6E7
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747264194; cv=none; b=Nt0+1GjQqf4dv5eBJK/dt4WhNpmrAJAdcwKcHP96tp6lYFpkCSgjYT9lyML1CWktbhxHITJPtmjHsQyHZXnrMi+szgUPgM9lNze/VkErLg1rU5Ya7TmwgC+MCftFGpv++4cBpCWpUUZjooD8kWn/xGS8fBFwSYY8hxKoxWipI8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747264194; c=relaxed/simple;
	bh=NCOHMxRb59KZtIfhDIfkyP7vymAcvtpneY2oTup/OQ8=;
	h=To:Subject:From:Message-Id:Date; b=RcRMjVy63zXXiObWhdN9wF25GBkPFgU7WT7BYh4aHHDxbhXQZ8N2bW9kAfQb2nGappwSVoBq6TD2Gznz6TVlgjW804a4XFMvXlYXdlKjBuprWIW/+ESOLW2wgqr/6mcYZRiz6Sz4yTJfjNy2wuAjxoRzd1H/bsU/G6j7zCNzVvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Adh9dg4h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Adh9dg4h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0DDC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747264193;
	bh=NCOHMxRb59KZtIfhDIfkyP7vymAcvtpneY2oTup/OQ8=;
	h=To:Subject:From:Date:From;
	b=Adh9dg4h60HGhFnFWVJ3cq67cwgUC8fhDcBDPZ4gRArLJ9xtoqvgjQEPaseHYTQVG
	 HhVBVRVFRdc5qw2LWlfYi4wuhEd6E1qcxXoCfHx2F/3IKYqtyvu3z+noV/TAGMhcVw
	 8UDhUHrPWfcbPamYAWy3Jd/iFdRnjrGZUb3W597VGcowVnWC4uD/BFsIDS7zkW1MAa
	 tP1IbI5NoQL2zF+EZ8e+jh3PMVLWqY8QDRB/jh+8ur4I76EeAWEPsx1eOiTt34OdPC
	 r0lB5loSj3nnlSLcVKMLecbvyc/pbN99PYBowy/mP0uNLHL044R9eOwGGZCN0L6LKz
	 ruNZj/eWOgu8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C43C3ABDA
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174726419359.30292.2752385605681150302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e4e9908075c73f8a02a6dceb87c0f56ebb112bcc3033704489bb0ba162f942c
Date: Wed, 14 May 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747264193
