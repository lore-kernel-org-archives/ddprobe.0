Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B35C1C84A0
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789785634; cv=none; b=MZ0SklhjR2fBi1xkYFhsFdRHZ9hBd/bgqpWk+V3OPjIDe25hs+bkoT1GaWd7n0ObOlsvhXItsThsy52DCeTn0vaJDqMjE6d24BfrxOysdXbf1CGD3udPM8f1vuGylpJB9K9XzWEjScYRPGbUGQWSLdSfwXUKPr/0VGYnfTjYbIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789785634; c=relaxed/simple;
	bh=qUVAZasFmlBN+7Ci77+O7hOk6VSCwMGYY7icc8bRsXU=;
	h=To:Subject:From:Message-Id:Date; b=izuCq1ZqzCL0WD15GnhEqrZEE13S2JrqBS5bjKnotiied4bj5F3BTQSDzLnt+G9WYITvmOtwM9jwftDmL9Xn8prd2pZhLtQFG7LEcwBnxN7DYrSzBC9QnEUj1EiW4TpwXEFNQVy8cF0qeJLP2AV38nuC+WSZyY6yl6as/M2Ga7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vm8ATcPO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vm8ATcPO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B89C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789785633;
	bh=qUVAZasFmlBN+7Ci77+O7hOk6VSCwMGYY7icc8bRsXU=;
	h=To:Subject:From:Date:From;
	b=Vm8ATcPOtVzWIaonqMX2tx46lUt/X1qFxPY+kyWP6rnWMM1UhHU1AZOcGXk208Z4W
	 E/fKLRPFX7+MkY5JJZERhbGqRaVTrwSR+60rNjiZyfvR8hAvodR5h+1+lIiliJ1oLH
	 m6HRcd8zg6vpO8jQ0i2Slq26I87pozWc97MwcIEBCuYnx3b6sXqZTXuKFmUxLddP+f
	 83QOPuQI/VnpysMQw4aBrGOXliFomlGsateWM7tlKupJ3CEptWb3+1J23Z7Wp2s4fJ
	 O9R1oWxxK0aFrl+decV9MDM83ceoiRlNB8V6kBRQP5biqB4am1VCtqPRcnhP0VSaMm
	 wY8CxRVueqlBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1D1C982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178978563369.24120.9233260280891580477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b527dbbafddbed5d7db463befc955468a7f3a8e104c3e05b3a7b84da383991e1
Date: Sat, 19 Sep 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789785633
