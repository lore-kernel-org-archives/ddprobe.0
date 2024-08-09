Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3313228E7
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723170954; cv=none; b=sEs40kpfmhUdYkAMFhw6LLzgMB6RxWNLtRcL7W0i6kS81iGDPni03bK+h+rSJO6/H9bO0NKVQrBipiv5Fh6jJ2WrAYAaQPcwIOJjeKeNgETI8uJMu21zkU3WILsJEwRFxA5W4cHGpKbmShjob9kF8P60xX/b5UJGUODuVR3nQSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723170954; c=relaxed/simple;
	bh=ulfVD1gomc9mTwv1va3KEchF5wNCNDlEQaAmVQ0NBuA=;
	h=To:Subject:From:Message-Id:Date; b=ONoocrr2VVTPrH6N7jXxMLvKY8Q8eprCnJqa1SFQf9TQZXXub5E8Ha9eHYKmHtuU+YwKmkdxcsjEDP0m2FPVzbE3RkndFOkX0bo0dKE6wUcC6YrsS9IsAv5CbogLwemwbVMPFwlAvmzE7r1OFK+MqF9znejF1F/XMB4EFYwIBPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mFJY9iJ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mFJY9iJ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE00BC32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723170953;
	bh=ulfVD1gomc9mTwv1va3KEchF5wNCNDlEQaAmVQ0NBuA=;
	h=To:Subject:From:Date:From;
	b=mFJY9iJ7Bg/tUAktMIaEdB2H/1cejLb7ZJSjcytnurlTJz3POG4R6GAn7W9tKa04F
	 KGIdAjHaN/ndn3Kyhbys1yva+HwcG51T7xR5NE3Q1dxWWgv7n8rxTIYc+OSjBgT+Z0
	 9CmRJF69LV+r8871Lfy8PzjytG9N36a9kvm2SijQtdxD6oCuqzZX5uDZRIyHwR6NlE
	 04WSfjTp8igEsfTjnUaAWBAELnAeUVd+2/TUbFcEJOPM+FI2ElXKEVqRDi9CugbbSk
	 R5m5Ncp4NmZ55NHlfsdOhi9pMpuleo6//xmd0pTPwl7jhakIEWazpoxLJUqDdJ6XeK
	 bj0zKst4hI3LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EDA8C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172317095359.30605.16394778813883563674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1bbb9400781f250fcbf264edb3772dad8b769bd7b520aa813dd4ca597959f5d
Date: Fri, 09 Aug 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723170953
