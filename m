Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114C4334692
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760657394; cv=none; b=YeLN0wqcqDBq9idxKz+BqSkGQWT5HR1pxd0ZILM+qQP567jOwsN3br4a2vZGwOrxL7JzF8qp+vmqjgvxOgD7anVaHOdcx2KIdVqtnD71Q73TF26ut+bbnVkVnhc5VvEC9x9tP9AwHDjwSl838dzTuamG4NxlhTQk0447nZq9m0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760657394; c=relaxed/simple;
	bh=w2r5ulhHu7O+xEIvELbf+BDB+v9Qn6MQPpfGJj5hLaM=;
	h=To:Subject:From:Message-Id:Date; b=XsY2teRWEBLcGw8KcE7YrMJ90UP3Yj0xy8ZdvORp0x5KSZWcnIB8cqfUt4u4zXmjpUQ6Ayn3eNZeQdzV7+XOgo4/I/kwe/wtOGbQfjG1C9lK4YWSs7wh9XyW0V5eeVte1WhK+nz2orKyXiiYJvqJfjg0u9Y0duhK7muWskG0leI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YF4gtnQ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YF4gtnQ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4574C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760657393;
	bh=w2r5ulhHu7O+xEIvELbf+BDB+v9Qn6MQPpfGJj5hLaM=;
	h=To:Subject:From:Date:From;
	b=YF4gtnQ5v4gg70EWAEYCssle3qQdH5gygp0iTsPngg379crYDV4E6yXz6PjYFqQvW
	 VYLrpsOLIikTVbfgRL/D87jhNJC3yllAsOgrZBA7+nvoSIMV2qlO0imxx3yQRVmVZ7
	 WjTV9V91OtwP0hPr1TsxGfYxgjnt1+gWIvhejuEQwTeHrQ7Iw+LvLpxWiRh4tOePHj
	 3+cNwFQI/HdC82ariUuX9Eky63cFuieOO8f1sO0eCd+kD9UZDHjBCPkXkVri8EFnZ7
	 HVd7VfSt15WILd0zagO+55zygIxVLDoPZl9+qbu4E8egm7Fec8z/vqkAHiXB6E+PbF
	 ki/X2GL9vvPAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C47CCD19F
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176065739358.793.3858959010497756700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb7077dcc2a93eecdd0f2a2348fced550932ae433fd18f37bf2fd14a5e2ba665
Date: Thu, 16 Oct 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760657393
