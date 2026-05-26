Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413933ABD9F
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 03:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779765154; cv=none; b=Sks6VQtNZa+GybXZ5AzLqVa6GkFkTtGOsg3NvY3TY7ZjV5FNe+ZgIadsjtah2qNU8abZyR35Lm840ceB7Gzah1dJ99Ncb4S/lBZS5mzTlpMwc39kOam7WAljWyF/KVObaoEO8A7VbIN0dgvAPFNHWAT7nqVWls4mJIwwXyyKeBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779765154; c=relaxed/simple;
	bh=jAYYyutYPciBnY9m68n/H8XZy9reOGSKSYp6xjRpNYE=;
	h=To:Subject:From:Message-Id:Date; b=YYQrwiVpFaRQCFE9UKbZ3r5E/z8VbKjm+qcFXq0vMn/EI2ClasRdJP3ct6Mi6o6sl1kDXN2BNH8U0g0h4Is6n2/nX/nZhFQ3opk15WyDU7Td52xMKHjSkzxCdXQtEBqz+FWoXsPIWsNx7OT64Q9JTSVzwspbVlaC+qygICN187s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JP/y1L2b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JP/y1L2b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DC0C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 03:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779765153;
	bh=jAYYyutYPciBnY9m68n/H8XZy9reOGSKSYp6xjRpNYE=;
	h=To:Subject:From:Date:From;
	b=JP/y1L2bXcoIvFvmdwmAbdHRQ3eXOcP8FN+U2mxpjCol5FHfr39VljBk2NxmjpRE0
	 sJ+UDYq9wJHzUYiQErPDJkMxAUrnITLrIF/wi6VbMt4FCa78Mi/v1vxqtil5gnc1xb
	 7t2mlyw2Fcf+9NZv85J6i60LkV5PRYH46ZzljE5KVj8e7wRFz4tMhkSDblHevqtS9N
	 fyC/b6Vg7zCIwV+fkoEYqsOvY/4xFKbuOwU+cghxBboQPlwOPsVHnKGess6tAvJB6e
	 lLC1fOBZsujzBMvIqyFsRyYfKK4H/7GoLeEujpYkTyaTRvi9pMex/KFo0HiFkMG69S
	 O0iDX6yBCGs3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8010CD5BD0
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 03:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177976515374.31915.7650342990122245263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 889828fd85c50110d85a69246c576ca20b98502a3c92ff265158dee1391cc5f9
Date: Tue, 26 May 2026 03:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779765153
