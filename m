Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A0B22F75B
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757044794; cv=none; b=c+TVIimaSNdnyNfMMiNF4z6ZGnY7767QRFNta8J+JWWnV4QdeH6rQyUo4BquOoZEpcLVhOly9ALNQjtRorwfix8/IRncF9jfW6MqKSnHwVT8v6DC6AZYB+F6oBZYBaOfzb8MWo8rfvWtLWoPJfgbd41BZXxc20M5XNkbh3OVQoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757044794; c=relaxed/simple;
	bh=saDT/u4Hilw6R/nxyohxvlF06S0ssLEdlqE+3Xg/VvI=;
	h=To:Subject:From:Message-Id:Date; b=sGobwkUPHsIfk9gwMN3+jSKgnF5WAao2fY+NDPu39IMfDlFcwGhUP3qgDgKXuLpXNu0rP7x3UXcEviIFDuTIj24X/vUbfgdDXtpNJsvJyKlTDdDE3bkRUrvEtDsKubrXDdEK274eOVpjvB3b99dv+8XgfBY7EJhnsWqG3gYEYbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bjR+2JZv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bjR+2JZv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A237BC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757044793;
	bh=saDT/u4Hilw6R/nxyohxvlF06S0ssLEdlqE+3Xg/VvI=;
	h=To:Subject:From:Date:From;
	b=bjR+2JZvqnEEJiBFOUr5ufYmaJ6bmMRSUW2ht5BT9yzd1nMOLAMwrFmerOO11IdhZ
	 M/R536jBziiGE8su0jgmk8tHpXTx0ixlOx7sSVPWvifhveEbLtqntPufTEFdBm6OS8
	 4N/eefP4yKDfSLTUZccZrX4UsfSc3kFm1SIHSV64AK8alYLzLUEbHI5amuPqo9DRfu
	 Wi5hOFcHg+Ty2Lb1bl6f3mD0jpUp++W7oJTP+zry8+ufv/poW94srBuSLLeA+1W7y1
	 qR/66trqvSr7ngkmmGLeZ0etsYRXeDxlZl3mcTkzS3wvRoVqyLgPiGfFTntatk5tIA
	 cmBujHCX5+mrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E90FCA1010
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175704479357.2753.2198705515281530485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b701d0e8828b7f2875c5691e9f9a2a2a169d8ff91a760e5d17c46e369766c39
Date: Fri, 05 Sep 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757044793
