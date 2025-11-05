Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159BB2FB97F
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762345794; cv=none; b=ICINO/H7upRR6irfh4HLiH+cpyuPesFJEJ42n1FjiF1yFqMSSD1FD3mXnHYunRNqs8PhB86mObxQA5sQNU4azpTTJ5Z0oQEmTKHe8gOYRu7iNqTGuIYRPOQZxwhZPAJYf1ZKgrzoW/tQcxPRPxNHPErXaL5iMCSPMx8V+1IIncQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762345794; c=relaxed/simple;
	bh=YgZ7svfIB8U8NcKcUaIangG45HE6/kjFe+tiHbyKewg=;
	h=To:Subject:From:Message-Id:Date; b=r1QFLvZYu+XDk3nuvg1Teqhuti3t/0DPexC2uts9OyA7KQr4OwP5bSEDJv/x4EexE4R+wZO2uDMaaJrPSBAg1Xe7GG807um8iJ6P5ySqiUBr7Lb8Oj2Udm+GAtpiIuIu/B6Gc4pUgaaZpZpU/MX7tnu7eMZMVqU3WG5ifm5x5f4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kAb/D3lZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kAb/D3lZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1D3C4CEF8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762345793;
	bh=YgZ7svfIB8U8NcKcUaIangG45HE6/kjFe+tiHbyKewg=;
	h=To:Subject:From:Date:From;
	b=kAb/D3lZHcXpSpt2QeqntYEIIgM6Aw7LtS8tMQOOeVlfCkt6Jnt/2Yko5X58ca9NG
	 6wwI1z+3kKc3kVStgqa2AvQ8z9r2xYX752Tp8DaMqoogKqOcDIrKTFwaoX4t88c2Nw
	 6ZZKlnJgcQhshYzt/7Sl6jgSBJHY+23SwhYQ1ETytbrJ3MvkyuZs2x43ZmSXRY9XO+
	 IvXLDKIotgAnWL3OM4YL/lDxFkQSzUhW9ac/XLh4gf14awMtM8oZtq4HrO59BndRFQ
	 +m98nWNET5U9eHpPxhJCXr7csVz/Vk/9FBKviu0rRfsYTmjOzoxB1aBBLqOTSIoAkw
	 2d3mWSjB9tv/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913D9CCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176234579358.16583.15963724361544754232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba0174f625fdb835732bca1e9e3b87f19af7357f3aaf1abd04ff9adca7e659f7
Date: Wed, 05 Nov 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762345793
