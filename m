Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C06D2AE6A
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752692395; cv=none; b=iUJYgWDkFGkdk1cUrU+rg+CSaYedWFG6+NvyCuOXItDRmPoBSQFral7NH0njLe0tXvR5rfX8N2UeeGGCN2g5P0lWJHWzXlx4pSelaPud+UzGd0hqhIznnVgoshAdayBkSm+VSp20sp7gHF3YutzBtGDdXD7FLZYDqR1yifF5ieY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752692395; c=relaxed/simple;
	bh=fjeVjWMJ97vMatmoRR1vhtlNp9Vmw4I+fDV7LXJXbl0=;
	h=To:Subject:From:Message-Id:Date; b=IRUhlWyQawoHGuPmrqWWZr9GJ1sFkcQRDbK3T6q383/qXWJ59K8ga6RPVYxIHxRVPE9fgipCQ2dDbmZRFwJ+kCCZvNycnksYgmBO8MSQyn9g63J/Y0a+rNmmWDh5kirGMvlTC4Q/1XyHIlefQhIWKBvZgqCqIpj3XLc6FA2HsyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gKDCfeT1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gKDCfeT1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C4D1C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752692393;
	bh=fjeVjWMJ97vMatmoRR1vhtlNp9Vmw4I+fDV7LXJXbl0=;
	h=To:Subject:From:Date:From;
	b=gKDCfeT1w2T3GWyZTXg1/3VA4DOZIp/tOVHLrdFDMoYwHDgel1LYUKKYIE8RtG/Mw
	 tTlcOeV3Oqoi6a8n8KjXWKX68T6kCmRqBFRujbQXKFCAb+ayp0cRbUZmc4Mn/ACemQ
	 qzYoNNfv7SC24aG+eZOzIKLLKGT4iyumxv1RQVq8vzrxqqkw6j/pg+bgz+B8uNxfKV
	 6o3mqQmuKZFu1TuR+6t84uTDVcDyp3zDZ6Q0hbKjvCU0053+E2w4gqezLWPqRUmogV
	 P0FsHOSOnHhuc00vn9AQS+TiJbVSeAuFKFkHz3Npq78Y4P19xESIbGVhK8TxM61Ak+
	 WohVqlkh3VC3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F370C83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175269239357.18187.4679500033955121813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e1c0ab418f07bde358186b4412eee28e5107c5d1a61a6ebd3045074c86e8e65
Date: Wed, 16 Jul 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752692393
