Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5761F1AAC9
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748662794; cv=none; b=ZdjVNok5DjB4IN5z9vuh1mpEYn3A63AJAjlSJ4rxIPh42vndVMygmkUa/cgpCx4fruVXvUwcGkHHwpnX1Rb8lBvy9FotsTzv46pFhCToydnQLvtktawmCniTgO0nX9yKIq9gi9o0GpH/ikRVCbgo6uoj2wqZarW+0P9D+W+G2yI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748662794; c=relaxed/simple;
	bh=LyL3QUVSq5771n1BeYNMro6rm/0jjotekJDT/zx1QqI=;
	h=To:Subject:From:Message-Id:Date; b=joQZ8JlVVoJkhoWQyf43zPmMbSaN4IXdE6YKxlxINeKcD0YxXQLKgv3HUAMm4C112HPMYgedOoJVRNFhNAJ+/bZPNBTpWyfSNHV9YVWk8UbL4jKYfKOkoWXnL2/lUt2pFofAdeH3E9mTJLV7Yb5KbjWPBeG2kmhty9BvXKakf5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DzEiwONr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DzEiwONr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7510C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748662793;
	bh=LyL3QUVSq5771n1BeYNMro6rm/0jjotekJDT/zx1QqI=;
	h=To:Subject:From:Date:From;
	b=DzEiwONro4R70VUjYxwyav23CVkvgmIV+gtR4xfVDZnBlfsyHsVVVeMwMhlXVKYHU
	 yEV9JhSbPfh9+Rp3qI6f50aB/AsRRaqB2VOvajGlpsLVeBO7OdW2FOWyn6uZ0LBnQu
	 Vh7qbCdxjYgmHduJCauUH4pcr7CvfVxHhLuITb32IAQ/L7ZwcLvBOXa6T6wX04X6lu
	 9EKW31gUJ0AnU7aS1yZ/93mNCgZQrJoMevWMr8bIMyQyAOcybBSwqCOLEORbO9ZS98
	 RHDtT06HVABhpkrMfKg0bpZhIAzhq84z+V6COvzLcD+k1n3AfTD2InppxMZOIjgNqO
	 VU4uZWURZnJ8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920EAC5AD49
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174866279357.13472.11388519770549393029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53570c718b37a4388d7c3aef23ecc71ba954e62080f4d5090a10726b29d727eb
Date: Sat, 31 May 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748662793
