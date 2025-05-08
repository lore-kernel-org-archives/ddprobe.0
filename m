Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EBC22173A
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746689995; cv=none; b=WZ/G7F8tXwXZdKapj2OeU5DUnCF6WKveBPXwMTwKGZnfLlOHhk5wxEtfB8gdikdBfeE+pja8dKfxKSut80mC7l5vGBCUGnyPxpP7HRATcikfqAeGJHpTKU19B22r8I5+2s6m9ZpEbteK4s6QnLTwHNf9qj82wnHR2A9VbtqYKDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746689995; c=relaxed/simple;
	bh=NW7RixAir7H6NtBXcdY3rXsIpnQl5rM+DwiW0Q81YEY=;
	h=To:Subject:From:Message-Id:Date; b=OGKsZ21pYrhdH7jIOD3PjPKA1ghwuKOcf6PJVkHvhzbD7qSa2zlJUW0qLcipeiAIMoBsD3cvNdy0Uxuy2p7F3Ye2w0e4H5So7Q4eUrZ/K8aerMgOsqsRIPsYv6CsNQVfrPmDALagfUQeTq6mAFpu4NIuYOMozsT5ZQG47UwcnxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ko//ZPwQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ko//ZPwQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AC8C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746689993;
	bh=NW7RixAir7H6NtBXcdY3rXsIpnQl5rM+DwiW0Q81YEY=;
	h=To:Subject:From:Date:From;
	b=ko//ZPwQVwMPoMFu+xXYjwvSoN5XyaU4HK9L9L871SfgHd8DnWan7ANmrs28ROc5F
	 DRS+tMGx6Yy5g+rJZRU0Mh6DXzeJDt5NmvkrdxzAaquPGrMRT7oxYySjxXHminn+Tl
	 NRGD+4l/lUEhfrZapUqHb9hDVrStwwQKfS6+ZOzJd9PsG0tf+Trib3XYJ6FH5DFfhP
	 5f+TyIIjn/HeN8u4Wm4zbYvt1r5qRm/+2tjg6+4N6IupjeLDxX6PdcIV8q3+2kbtIh
	 RcMrfaDlwgs9RHkPZjXETVID+zEg17Ze5PSVrnu2yPNn8b0FaZ+Y1q+PciU9Nn6zr+
	 9uIUzdnQWaxRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A58C3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174668999358.3829.17834379505917421611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12960207451c4e8ba3f798b53ca6a3978a8a42eb57736c46a27b4d46b1720b1b
Date: Thu, 08 May 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746689993
