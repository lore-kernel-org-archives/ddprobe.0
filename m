Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330952417F2
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 18:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741805934; cv=none; b=FcAh5AYEJN+05KcKRdETn1szOaceVcssVdXq0scPGBXrSJ7Dwq5t6rUjMzZS6abHM7XWilHW7+GIbeA+Is+O0JfoUdt18lBqJyQXcuKa5l2yEi43+uUJzHEqo6svx29A4PTK5bZbo8FnNW+x0YbG0W/42Lg7hsgoTwS/lE2WkWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741805934; c=relaxed/simple;
	bh=XNo7ahZN5OSVPMLwLOqE9VCVvDeSjakgn5kRTriOwKI=;
	h=To:Subject:From:Message-Id:Date; b=RZAjHuWh5CpbzMbJj32JhYgE6EyP4LpJ1py1/Mu7/wF9zqcvuwirklHTgb9iaUeKmfcxuoSAWjqr5VGZCEIfx+qSoZXhz9qjCg8INd+E3t3xWYF6p4yBsvyG/tWGtKxc6mDJpVGJU8ps73CwL1aGbifbNKTQOz6wNoMwPLqZWfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tp7+ADFh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tp7+ADFh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5504C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 18:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741805933;
	bh=XNo7ahZN5OSVPMLwLOqE9VCVvDeSjakgn5kRTriOwKI=;
	h=To:Subject:From:Date:From;
	b=tp7+ADFhHxKXM80KxEea2Q9tMyAVm9+6zLPDu0XR/6QQLTgZTN+8Xv8a1kyAFOEZu
	 8WbqfBxQ6ZRMCA6KY39Ej8LxPE3neak5w0Ag8Macugu+tFF1qP7xcoIWToPHszqoSl
	 /IrsSyczEoSlKJD2aFG81u7dlF2XlndIbQeHQ/tFLKv/PScSU063H9l2hrFzp8avqK
	 GpDe6Y+jbrD2qKp+Sx7wNkRnB9vQatzA5/w+VTy91FqNs+jr1W0H4CjWDdKpp8i/dp
	 eQA6iuiXmcoa5NVQRjJzxcTNVCt6WKhU0uG3HvBYN71loBUvBWNyABlOGdflvUSNC2
	 FwoghOzkXZWlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1FDEC28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 18:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174180593364.10732.15406650152069337404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbc20e9f2e979fa325589c21b58ed533bfcff5c74d2494751da191942b66b254
Date: Wed, 12 Mar 2025 18:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741805933
