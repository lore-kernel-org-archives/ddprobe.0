Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1014E154C00
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731668754; cv=none; b=E8I45uxxLM1RB7tT6WQmfxaS2xDaFgQF+UhYKp90119O0CQ08QjocVhYyDipMqPeZyA+R34kKZttVjUqD+FI5dMFe5EETctNudTU63JHWBbkt+MeTQl/+2khDFrq+KaZoj6IQwmRkD0qYnYHNlddNpvBjSwtmbaVLBkMLVS3AHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731668754; c=relaxed/simple;
	bh=V1kQ8CTpLoA8ja6oKg/Cq7L6dxfDaHjOQYlKBxRckwg=;
	h=To:Subject:From:Message-Id:Date; b=kXWI1LGAkPhpDRszaEC7+/tc8Ee30cZSXYdzCRoCtM6vE78EGbP8Q61PRQrK0m84lnuhQD5I4Rh9bEnCSOtwqqEh8fW8wJUm72obGSMNlnN/4kMriiFMLikLR6yD6lW8gCdE0wC+aIp/NH25PeibWLSPAb9YeJyfT8lpq7m/+3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSqJpqFl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSqJpqFl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0638C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731668753;
	bh=V1kQ8CTpLoA8ja6oKg/Cq7L6dxfDaHjOQYlKBxRckwg=;
	h=To:Subject:From:Date:From;
	b=tSqJpqFlQQyIM7MU7evsdNc6zf34Gmirm2BaxpUZy4yJajWT9TstfbBKdE23wmbsS
	 l8wdwd46yEeqL1I+TOXQKk7cCWIPBHdbosProGlS2P1tw2lzAEwSdWRrSQMgs/9plK
	 0jFEfKkYltprjxtcEBASbBZaBRHhHZsGOxNnQUK/8VQgTXyDokpjQvJwqL9knigkm/
	 SnJoZaaNXfHsz+rO8nQsFIYzDoordPPa0qquLZ7oQfN5Jx8QdQbylwUDhhltR9ff/y
	 XB3ldwmRXSpTa8BzvdAAZdWKaZjid2jS4HVkQAKXbklHBKbflUJLaKFtyerO7Wwccj
	 0zxLViCHSzdLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CD8D6DDF1
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173166875360.2947.9897439484205225212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3a18cf231911d5d6dd83484a520612fb00f20f080d65caf7c011455786629a6
Date: Fri, 15 Nov 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731668753
