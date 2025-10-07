Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B6C23AB87
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759870194; cv=none; b=UgP+M+ydtNN7/nh1vYvzheSRTBQXFeH5XyuJV9/x4vD16QtKzde2NpLM5ZsrgXWmbnYHNT9W/t1gxznwuvaPYP8cM1drrex+scwcLA2LOqOAXkImq8nrML4FTvvx+/9qXGd0/aYH3LssPkFPUQfCfhNo2Fn7mEEzYlOvwKBZyTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759870194; c=relaxed/simple;
	bh=8Xdcm4k3qZUA1nLk0AzSeMNnx0oJ1uyUnqIL3zENEek=;
	h=To:Subject:From:Message-Id:Date; b=AFpw+jEFYjL414AAfjbpMxK1Jjd3sj70YpCIOKBmzUGcxq7yAX4o97iVSfAqHFzouSL2bYqT0tjK/plNnHsJXzVvoblmO+ZSV9m1uhSr/sUL0tvssFMwZs6bo7wmyNYy5KCu9ZldGlpm53BHigX6fGhwJjo4YxvQU15JCzDkSYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jbnx/vsc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jbnx/vsc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1775C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759870193;
	bh=8Xdcm4k3qZUA1nLk0AzSeMNnx0oJ1uyUnqIL3zENEek=;
	h=To:Subject:From:Date:From;
	b=Jbnx/vscPmdq3mwHAAMSL30HCKJgINPa4uQD1lXNASC5aM5Ig2tzrnoxbN7YhgPIv
	 xVuxYSN5zR/5K9pvu/VOO3kgnu3pNJg3MLGpVW487CgxXkyDhB4Z/mUuI1QeNkGX+m
	 pbwWJQOHIUN4BJcBMa3cO1N0UQ3FW13Fxnx7VVwzwTa4uZkF+26X5C5kXIA6QxYMfg
	 YndJiulbA4jlSpr6LyiRBst9/5WAEacMkAx352DKJKkPGF9A2pu+27JLFCLAzp4uIF
	 plfcxd5QB2xwp4bMfwcwprgUl6C6rSZU9W92I0JVwANFyinuAb88AsJkI9gGwp3NfB
	 CYZlU9y+sTN8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DCCCCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175987019358.16027.17449755104672490176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8c00075489d336d3c76fea8e0f289a1f1130849eee8cc3a5ea70c74f9a13123
Date: Tue, 07 Oct 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759870193
