Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3254E198A29
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726736154; cv=none; b=VokMjSNVIIStuIaAo5la3T8BpJkOFIRB0EpU2E1usbnvqRbZ/GYBk1qtLVfHCVQl9HnWMtUcE+3ygc31h8z9OcZfMcjbQdVtBfT655TSvRSv4CWo+rgMNrz8p5mhpSrouVatsGcj4mwOed8q9rg0vqFsMtCZ3ZAX9n6clVlC8ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726736154; c=relaxed/simple;
	bh=baennfEGRZfRvOYDjSk5VUqUYuzZN2on5ZW2nbA3vFo=;
	h=To:Subject:From:Message-Id:Date; b=ZT3UX1wwTdE5uEQG9bnrXIEPBKjxVRJ8XKjJMbIrj8WtLQ0KdC0kXJVH6uxjQADzo2yvZNS11aa6Xcx2gEgaITuM3f+TmQzHhUaX6gRJnKt7XpMR5/oJPeJQyPpeRP9IbQFpNMufHaR2yYIPs0v7RiiA6b484Ai5bkzeqKNQ3ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Izu9pAvk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Izu9pAvk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1568C4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726736153;
	bh=baennfEGRZfRvOYDjSk5VUqUYuzZN2on5ZW2nbA3vFo=;
	h=To:Subject:From:Date:From;
	b=Izu9pAvkX9+iZ2szd1qLWDBbHjB3QsnpsmlIMzbj1JR1plMcl1EZmNe/0nYkWZoYR
	 3lvlkVNHLA2gBMAMFW2Eh2I1Ku64v6GX5gqap9FAyJxoXwy8sCdRnykEBVOgMF0w/g
	 VNzTyNf+DFf21ZuPyYLCuTRYyHCGy1tFrpcPyN81jIxGxsfk/N6R5fyHW1M/zmiQIx
	 x49gBwdTapusDfk+wb8El+B5eY1iOKu+eGBbfz7uOOGzRf5bq59OiLWAETzb3PECWO
	 k38/N9dKoCIH2x+y3kMRYFDY3h9KWU1M6FMu3S9JgYcu+u2XmdrxzZJpDHpVQDu5QS
	 4zDzgAiiAQ4Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A324DCE8D61
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172673615360.14988.4248200878121888854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff6f873a44bf0211b482ab48180d78ef247c807bf97cabb007887e85f4c36e51
Date: Thu, 19 Sep 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726736153
