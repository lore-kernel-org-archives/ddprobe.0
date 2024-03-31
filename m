Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF05F41775
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711919297; cv=none; b=hrkMT7+Ndt069Iny/iyv0bRGsJ4Fv2EKB7B9cEqAwZ4h5O1nOIGvy7BtqYrxG3TYxlAAoSlQqV2V+UNKy4hz3Fmu4keBahT4UC4k9jsa8VR6SNadhSI/+vnuN8o0PuKzUcaaUNYv9d5f0uYC8vZ+zcGSLaN9xm1vcvxXDWlDMd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711919297; c=relaxed/simple;
	bh=3IT8boY+mMyKtJhXYpcoC3sWeIOe8yK6E4YbBhI2Eww=;
	h=To:Subject:From:Message-Id:Date; b=jRdMskiNbWt05aL9NB9aohvgg8NISz3yLa1gVIeavs7TVk6nA4zuSGDBXPR0BfChP36JGV2vL2WELgH6Y7oFKhTyvp+DyKGXrWOzIfcN7k3CB9FB8N1bZbvK8AzS6N1QMZJcpXrGhT1QkkaJYUR2wI8Jxtbxof0d1QMuyx7F4Zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFq7FYKz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFq7FYKz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79790C433C7
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711919296;
	bh=3IT8boY+mMyKtJhXYpcoC3sWeIOe8yK6E4YbBhI2Eww=;
	h=To:Subject:From:Date:From;
	b=rFq7FYKzgV1vVN0QazBICWQrRSBbkGoXD8ECmQ5QZSV93AoAUsWrgDMwRUcSg9pWf
	 nfUo1C5Hy9cqBBRYVcKY4Tnv2XC0kZDjgSjxmXWDn3SCOFkvBFwkvdq8KU0bM2BTeP
	 SQw2wPFJ74EhsBuI67teSIRVF/qOIWuEv2Blh3wM+LV9Zr3eTjP0U8aQfOo9PASaiL
	 KNUcqHfgeAUyR9cXqevF4eSWCA/F1LO6PzG48ige8QUBcZ49yNBQfrhxiNfA6uyybK
	 /mA1jE9RhQcEDQ7O/tqKbfUqIcdLjfdYM06nTO6qJkwYQDP0qPvTeDTR95O1L3RGzB
	 FhbdPggRxP3Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65DB0CD128A
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171191929638.32582.573124697308344515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dca1951f422a87a5428e82f21c1c6c4d9a63842404380f56f52f2a47518478d
Date: Sun, 31 Mar 2024 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711919296
