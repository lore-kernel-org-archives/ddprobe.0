Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4BF2741CF
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746481194; cv=none; b=VoJdznfHGuvJxCApkP0N/3MZhGtYBg6PXbyJftPAlH7tCVgu87auZOC5uw3LNMgmHcNMwknmxUY2yeF25HCl86N10BvQ06UuKYjGwjnbUw9W9Twuss/6ZmsNdLRfN4CPtpFw82eOFzQXk8och+M435jwNVcJJ0yF1Wi4lvtUqaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746481194; c=relaxed/simple;
	bh=qi97oZ2/mpFbHyDPqLpi8Snpcj6XxX/hKKPFroLWQ1w=;
	h=To:Subject:From:Message-Id:Date; b=K+FkPIntUqsgm7RdcyJHTVyQK+9A315GQKTntp7WPoz2655A6fC9q7p8gN9KjqgABort2DU4i3RmvTVZdf9He/Y2xH1G7o/EM/36EqNZaCM0oFcKhcS2ccVQ5jTVi5XavsuP9Otfb6SU7CqRsST0qT3x0T1XrYE6UYHTcOxl1AU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LkdEthm1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LkdEthm1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17DBC4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746481193;
	bh=qi97oZ2/mpFbHyDPqLpi8Snpcj6XxX/hKKPFroLWQ1w=;
	h=To:Subject:From:Date:From;
	b=LkdEthm1PGj7H14/HGT+f+XWbxJm3Vydk674HtomPGNofpyNX561tQ8C8rwdHrtgF
	 fROw0vHuUEnibiWv3FS4ufqf1GU4FZBpZNg/I3yPMGAB4V1v8ji1wrqqOpqo3EpvvU
	 HaslDG/MhKUTqW4kVYrEULpl338VK+kbmfdZAYNi+7rzsRPPl4SKDwqUw6jNwGg47p
	 qyRY0cqxO9DAsjPRYcuzh5PHrrlZc6vIyiAv2vzqtX+c6C5tDMtoAd1+v/TkwyW+Xo
	 EmrQFo3MjiYLs8tAeUi3gkZkHLT2JTXNjQ/KNPVq6RzUMnmfhU+VsOJphiIAPrekPR
	 PyzsSu0FX5eWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91020C3ABB6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174648119357.12666.17394138319328097557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54f8d9aec38a305e6033678a27c18ab6abb45791ec161b69a8aa6fa61927fece
Date: Mon, 05 May 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746481193
