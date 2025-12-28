Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394711C4A24
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766962434; cv=none; b=EA5SuPcewFlnivCJzmAixBawMR20ofMD2UDwKSK5Wx0Le/bAgOAw61IC1Z+hksQckv6gwqo0qZeIwA8PcOojS+Z462ix9tl0uVnrlDskRvUU4STZ8B0jfrRr343S0grYdsl6OPuBUM+CRVYCLkmQMS7Ga4Qtpd9SshyBwKFt/9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766962434; c=relaxed/simple;
	bh=+vk9EY8topW4s3NpAWwEwnD1U59OtYHZsKygJW0nBfc=;
	h=To:Subject:From:Message-Id:Date; b=m3LP9mSspDPLDCqh2MNHaNaIAjESS5+7CzV42aQ8ixmJxHPzcL7lPDtWMsGadllwWPieHeyR9x7KwvL6V8KO8b9SH5KkpdjEjOBN9X48dS6sH4dN3loTTTwZFt2uRLYWygt6L9XFNoI+HmlakX6Qx+6i+UqEYm9jbxLTS6e4xhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QFfUGiOS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QFfUGiOS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E34C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766962433;
	bh=+vk9EY8topW4s3NpAWwEwnD1U59OtYHZsKygJW0nBfc=;
	h=To:Subject:From:Date:From;
	b=QFfUGiOSi1A2KHnc2Vk2ZgcTXlxS1go3iBcDI+h8jtdIB3Up7bOGrjHszLh3uzMjZ
	 rbLP/SfK1QDJ/ntYboyi7+crienUhH3hJAtwsS57E6UQcHpkcnt24oqRDKhFe9nF71
	 JguGhOhPmns5lsaykENroGe7MrdKNsyC165xR7M9ZlZ8xT+1cMbvCmYkC1pGWn/7th
	 UXSMrtkfWRRtj0SQHrsDuGCTc/snE8EXVkQn7oaEW8B/aWzDxP8HrTMb8UbDsyjMlE
	 fRGsnpRkb0s8ZXGnCCLa9VJ9ORUT+Z487TVpPoNZkR9PPM2zDhrUffNTwZkyunaaEs
	 8IJzS+FSlWVPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E2B7D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176696243360.19189.7473973515148620518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae3855eefdb084003d76ec8d34f90c92aa8df4fa8f17881fc4dff4a8267e701a
Date: Sun, 28 Dec 2025 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766962433
