Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102F044BC85
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768925634; cv=none; b=K7lOVRjyy8TOjsGtYcRcSFW5Q6I2Xk96sFWQWuK5fH8RAxqzl5KF2YXoHQAvC+J4L2xn0dFQLp7Gfi0WoLdf33e4fAbeDac6SEwfVVdJ/R+al23Iv1CbGYZkkukZeufHFsAWpDIaqDq0SsB7LJeOYw1Nwg3Is7EHqtZcK6TfvlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768925634; c=relaxed/simple;
	bh=JrYVeGTEONKr+A6g0Q4qfaKICBG9+OcmnrVYK4/o04o=;
	h=To:Subject:From:Message-Id:Date; b=rUzsPv3cqLyeulaWFUcxG5/glM5aVMW7JHuejS+vh/JMq/KkuKp6KMpVKhmBxNz44Kg8mXvCkJCPO+JQcbCsFtP1kMR5V2c5DkAfWrXm6AiwcUpeIVZT7UJlfK71ua5iXfwKSG6cUfIQYRz+fDwB7fmm1qPkDEyMwvO7PI6Nm78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jzyf0jbd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jzyf0jbd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D62AC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768925633;
	bh=JrYVeGTEONKr+A6g0Q4qfaKICBG9+OcmnrVYK4/o04o=;
	h=To:Subject:From:Date:From;
	b=jzyf0jbdymwBGGPVmt68CC1Xu9zZUak+FgExoUxhO8EIlZH7uVDEoukw6VCcp1lle
	 T5qmwc7D0k1xXGwrugfwEvuPsk1ioXi8Qv8HiPfi8FxjJI3GdzgYaknRPAGFOe3CWJ
	 cN32385jgwcAf1SrPYCN16UBtdbentsueKOZff8uFQYUwDQV7iq0EhX19T+xeU5pm2
	 itzoCPJ9pmFkS807XRExeG+dJOYFKr+j8EOUa2q8CsTee6SCfAVgeu5x1W9+FE+n3v
	 JwLruJDQfN9gscF56Ljgbyqc04EfXbPI+uqXboimYfyHtV4EuxE9U/hWG+LeoBazJ6
	 LLCQpebz2ALYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9029BCA5FA2
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176892563358.22617.12521273435363573093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cfe01d88ef9fecbf9663632ca77d592df2a9d127ee5626f9bc8f16ae6dc1388
Date: Tue, 20 Jan 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768925633
