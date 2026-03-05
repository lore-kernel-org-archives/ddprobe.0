Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CBF3A6F09
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772720094; cv=none; b=X81hdyqHUCMS/2tredMOzhznwn5rUzUFV/2RNwbeQ9XighO7QS/3KZPNyfXY+R62BWY2CmNnl4/BRFic92T33tEeqDogecfmB14Pc08d5LTt2RIdNGPEBFdZhU0GeCgcZl46AAWqnUiTwb7PClPcxPymckT8O6GwOvZb5I1shcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772720094; c=relaxed/simple;
	bh=IdMq3a+2yY8HtEDxeFBIzZugUg/XWsDV6wGq21hKwIc=;
	h=To:Subject:From:Message-Id:Date; b=cFiaJElCwCs2e0g3B2CiWEjb0/cldDB6c6P05FNV2OpYpj1pl7+FrUGKIr0nxFY2CHZdlYJWna3UAfPalAnTV//qKR0cSpqW5u4zY1ImCtQ5U/TU/SrTD7z07zQHx4t+KZNwOOf2yxhta1LJsGcyA9LliD1J1LLm0BCjKYea4gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tWKHWv6L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tWKHWv6L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C08E8C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772720093;
	bh=IdMq3a+2yY8HtEDxeFBIzZugUg/XWsDV6wGq21hKwIc=;
	h=To:Subject:From:Date:From;
	b=tWKHWv6LiNT1Vup/0Wh1G9k8UT3k2n+NQRBraYNTqSElcbta4KP+pb1fcM1G+Acek
	 qETk+oa4PGNsR5u+5SA91UsNXEt5QNSWImzOqLkobw7NuZESDHlHiLTryRjFeMrm7f
	 bGZawDLJ7CmphQ2QTF+6wXXtJDuJ0I3u2V07er00GxvnALG0tnf9h5kVXxfqHU2eOr
	 qGswOO41lWQVL6YeP/6jeTJu7TWCDlI6gTzeWQRq6cv59JQlJtFUU2K76Gd2+okWUc
	 qQt2TFOrGGxuYalBW18AZ4wkXbwQXRIWgwIXjOjNqPtfRaDrD/mNCSydI3T8vkLWhF
	 jnQv04upjfnDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C46EF33A6B
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177272009362.15390.10382143762867420564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41fc3911e5237db3757c068a3cb13d5cb8c235a22b3e856093ba08b7ca2a4f4d
Date: Thu, 05 Mar 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772720093
