Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5947039ADD
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 20:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718913623; cv=none; b=Urs6cZYNMNV5U4Ivf0FHk4k0CsRvRZP7zREUulKhqN8/F2VlXMaiEwh8mq4ECtEu2nTdQgK2FbmTtr2ut2KV1msA7skW3X9o9dcmHXUVZTnpHAvgGR7Wd0octGXazLsM/8HfmErzNwRuli99xJpdum+xkfk0AGdi+RLl/cdwkl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718913623; c=relaxed/simple;
	bh=QhXNSRCJAzaU9aqbxOq2BorrchrKyDcLhWWAk5U3nLc=;
	h=To:Subject:From:Message-Id:Date; b=nh0Fvbvp6IGmvVeDCY6fSPjlnPrT7qTn4oMtUp8YjRRK1qhORJY2R5fU34EbLLD3010hYmhIcgyKvjCYzewaOW2OwpAGMVQZFIgoQkJDHXeeKM5Zkvl2nkF9qXx2Uq62/tmGwSdzkOfYYb9G1ZGgzC670OdsF1TgIcxtEP8FElI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sk15Ae8c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sk15Ae8c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBAD5C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 20:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718913622;
	bh=QhXNSRCJAzaU9aqbxOq2BorrchrKyDcLhWWAk5U3nLc=;
	h=To:Subject:From:Date:From;
	b=Sk15Ae8crhCRdoQzfElR5Z8+DgHts9qRInY/SLEI8XEdHXRaR8hBRlTgG5/4r8KMN
	 Rfi/5DgPs78A8wGFGjJznMKDK2BqIo0snJ8rVrFy5M2l7nSDzmWChKW2YF64lZ90/7
	 pEBYgaF4Z5zFPLMkwJva9MTHJwIj6sLcPYMuxRSRbwoiRkgOzTVrNbflZXCE8suMzq
	 z9oq6dwn+fDSUqnQz2v3outNzHmJPNbHJpvCNnGkvlD6LDYTzvcVYqzn2sDQCbJJBv
	 iYqQ1IiJUnEn58XTgAFcau7OguirXu4nVcn8EEQE+OCWv0OpS2zsY1ik/TSGwL2ugx
	 xdY+U0fk6H4TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5DE2C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 20:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171891362279.24614.3337700401670392549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8117e0af84bc0f11524f392a34d3972769d30217641d3902515bf3f6f04b8a6
Date: Thu, 20 Jun 2024 20:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718913622
