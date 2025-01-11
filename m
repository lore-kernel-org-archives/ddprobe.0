Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E44972BAF9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736608554; cv=none; b=rg1G2MwPQ/GxnJnSCMNdPAyl7Jypdu1Qc3zlF2xu/Cwwd3bnyvQG8yS/0ihksAv0qF5/xcVgqBUGi0J+aeBQLxelmy7wgdZ/QCZ37rR96BcdMjR4FO1/MsKDTk/kf785i5h5A+hQ4VsHEa+2oQiyw9zKDcQPcg75MamJ3jDEO7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736608554; c=relaxed/simple;
	bh=c7iC7gpMYhS5ohPnPu/VhuC1XJ8WIcw3++TlVPSks1w=;
	h=To:Subject:From:Message-Id:Date; b=HR8SrjbA5olOPbxLCeBHJ26CdgzVJJt622muVKNd6O7rEotcfniwbl8iwuRjLvC2fTugxtujBnPEiTFuWWzz2QVhXIvs6J0o6GAlCWapvJp+um65xwrp90+vih+pKAZIUqdGs9JC233Z+6yNPCmFRH/zIwCKC1Rt6SpgL0a9cWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N8uSlby/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N8uSlby/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB55C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736608553;
	bh=c7iC7gpMYhS5ohPnPu/VhuC1XJ8WIcw3++TlVPSks1w=;
	h=To:Subject:From:Date:From;
	b=N8uSlby/U2jeFwb7nNXUV1HvmdGiBmtdRczoVrP0nIH56QhAcMGYx/ifWuGhZ49Zm
	 RuyDWo1PL00uIFjbx/S7MX0ZsEjoQbBDiYz9SpkVSQZvfAKLBr39leNkkzwOBwljVr
	 cVy71pycUwo5cbmIAxBKmwUFuVQzlfszxgLJPsvWHR92gjuOP5GoTbQC5UELU9Tj1Q
	 vYjzdQsB2Dwi44IHpg/2J4zZOqxyKGWRJRIKKcnqcFPTk42FWBmYnVDPwpO98DCrP2
	 g2c35SKy6dvRrzF0JTkrmxQKZstRpnoUbDAAXLu2M/II6eOd+H/1ZQbIJy87O2BnV6
	 xJ8j+2rLhAtJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F23E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173660855359.3151.5676924834442739825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7468c44221ee2fef7254b05eb1aa010582db5400e89dfc09f4d7795b6ad68f4
Date: Sat, 11 Jan 2025 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736608553
