Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2092C3A6B95
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773413694; cv=none; b=Y0hUg3AOvEPHrKIJ3FgPgwUXUwMYF7PA81tpmTP2e3wztw4TkgbQD4QJK0fx1ok2qEL1MHxRk7i1l5aHHozfdCP43jggG0zoY27VaFdH67/sBrjrzQrVcf6D4vlj+XeufW65D987g48LcZX2i+LHhjUo4toIpO9eLNcIKZbFq5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773413694; c=relaxed/simple;
	bh=OrLSZVYyiqksdaIdLeveoj+yn3PzPOCEYpZoctHfUPQ=;
	h=To:Subject:From:Message-Id:Date; b=kt/iRFMQdRl1TVbZeYfNJHH1E/lb5t1svrX3MKkUnF7kmUR1N5elYMHG0Xd8YCtC78V58LBKgV6i3ettACPYH2w6cxWXT4AbMx2070Cw8cn7eK5W1yETFGjRaGs5jL5oWtgkV3eIhWNU0tztHYQJYVFkWjQYmnev721L5zmuUK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXg61rD6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXg61rD6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF289C2BC86
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773413693;
	bh=OrLSZVYyiqksdaIdLeveoj+yn3PzPOCEYpZoctHfUPQ=;
	h=To:Subject:From:Date:From;
	b=sXg61rD6AvYh7PdfzUHFWEg32elhFvntdDoeeTRq5OzzFe45XvYcXkRmw0w+yE0lj
	 rv5DDe1x+0Q29Hcp2X5Lb70vGDPKBcddnSG2u1+tnyAtHmodrT55EGCZK7OylQorDP
	 u3+mvwOoIABeHRsTOpQRvL9LRybk4GUkDFRSZ3VnKyDl8c0CeOqVn8J0UvolgXjhxQ
	 3gWi55877um8Orq58hkzTwovZ4FKdB2SBwA2OCu8Sv5uUBlafnhzNCezXIFLyJ7VoX
	 Qe2+vrkHSTw9XXo+bCXhjx4TuH7W7Sd8kR6CQ3dw4I90AQPr8F4hTL5wq4ePWkZ6gd
	 JsG6Vs5hNMPDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CD66105F7AE
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177341369362.15922.1458332401730085643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33e3e84a370c77382d05b027da68dc7d678bc1000187188c51d3f709823ad54b
Date: Fri, 13 Mar 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773413693
