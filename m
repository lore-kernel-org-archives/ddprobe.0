Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FCA713BAFA
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 13:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719234743; cv=none; b=H7jdtXNlCBP45h8oax667e+meMFWDY6rx7/bPBoL+OYYsiMLBarabPYs1GrbAgJ8qzM+VA7fajYThS/atDNauo7GFy10fK4oG9zCzGGcFmBsWF4C9Ii8i+KM5UsBuFQCWtsvnj7KGD6bkAA3Ps+RCxtp+2SLF52i5Tc9+FHWmC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719234743; c=relaxed/simple;
	bh=oPwB5sdZ07c+4KvqqCviUMS5iinWaUzu0dNl+8JDN6o=;
	h=To:Subject:From:Message-Id:Date; b=PRBV3MKhCSjXwUtK4Si6ShX+q9pWXkc5eq7GxGYiOvVQGMhOXkEFhjboD2lMaSsYM6zkfD2PEhgyc1F+dL/Tuitwo3GT1+P+GCIip64Y5SxqpqwONmFAUBntNO7fqUPWVu7VBO6N84K4Ue2rLrhttvXCW90Xh3dUHdHYq9OZ44U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q3+dKers; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q3+dKers"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF388C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 13:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719234742;
	bh=oPwB5sdZ07c+4KvqqCviUMS5iinWaUzu0dNl+8JDN6o=;
	h=To:Subject:From:Date:From;
	b=q3+dKersXQmx4l5PJmLQ3CTb6LQdnSHSa3YbE555aQBryuWsr3TXN0kV/EvHnUAO2
	 2HTB+OPgIFelRD9KpcFkGeF73K0r/uW9WlbljCsb64EU5NR12cIvS0VaK9AC9JL7iH
	 BDfnLaGb3JZFcS3VAHvdHJ7wqwui1GLnD5SGHH2sV1/StBIjZIO+ed2DSETu/oEIYx
	 R5nMSdKa3oS7REPjTKqttInHinUgqJlD4K8OKkgtPcBoA43mLC9Bo91vy4slQ7bAcN
	 me78QwIngJ4Q1XFAt0+/YQVP0uS2JbEnoJaqG6fL+l1c+EClxOOt3X/jKUgUZZDI7x
	 5KCY8cIfsi3iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD6EBC2D0D1
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 13:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171923474279.26961.11760215752447323688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43b35332e141759dcb8fb787f5eae7b47529812e59f659676531c3b52793ccce
Date: Mon, 24 Jun 2024 13:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719234742
