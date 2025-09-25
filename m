Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04DDCEAE7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758787794; cv=none; b=KMCsRN0xK/9Clhy5SAZKO+deYAwTNnzQfETilNLgB+5bDu0X5s6SZsLD47Hj0nDQVDt1CFPnyd9dgnSshaNCE/5e+c7zrScDlPBsBqyR9JuZkiEtEHFNpe9ujk/7MtA2Q4k/SorXt6SB9yX0xUKNEv85bdMdTgiSjKGn7M+7Ptg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758787794; c=relaxed/simple;
	bh=48b1xY/X5Ee0zxj47hb2R0+1QKZ4WFxmSEQxXMcMZRE=;
	h=To:Subject:From:Message-Id:Date; b=nCEG46fF4biJIhysSq9LRHdwFTYa0fykqxum7zBzH01/J8ykRS28aooU+H9ofMTjfWhALaYxcvh3o8uC9+SwJycP6IMC6s5RtNJReZbC7FaysNMvnRqfPxcO/lo2/pUjv2sdAaAxzZuDK9DtlDiUytYTFUck1q7xsiihVIIdmMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ns5V0sJJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ns5V0sJJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F4CC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758787793;
	bh=48b1xY/X5Ee0zxj47hb2R0+1QKZ4WFxmSEQxXMcMZRE=;
	h=To:Subject:From:Date:From;
	b=Ns5V0sJJh0QlJv18NeTOA0bihAYArPuN27bgHGs2lx+AOfQ39eww4Uy1Bsoiwj0A1
	 9ypVR/yTaL+0Rdx3r0TG9DpUZJJRTLmMZKSaGvKsMf8IurFjVAQ8uDDI+Yx1p5TMIi
	 iJ/F1TZJ4y1OjqkZl7LWOCwbbEJoEnuPPV+t8BW+9s96kw64WFyq0+rMTTppUxUyeJ
	 SXIkLV4772tUTUNwW2ZyEuK3zjjNJE1vI1q4h46X1DHfusXSjwAi6lm8ZDJz9fCW9U
	 OmF8wn1qtALlpRTFqGeBItGX9v6SjYT/bH6W78fqLK9FWYwHE5lC4damJ8zuNdsVqr
	 CzuMRAAQHhJiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958EBCAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175878779359.29766.2539595426413799413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0fa70a629d6b9545019f50c579bd3efe8ba0dd6e412392ba38d93e43d480569
Date: Thu, 25 Sep 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758787793
