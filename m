Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357782594BD
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752605994; cv=none; b=IjvcJhNl1hmel6SiWwlU63h43secqof0xZR8pVUipJpmgG5I/X+IqGIBsrjsvPW6+zHypXDOnsutIGP+mOWLCJWM+ynMQJZxUvYCa01xbKHk9VDHrHE4CyKrukEaSrVIBxmJKjt+C/C2RCj5jrtOSZOvzg485FDr3JB4LY7UhfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752605994; c=relaxed/simple;
	bh=6SALYbSjF5EyQIMN5KzFussGgOP8kQ8j+9s6BhVVR48=;
	h=To:Subject:From:Message-Id:Date; b=I+ImDYwD3GRS3IGmms8oaXz4WXbQLwXkQtISydQtRIuJYKFRfEvmVLYDmlwNXsqU+S3UxESyhkOXB3O9Vvj5rFemJMcZC4SgzO4f3OW1ug4xr5DeCfUL+D+EeoLvCp6ou9H0pHZCAzfusgUdWj+RVXAkB898ATXI77g7Ss6mfQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZw8PtCa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZw8PtCa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67A0C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752605993;
	bh=6SALYbSjF5EyQIMN5KzFussGgOP8kQ8j+9s6BhVVR48=;
	h=To:Subject:From:Date:From;
	b=CZw8PtCae3gc3rEr1imkRAwLEl4HnEhU+mA7isAG/+WeZdguvwtdTnt1/+3XNEUnK
	 1JOn2tXR1jd2NFXVj1Z+OmRwSUdXwwIDM91NgpN6DyphbIMEESDVdvOQZ1u34kfYR1
	 XfkLysjL6wA333lKLYSkzHbtW899NADlzFkHrx/u3TG8jWBfFA7ooJL4dAay5T9+Ym
	 iGDd6Ea2nkr1VjaO0f0XZGxPPU9/+p1gsTcLhbxdYsRxblGw+LC59LKT9Zyoy1D2De
	 3xkXspSHd1GIPi6LTNCbKulxc+mU03rC26I4CIoFF+STA8Ng4cVK/92eqzKzhQwTK5
	 E+nJu7B6ulVuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C26C83F22
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175260599359.8470.16329961606932124929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 427def23c77db6c36da7f21fd7a071fec6fa8bb12516ee4cf7536d52bdcf6daf
Date: Tue, 15 Jul 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752605993
