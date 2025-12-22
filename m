Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3677526E710
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766412234; cv=none; b=FU+0+5wnKqCZhpNL2+wJ96FrpWOhnishqiLmDxzn0/agad3+Zb0AEH7yobBvnLLn0RBMf8DR75aX526wKRka/Sniji3//oeQ0Oe0hNUaw3ax3yb0ueLliijnMu112JSJq5euUB4D3RKOlfBA+LGrZ5aBdBUDwZOLN+nquTMKLeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766412234; c=relaxed/simple;
	bh=o0jWK689XaEsmls5SXPeunLieuBJNmQGVRAug92/Edk=;
	h=To:Subject:From:Message-Id:Date; b=L6+D62BWhk4XCBlpIfcwrXH8AMjKA3XJIW8sPZ9pbUZonPsSai4BruXHb92dWf/5AXScVRr7Y0UE9qYk0apcoAUgv9yGnJKhim6hTnkSSu1f5OrDCl7K04GaJISGudKCyxcxA450QoLb7KK2pw5DF9O3qpk5eDhoKLIKFKJJQYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wr/pdCx0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wr/pdCx0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9ECC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766412233;
	bh=o0jWK689XaEsmls5SXPeunLieuBJNmQGVRAug92/Edk=;
	h=To:Subject:From:Date:From;
	b=Wr/pdCx00H+DFT2eypeq8msGO3vfwuO2oOju6YyjauSMNGOeG0Hke/E1qjVdX4m1q
	 oZKArcwYQrTDA+3N9YEYc2eVVOCUW4UpNzfGTNWlAJBsEkUZzU6S1NdXZUQ5brZ/su
	 +u8uSIgAXbg0+nbR7OQ0OB2CgMeaW17j9acj08Dt+ELZaEQZVagjNZdIRaB1/18Yi/
	 +pG+xbrid83wBmt2HCVzsHP20WjjhwWounOX4xYzujvEb+rlb8p53+AgJOi7hUDjuX
	 pa5C0JYeVDsLc5Oi1ZwaGK+grK2Sdhmz9MwzEehT7yRDgipBVt0PWyP72+pVpOw1yc
	 k/xuwPfDMhEMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA9DE674B2
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176641223357.12772.1862509298403038196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d26acf4dbf8e79eabd818d750955cf3ee89ca6463e612bd172d373f2ce158d9
Date: Mon, 22 Dec 2025 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766412233
