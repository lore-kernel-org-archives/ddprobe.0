Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259F42EC082
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758841194; cv=none; b=FsAYcRSojBSwCE9DBD1l0+WlSTm/R6afUf/b/CBGzcmzYcH9DjDUtHsApKBjNf33GqUz7YWZF9vO2Q+UOdu1ImLJc/y92KKMxPl4jwK+b0J+EyAh72aL11vZqXWxLUzVA2ZD+P8lEPZ2OENVAN7qxv0ceRBfIHbrsuk15BZq0KY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758841194; c=relaxed/simple;
	bh=USq+CMAEtTPwJ+fUooLw1RAW//9iSwLj0Yg9iMjVz2Y=;
	h=To:Subject:From:Message-Id:Date; b=YDCwc5IJ6haKMRfWV70kunKCevnsWg3KI28PUnXJnlXeA6sBiq3Ad+q4A4AH44Z5gZyMHYywX2EhUhsYqYiStCQCqflbz1KARN2qTn0TMK/7rRAh6vAHykLrJPpOQS3Fdt5IyyPxcCFd6BMlNIR9ifN6SiyWumn+3sqGWnVLYU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/qXcNhB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/qXcNhB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D41C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758841193;
	bh=USq+CMAEtTPwJ+fUooLw1RAW//9iSwLj0Yg9iMjVz2Y=;
	h=To:Subject:From:Date:From;
	b=c/qXcNhB9SN7pd/+zlKrOYV6CFyf8hRFrMYdB3y4IMnPQ3Ajq0oNI2PEz0jYiAiuQ
	 2l1rMr+tHgELTqFM/yxqlq+1eEixbPTdMBBcdN0guq8A3gtj+jlYgNeeZiKIFJB1Xj
	 EUm9bA4wyZjTA904gS8pjRaGPJ38nfPOZkz/54vyU+QuNYev143WwFDT0sL0fjM10l
	 94SKCDq65jEidHE62seIit2uihdIUR1IbkstSoW9sj2qt5oBXcZ7oedlIo4U69itAs
	 Hr+bKi/Ey7bTMH51IztSsrLHNOvuWpwf3Qm7ADOnWf0zEPEfO+IEbOL1IAHICoEur6
	 2/TZRUwoj9EoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C56CAC5B5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175884119358.2134.13985937534513411393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3ada1a79683bdac6255c98a8baf432522dcb4c43fa50214ef87f242b12586ce
Date: Thu, 25 Sep 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758841193
