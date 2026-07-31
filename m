Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2329948986C
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 01:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785460834; cv=none; b=lTgRGMfMGxtIQMq1rynLPymBc4dTbcyOaHsPZdBTK6xa3vPivnPvXihKkpz/hqljjOtXUy0N73znFnwx/APizJyFQ9/Z8qg7MB6dossnJc5yfbAhxvldo+/LW/BK/kMdC0KUMslKzfDnHK6TbKiNQlzjlvDdsYulQNWz/41fkXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785460834; c=relaxed/simple;
	bh=yfhFAO5WVKGE1SPDMkiEBZVyKHcAFt+nCkvstzU8uts=;
	h=To:Subject:From:Message-Id:Date; b=QiBA7QgH9xFOzvKO41ZOd+hnYFCPR1FD8NDJXzofyTJEQIA4lKlrMj62AELV3abDJuAgbQboOwv1v/DusPlwd0jF2czLeY4J7wK4JDwZo4yceKmEKmAjgxjqeaP9L+obn5WD5HmZK4gMg7eRFEuOw3fO74IOs7iNsk+1nKXvKaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQhMIzKp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQhMIzKp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFABBC19425
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785460833;
	bh=yfhFAO5WVKGE1SPDMkiEBZVyKHcAFt+nCkvstzU8uts=;
	h=To:Subject:From:Date:From;
	b=SQhMIzKpMfYreXxY2gl+PDdJ2DGmtFgAoTqvkL2jZtcPibymeTvUX+5FKshIIsm/O
	 7Y8kngmnLYKPpakKsqAAfDMEsVHCQBjz8dXF1LdOHrKWjXWn0Kg5AISHG09zOOPt/E
	 ZZKV0TA37fVs8I1JpNmSz2kQ8RQ2PYQ2GeAD9jjw14ky8rGC+D5SX2IvrznuN9tLKR
	 c8JT8dLSR3uqlR3Ieh83Y06aVSm5JDA6y+dfac3oVk+Pi2sMKQj4xcq3zHHNscpgE+
	 HCYYzt7gswmF2+a+ceC1aPGe52pf4s+b0L88blFdbHeEQ50oJhGbfOWXQZ6ryCeGKf
	 mbuxa9aG7W/ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E1BC55167
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178546083368.26288.3627544847516865041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65b268e5f9bcdf3a7681c74277be607d562c2b46bcc403b19f9b1d1ced9c64a8
Date: Fri, 31 Jul 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785460833
