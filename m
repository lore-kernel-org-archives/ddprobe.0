Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A2719D062
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738869355; cv=none; b=kTLZt3cOvKi/13jSzZ6krVq/8/CtO86ZBYqlschCUPV5PA7aDMXGoiQIRBTdiTLW13uIxeGLlUXbxDnXW9rXXubsPE63EiBOlD2kQlwAQsU8qKWLW1tBBIaUan6GVaGMBmkXwJhYMxMf0FoveAD9SbsVf+SyTxqCUlfumE0nwY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738869355; c=relaxed/simple;
	bh=zn+tZ7N7bzQyLIbHQE/2cFpNK76VAIpvyfHlXEH3p0s=;
	h=To:Subject:From:Message-Id:Date; b=Za6O3aaLZbTewHRBrgItcIbtvxH7xEMS8asNz/BQhTZdGkYWyLA7cdrZizodKjZWiGf85Cg2viIWAk8nfCWRqKXlO90ovQ01yMWaUJH0ZkXsR1zLw9ceAEpHt/J0Zx2OTQao8h17HziPIT0BhCkzgIkqYQ2YIW4M97PpEHiH3fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NIiTF747; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NIiTF747"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6B85C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738869353;
	bh=zn+tZ7N7bzQyLIbHQE/2cFpNK76VAIpvyfHlXEH3p0s=;
	h=To:Subject:From:Date:From;
	b=NIiTF747bu584HDi0Iw32xJipfd0jnX3TlWvb5s8jhqMOcNbQA3GNJgCkbJtMoVZR
	 9Mr1nRFvBPUyi7XFPhC/9aDII75X77+XNlCOWQNhvy48REN1wap5XkmFIqHPR6GPBX
	 E9v8JsftGtWefNNbuSqm5TGZPHHKnMp52kmHcpAELVMAt5RUK65DfVggAbyp4TjM0p
	 PlJavH9/gCH4blLpdDM4NJLMWjvkYSv41AjsHqSeMHmzieabnFBjtZvyHwhAxc3I/4
	 smWzRmYCsJ46JjE9ArbJcc8stQPwa0EKy+Lg9uAigSl/1h+/VvHsNdJqCGNbFTU4yM
	 uqCK5xO23e18Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E190C02199
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173886935363.7488.14116264511055937034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdd21b11d5a8d14d2bb6f51026377e0222a95a61df5d61fbea5b86199748586d
Date: Thu, 06 Feb 2025 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738869353
