Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22045256E
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727066754; cv=none; b=iwWJxKGpARWeRXin0cing/xYDee12SfqVXyBP8lhPA8n/2Qk+pshQUQD/4QK7CQtRaDTWwaOCDOYjMQut3nMCcJlCTDTqM0wYKv+dE0CKQ8kWICk82HmDm+qaIicYb14wa5HgYp666jo0mX6ROwZtTO2VpyGOXooRFP2x/t7nCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727066754; c=relaxed/simple;
	bh=Hq7ks/uBzTeLdUzrdrjHLnTvbFNP7PCu88G8BEr2W9k=;
	h=To:Subject:From:Message-Id:Date; b=rJgraf3rQez6+YboG32FPpWb0ocUxMkjBNnf0TQZ3WA2l6dJvXdZkG3UnbyV5BRjwlS2Wy9KK61EkSxmlrTqWwyQ3DFLEWAGqQrjq73Zd5h/l1ZEs8DyqegxTrtZIXCu2B5yKo06NPbAzGUpN7PxoTuY8eOfWyeNxRZm8ayPMAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YaWDW+jB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YaWDW+jB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A580DC4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727066753;
	bh=Hq7ks/uBzTeLdUzrdrjHLnTvbFNP7PCu88G8BEr2W9k=;
	h=To:Subject:From:Date:From;
	b=YaWDW+jBTJWC2L03THFtS7vxk1+0RNkRwtWYQZjYrj0VVIhs7Z/DV7q/Qzo5+gzCK
	 torWjyFI/iVR7jqYbVAKwkNhOvJtzTgoPgZMb21X7sr2vbFitDEG4lrNHHfn9Xs98O
	 +I/yzV7u1ySoxvyN+46WvZPvOkFuGuSDtYey6U/foVNGmjdL1PzRMrNrfGH9ixrus6
	 87ZZ/Z+sEjgu9rZL1Cf+uai7uzHOmE4sxCFWwyN5ohNlvO4kfwKKtEKWKX5nFBL0zi
	 NWDoxRhq9dL6RMIdhkKTKi250J4FWOP3MTI9ONnfa4WavdG6Kw1TFzDFU+i4QGzslr
	 MyD9eeVRRqA1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93868CF9C6E
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172706675359.17036.16041591463781059971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74733d86e02eafce243f0273c24e772da4282664b39afb325cdca216d1f38695
Date: Mon, 23 Sep 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727066753
