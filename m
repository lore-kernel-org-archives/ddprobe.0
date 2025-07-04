Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 667292DE713
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751600995; cv=none; b=EZzxd9yZkcBZE7AN1ZQgW3o9xsdSlX7bBFzRNoqdNyCC5IY87cOBix7Zt6pv3RfaIz7rIaCX26iJTbjOBkabzDHe/R8rajNpJTa9+fPSFKkqrf9JPK4RzQJ96Ig25MshGZGwdr5+n7xCQTOyIO0/+4HjeGOr2iRAGj+nkEoY7GE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751600995; c=relaxed/simple;
	bh=DL6XV4WxQ5PseBU9z7oW14G6vHHY1Ns1jWAyn5Sg8Ec=;
	h=To:Subject:From:Message-Id:Date; b=GMIrbbC8+biX40Wh6dn+p+gcRSYw3cPpWNQbduYtz55gx5vBzfZMNXHzpZJhrUG1M/DjdGQ9LnKuPm45U/Iz1QDCKYXge5KMgJibhQWF/NeTxgT6VpyhDCntMjvWGnV6eiS3kvfO3P2Qzt9ywQWNiezcEkYiES48gWzjUQFBrKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=da9jhoW0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="da9jhoW0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A48C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751600993;
	bh=DL6XV4WxQ5PseBU9z7oW14G6vHHY1Ns1jWAyn5Sg8Ec=;
	h=To:Subject:From:Date:From;
	b=da9jhoW0nLWG6aXYcIBoxdmAmKq8J3YBh4XoHzinNWrbNK1oz32q9qPBHT1AOSe8V
	 2TvOlHW8mBYl0sxUfOh5WHXipMMm6B5eT8gCHns395PT2rZZDzQbCdhxUQLHuNFGAy
	 ur0JjNrzhI8eDkeKFCOAlCChd8ZAttCgCrdHwLj1+PnSPDxaMwHKOnHIgQNYrTVCjt
	 VBQwCQq7HOktoHZuC9PjawWPq6Evq7MjNY0waEWUBrXmBJkornTmRmgAELAhHP4veG
	 aNArrBP0Z15UrQ6n/sGiltgkn+chVz4wFfLIJHgC9c8ve3z1DWpzXZKJzTFZNfTOFb
	 3q55KEz50UJVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9F7C8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175160099357.19411.11034558650241226781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9175485c4bd4dd0814fb0c55d943f9813e8afc5ed7d48360b12ac6277bf719a8
Date: Fri, 04 Jul 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751600993
