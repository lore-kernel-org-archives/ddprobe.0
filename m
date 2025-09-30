Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDB0309DCC
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759247994; cv=none; b=eraxh6KxqgtetcSykiOTNTYMOGJ/sZmQXsZznZs0Q6OyIet6ZEHZD2FyTTDXaIacO+JxUbjxVrUjhfmq9Gpl5H5GQf9rYaQYVEBI3i7DrBcmDEuN/tN/PfIzk+pZIzjQNWSXL9UqtUMpjn6bQ2KEvAzbEtymZV3qVELa0VCBlMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759247994; c=relaxed/simple;
	bh=3I6Lq1I92Jv3qbrrmCF7I3p23TgtegVKvbmWiJFCtnA=;
	h=To:Subject:From:Message-Id:Date; b=FcAbyK2GVE0MCOCvxg/5lrz2+72a4p9+wtyAsiN4o2e5jY4Yt+zV4CBW3jDN4lG0wUysiaiTHfF0ahJp6dmzuKL5tvG08FbfmOiQs5bC/jriL072gOOdsmuMekfydEbqbXjvf1nOUAmC8dSggwZgWYS++wKpsJDE328Lt93fKt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=crD+mNdY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="crD+mNdY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B6BC113D0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759247993;
	bh=3I6Lq1I92Jv3qbrrmCF7I3p23TgtegVKvbmWiJFCtnA=;
	h=To:Subject:From:Date:From;
	b=crD+mNdYTlrX3z1zTnj3S8KUyLI5IYunGH9wyCqCxxIjEos4qUamxW6AQyKe8sk5z
	 yNH1ECgBF/hkJERlk5cqwzn76/cs+CbzZoOsf7ynTqWZh39kWGKGS9oddwb0KTBhDY
	 uIfvrsIoYQCWyuzB9Whq4axGLqW7u5agUa8QimKgiFxujtwt4iAU7KnkLq31gJUfiQ
	 MoVwiQmtQwhAnxC1bu7/i17YFeMkashErUq5DnLBRlyRzZ2kWJNnc1UE2fZUOMEqhB
	 xyR5LuDM7uCETwI5jZqm2qdbgW5ihvT6mNwdOFUFk3G7uoiLqKDSBIAbalj6uhdgFz
	 1MGf6BqVu/P0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92652CAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175924799358.7404.3826849348813481745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1cad84ee82fe0c0abc9892c06c824f264398a329f8906f5918ca89257cfb7fd
Date: Tue, 30 Sep 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759247993
