Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3200839FCE
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755455394; cv=none; b=Js6WOztz6Op/Gdtg2mnZP9RfwM73+CNokR5nXN6IGBunsJX+C3WY5XqwrW66fOvTY29bUbkRZi7cYYxiIUWPY6KehArCJBkXrmY2Jpp7eUTt/lobi+ChigApjR05WMlTy4Fxf+VoG0G3E9wT8kMlhl3AwabJh5/TpeRjxf/3qHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755455394; c=relaxed/simple;
	bh=nm8+3d2hzP0BA5OOt7sslRW31lMa+MegtQF9EPJSmqA=;
	h=To:Subject:From:Message-Id:Date; b=mNxiO1/FITUIrY0iwgFbxvyXgCZo44o0t7itUh3bE7ISmK4aSQNiitc8vEW7UxKv2AnYa1vYIFJDnpCsU6Fko0WvsOxnF28G2TeW1ejRP2sZcH8uMzIqcw6sUNeFQZJVOKDWwAod04gzpwqCa+AqcH6ZS/1GgavvE3uKR2vyWIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J61bVGgx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J61bVGgx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A567EC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755455393;
	bh=nm8+3d2hzP0BA5OOt7sslRW31lMa+MegtQF9EPJSmqA=;
	h=To:Subject:From:Date:From;
	b=J61bVGgxmEUFiJ06AV0ETVM93ntwDX5jq/tkjT8zX3NhJ6OyFo8kVeoLYubwbB0To
	 LOwNTvK2uoONeanu4XwRA3RstwS+9dWP+DJAA902Meb08pZgTYpVpKDwwzM2W4YR/y
	 6WoYkkj+yQKqLw5a2JQWKX2Uewi5C7L+Y0cAb/2E1kh2Ks7aE3afjEEzzhcxobMHWC
	 nR2VK/0QQUgZZf7ukojCeiTVyfPohH1WFI0N0GlYuyTbZwayK90asfZ5ST2uYrQUhp
	 GbgFHnYug0OEqZs+uEOudmqaw4QVitPVcxNW1gmRGSquhwyFA7Twmuwv45DLTfv9cm
	 KFx5vQCOda+9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CF9CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175545539357.21715.14169564170409091943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d39b425beb8939f3c9c3f02286c30b0e5a25cc04c4054a74f3600d2402cb7c1
Date: Sun, 17 Aug 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755455393
