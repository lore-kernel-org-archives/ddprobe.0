Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344D034B438
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 12:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777119454; cv=none; b=bXf28oT4r5iN7LYJZuAXjDOVEZ7eIzal4fieQuvN/PEpBU2fGbWCgTU6kqO5OEzyuvxIlgVBwnYXwcQQYnD7c5LTWvLXt6jdFF0TuK3TCP/7mrItX6JUllYJUNV+KeGG1l/jlUjG139vQ/up9fUeImuMZq2ar/zE3+uJ/DUw/gY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777119454; c=relaxed/simple;
	bh=N9wEFTHBhuRVCHj0hDBsDLeqXn1PXlm+nZ/oE6nXJCI=;
	h=To:Subject:From:Message-Id:Date; b=b8p2Uv3dOC0LKLgzDiUiUh983LrYnURuANY/BSJQsCfhpOydOXwr9zwcx20VVUSaa0GYOVKoPKdrxbelIu/q2/7feLr8Wre0znLU0aG3Imnn1oFISYaRs/2GYj37x0M6TGE/I7A7dslc8cYnpSWajqjVOnUX3jyz88+Qw0YyTh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pre7JB6E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pre7JB6E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFF95C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 12:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777119453;
	bh=N9wEFTHBhuRVCHj0hDBsDLeqXn1PXlm+nZ/oE6nXJCI=;
	h=To:Subject:From:Date:From;
	b=Pre7JB6E13UOW45ASltU27JmwpcQJYVQla9EpII/Ge4tyM7nex3V5CsjsTePkg7vg
	 FBr1COPvADWZWYVrC1LsXHH2Jypnt+PkvWEGhejeqeL9DNyBAOq+F6z2wzeeX/g/eO
	 gtrl3Af1PUHg8O3U4fxCouh7p0563LyJcF1XkXeShPb92+HunBJRQd4gXN2HS52wrK
	 DvxgZYpyfLrxCtVn2shlgElD975S4HpEyNSss0Ci/NyD0UNnUmOYpAMH3Dpp0uiHhk
	 BdYHzPjvqaKYG20P1G5Jw1DvD8Ylq5gZDN4+NqQ8B80yFiRnWie+HtlWwGLSv6yt1w
	 wS09J8UBEJb7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC12FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 12:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177711945368.26199.9395440213610517274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 901ca284d58eb41586f402e1502cea6293c051d32aa016799dee3bf945330817
Date: Sat, 25 Apr 2026 12:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777119453
