Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06F6F2222B2
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 18:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764700974; cv=none; b=d8BiusvqkW5j+VbzK5PSGVFGoMe0eKPH0Pvj2zCMDFB43WsBpeV08HHkCw82PNFQzTbp06HAKHVIHUgPnI3oprcOwYhn0AsMGYFs+Fx+W4FRtAoJjY+JWq5noLH61EeBlxuZo/8KhLAmLIF3T68yS6+boPzys5+91icPKcDFYFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764700974; c=relaxed/simple;
	bh=qJacfVl4O03eBXkx1g+9yJXs1h2veGtwUZnqr3wr2uQ=;
	h=To:Subject:From:Message-Id:Date; b=AGONhqaElfyl0X0eIvr8vnRgOEE7VzL7Paahy9f1/U4YhvDNHzg4ZM+y+OpxHD8RyJQJweXcRJjUKFY+z42JEhuZLuH6A92rBeKuNx37Ov7wIRp8yTLi7hQsIoxXg4aA0OULv5dXaAdl38LOoCYgUTPzKqn7iER5Zh0Owu+xUDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSlOOXeg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSlOOXeg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75E7C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 18:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764700973;
	bh=qJacfVl4O03eBXkx1g+9yJXs1h2veGtwUZnqr3wr2uQ=;
	h=To:Subject:From:Date:From;
	b=DSlOOXegCuHlPezyvfUA0fc+oeiwMZXzs5VmGbwETLjNoxb/WNug3E/IgwLvWmkJc
	 9mj6Q8iZkAWV+eJqJMSNAn+/XrZcccaAjCfH7zYquiHczXW+V+vc/jM0E+4kDJk7XX
	 oAzSljYuKx0R++uW1RkB9Y0oHwMaylqtZN9XvaAnV4FoUlGOqF7M4ZHctUCdqmInAN
	 1xPKqAEDnHf9E3K4uH7IOq2rJlWw7uS1H6gBWAzxOXyY9xhfvErYGIkn5eVZx9Ei0D
	 sKDD/hNw0AOsRuPWRc5yeslbOKjajGJz/5D1gyUMrNcNH8veGurrVOmR0ymQ9Gtu7a
	 7ygloaz9ROa/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CE1D12669
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 18:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176470097360.27300.16866755613538270977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e33545f5d01c938b2b0749b46638d486c5f983262754195d6a629eaab7a100c5
Date: Tue, 02 Dec 2025 18:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764700973
