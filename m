Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48448130A54
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745143195; cv=none; b=nv9rjpDQ6ei+YKD/TIbaQbod58jpBQfPhtJNCauLZ/uPcygJngmqbCdnipPQgpi/uOLnRIwuE1lb92Nqa6uURKQ5JQ6NSRD7GdegY9Chh+lFhyEOvGVt4DGnYwW3IcO1++8sype3vpzB/t3qGywOXBZh4OEAmJEUmKxF4MPjJYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745143195; c=relaxed/simple;
	bh=seOZi/yR4eGIBv2AZYHGcO4ZQ8PoDirq2c5jI/ATiS8=;
	h=To:Subject:From:Message-Id:Date; b=EJaLxobg1r/WIvkX8mgLeDvUFxS5ApQ9R2zN1qYOR6QxE/sXrsUf83USm+3PsTXVUxt8QzHv/mULh5ePMiBrbdkJGTYs9XhjyOuDZk/RIe/0fBSdOYTduXhxqyl1K+s6+/CwrMm/2XaWrcSP24TQARu3bAy+JfCnnoazFAowf7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b/VA1zcx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b/VA1zcx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85C2C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745143193;
	bh=seOZi/yR4eGIBv2AZYHGcO4ZQ8PoDirq2c5jI/ATiS8=;
	h=To:Subject:From:Date:From;
	b=b/VA1zcx+gYk4lZKNFyl48f1YOTFoob0woKq9vULArZjAotzeLFuE5a5ZvZoC8qNw
	 uKUukq8/LBpMs3Iwhs/RAKR27G0HwbtNOyWLbOmuuZbSl9ShL8VbopXM505sBCPRJj
	 lvtu0Zd+TY2xFXeSNOkVVAZBV6a22PwPxaC4b4iCBk8hLN2npVPdZty6d1byGd4YjX
	 fsl1PjlyFpyzWZPQvyELZ490p349llyH+5RqP28NqU44WvH59H87UEw1JkB/00gC8U
	 tvwUz3u2QgXLUQv8lzCVipSsWmoeCZG2gASdLNSE9le2Q4AC/IdIJVNZTYYpXLj+sj
	 vEy+DvezgXdrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A29C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174514319358.24873.17940625995695391165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af2e11a4f94caefd18ac1b7d220f51566516464a119ad7c5754acd3b648c0e21
Date: Sun, 20 Apr 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745143193
