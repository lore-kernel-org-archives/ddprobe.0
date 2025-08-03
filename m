Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332006D1A7
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754227794; cv=none; b=ayA4GYRoG+wyF7Jht4iFYlskH5p4N23Hfc6Ov3JYL/6gkjM5aOidzfIT5U+Sp4LN+nZnqrmThKmzZndR055Fr9JDKiLzxOBLKjBjWXqokVICIFNxXl7TH42Jj0tZtZ5aRD+zCthaqvXeNOmu/fm8UZxSSgzOMKrJ3l4MTWFL9F0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754227794; c=relaxed/simple;
	bh=rsinDDEvKzxqYkH3zTszkatuM1Nag+E3UHI6/bmzE0M=;
	h=To:Subject:From:Message-Id:Date; b=BccAZsbEe6CdHcafcGaEldKU9wod97NjJr/EWCFs+AunPSovTSLcbUBP54LhC0E89E0oGP57ZKydF9xEpVeRiDxlBEE4hqOpIkJfRxcC/6EA4jM99ELM4exzBcwjEE2z7KjENqvxIjzyBxWpVWaORKbvD7AQnGZKUhveH0W4tJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eJKaI25p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eJKaI25p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BC7C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754227793;
	bh=rsinDDEvKzxqYkH3zTszkatuM1Nag+E3UHI6/bmzE0M=;
	h=To:Subject:From:Date:From;
	b=eJKaI25pQEQ+DocjHcitXvYwbfQv9PzdRdXTLBodY6MmOGAVInRaOII8wqpWcUtYX
	 jgXaZsUY62NV4WoqovhzijHPD6WdMSCjKCcze9O6Row/qv7GAYup/h3ItMVuVACzXR
	 XtX1Z9FBxbnCRADS1fUacJLH44B8LPmc8ChjEsOOpX6jYc1rSQzevPtgCa2G7OIymT
	 HkI4SaDEA7pmoHcktUXgW3EJaoqb1adp9NtDY5co5TfvxNgcJeaCi9D7sQpgmdg8Mw
	 zr3u07Ammw9dKUh+Nw/rIfne3bCHYmg2Q8WqLSjDOF7INDyrFgpZFiN/Ge86bGPScU
	 2o4pMmgt/lO0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE07C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175422779357.16454.12781466792880378339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3510b58a95bb2d0f10aadd99ecf044c087cfbfde94dc9f8758a54e602e02885
Date: Sun, 03 Aug 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754227793
