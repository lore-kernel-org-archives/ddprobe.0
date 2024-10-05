Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2909810A18
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728162354; cv=none; b=uyi8Z9n8q49fJgPgseIlrsw9wbFeSpIfAvBHMD3nKile5GADkyYEBMWbSgV/tD355xf6Rr/utH7DNpjoWnfYnUrhsI0BXAdqdrav4Ic+7RWVlEyr1rTvLaaRA2GdFfox+WycRCxM/k8cOjRDZUKNIq1neLwSkkZL1l5UNx9AmYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728162354; c=relaxed/simple;
	bh=VUy5HCMy2ihuvhmbAua2IxOROx8PocMImUMJUMbTUxE=;
	h=To:Subject:From:Message-Id:Date; b=cV6iXuKPH31IUrEVez0Y7LFibVsWkOQvcdsFyNo8bOEA665sLT9z60RewGpNiO5sCGxVyigKIrdqFL+tZ7vNZKunrKdZQphtZGbesq+0Cd+4+xgN20aZSVlVVQ5wCDIK2adoZvvy+QxxemxJyuD7ZHSHJJjtY7/rAGFHcQdzlEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7Hmei9B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7Hmei9B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFCD3C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728162353;
	bh=VUy5HCMy2ihuvhmbAua2IxOROx8PocMImUMJUMbTUxE=;
	h=To:Subject:From:Date:From;
	b=N7Hmei9B3NucVTE0erS4oii2GYbR96uxYL8Geb8WPrn3Xnh2ifr4L2btFqb5xhWZl
	 8Tti1SRAB73BcXE8hOQ3DDVKiMF4xEa1rYBlLNLm2ZXNOasJDn1zrIh1A+m7t79SQJ
	 O8QU/6+1hvVknhExP2iIT7gD/c77VO2y1CVHCokUoQuP6Cct+JQFfp3ECO4ifIy3rU
	 EIa53tYh+IBYTXJmqnzu64kxXbZOEN6bRZBMpZwO7Jl0+I8nMBOiTbv8WjXYTKNfLX
	 La2jYZbAgrvvNmKQ6SL08VtA7Sab0bLf+MKCmHfq/xRKz4PmwzR0KQ1shSoyOq8euG
	 NXtfdhmEp7+Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C1AFCFB43C
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172816235359.26044.231949074331258803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 444c503c803fdedecfccb85fbeab3b20422becb50508aca8b8b1821ed95a5596
Date: Sat, 05 Oct 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728162353
