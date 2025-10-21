Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFCD329C5F
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761037194; cv=none; b=CXMNZb0ENYFYMGw+Uo3pEnkZ1DELXBBLmXlpglvGPmJVNUDu/97tHIsUQAMPw81AM5uclGUMX+Gp9bjoVQMNXvbFWk8A0kK2PCFg1eXYz4a2TvPZQHUmOXyTQqFxtVkLjk4569Z72bRFCEj/QXQZj1TscI1JG3ngLtFK+3LfQ40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761037194; c=relaxed/simple;
	bh=leyP84zi7tzW+kR92CJdkOHPF1xQRfGyWF1bNkmdbss=;
	h=To:Subject:From:Message-Id:Date; b=lP9NkuXjb0GAXvrKZ4vS1tJt4EN7Wl3UOmLXiRvo5d0i8wYyUBCWt4rV0dluu0b2lq0UvjSw0HFFSO41Tdtdy71XpI4sJB0V6tDqo2v6ElG0o+tXej/snkoNA566E3F7CvsmELzrYSpjq8aSyPuupvINsnG2A+NB6upmcUuO9oY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KcxY7ES2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KcxY7ES2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10F8C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761037193;
	bh=leyP84zi7tzW+kR92CJdkOHPF1xQRfGyWF1bNkmdbss=;
	h=To:Subject:From:Date:From;
	b=KcxY7ES276NxvB0KjzwXcdgWZR1YK4/0ooXgAF0DzQcN2yewidZSLujnHvQqeSau2
	 wPYteJDcMzAFeTATrzDUJrgu/nKYBU711/OHfyM0y1Nj09HcdU4gaQlHBK7owGN8tF
	 U+rXjUGn6Fnn/9SjHxM+17D47bULhH4idUIb50uv0sBp/WDo6JmMl1RAZouiZ1UMQZ
	 Z1cfrrXeJqvtdAGCkrTibnK6MhfnVg6btjIP09QctxKEC6w0GuSs4C4Z0Nl9qEPTBg
	 IhsE+B0ZUVs2kN7nByXqCkg4aXl4H2i6nI4iQKiHrTquN+GlxFImRIA7EaMbjuadmN
	 3LXi0DAWOgIZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9063CCCD184
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176103719358.11692.1956859885809664979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8df09b937274a9c974eae1de688932075bd84fd12ba945e5082494838f9d097f
Date: Tue, 21 Oct 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761037193
