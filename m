Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349A638837B
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785993034; cv=none; b=Fzm6aDz5p5KqrHuSXaq0G2qx4ZDcWG899N0cWk4JomxaLQRpW82m7p7+4gZuI2Ul1swVhN8cXU727kZ8Tt5vXPUSPinx4ea/tzqii/PyQ7JBhtS4PKHi4GprCs2z9BNEWbR0rqbP5YkCPYvJV0V0cU3y6t7poTd8do0t+SyYzlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785993034; c=relaxed/simple;
	bh=9ksxVHkHpmKpSEwddM6UD70K/0MtJWAWlL9juoHxYUQ=;
	h=To:Subject:From:Message-Id:Date; b=ecBptzb2/jOQUYQR0DCdwmITvyjkYcaE7HCW2D1dd9ZJINtNdY217bcWDoiWBA/gd6Mgfi0Y4joZPt84ZITHakPr3odxkcUsiLa+WN62uuVewUv9umRSAk6E/O05G+je7cDOIy/2+paaAVP23UK8ANmj36R7X8yFthWr1HSRC7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ouh12Qjm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ouh12Qjm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0572C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785993033;
	bh=9ksxVHkHpmKpSEwddM6UD70K/0MtJWAWlL9juoHxYUQ=;
	h=To:Subject:From:Date:From;
	b=Ouh12QjmdiUAteioQwxfDVEw3jeFQhCibYnjHatLyatVXnO5udCvJ9vaWI36yh8xv
	 KZE+RZqNrYFX0wDs/1q2VDW/+ZJOFSOkkRuR/gIExuzHbTFe2WjVo/nQS8O8gzROMF
	 jJ8xLgi3Dr4ZgDNi58df3SWYKl1UrEyZQAUYmLT0hGkz8+Dhtw2vRPElGT6gbXgp7s
	 35Rq/4tx+zv0ehmHB/vBUU00LBNz98sDIQMk6Fu9RSs1pdU98zTbDJ3gNkzBFc8Vu/
	 q/4F88Qfn4BgzXGclsuF+vZycsxwBnABchWJDt3tMV0nEOHghVcAKOHBVd3B+V3U/B
	 Oh8A9E69vB2vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEEBC55ABF
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178599303369.8424.12995476941351112081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f8600c2f3e278463221ab8ccd89a77f00ceb46e34edad167f4c7910e6311253
Date: Thu, 06 Aug 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785993033
