Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D68376E7
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 08:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713169763; cv=none; b=DLc+RkQzQG5+jHbFn4X0smbVEaOiOazCk6yAlgkhJAH1l4C6vNAQoLBAnHZiC2F9KrBDuNqa3SE807jczU0Vn9pKdS76EIK8a5RQUMjE/newSNvS+XGQKPfxZks7WfrkQ7++uxM9qmysr3+BqyLXVapoNcyeQJYvtn7JJZko7Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713169763; c=relaxed/simple;
	bh=+A7pYaddRaJlqYNbhdvctjZCA8LjlZ1QU97M4XACLkg=;
	h=To:Subject:From:Message-Id:Date; b=EoL+43erwEhqh1LqDPT/Qv8WdCX1xmX33eES0RbEhcC6mCMuBHIGvCt/XQ9/H0vLhXrH3qdb87OmlCaySU6D0Vha6RDSwJAGOsWsOUhLeNnBQWC8axmmvZp9OIgPEOnbfLXf9ZSmzjRCSBONE9kJFmJvMtmaTOG8D+qbor3I+ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zdm+/K0O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zdm+/K0O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE6FBC113CC
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 08:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713169763;
	bh=+A7pYaddRaJlqYNbhdvctjZCA8LjlZ1QU97M4XACLkg=;
	h=To:Subject:From:Date:From;
	b=Zdm+/K0OtT06CC7M6E6OxTqlMILKlFEojyAuLRPboSHYV/MKQxArTXqFQH3OfELjl
	 nBxshxkfuZkohtZ4ZJQnr0VM5qr3ovMbHButyG3Z6L58716zSHDQ2casqhbK+lhhN4
	 6pBdQDNKtIegd+y1rvSYW+7valohciXS3HdrChMO+DfhoJUiNn5Dmup9q7lXSjMxHl
	 IZgCI0GUZF8SEHe/zhf0gImtme3Woczcur1a3YLkWQ/cPDgKQpe9h8SiQqTwBJlCcK
	 xzgVZxSgXq75RoljxfqmcJxQbF0S3SsLQol2Ui1m0H9Z9m0DQ3I+txKf/NnPuWx1R8
	 GdDLHpTmEfHtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEECEC4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 08:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171316976283.31297.2673678388413837134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: debb657fb12bc9e7235eb2107c8f2ab9435ae2a7ded69ec2824f36bf0df4fd4f
Date: Mon, 15 Apr 2024 08:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713169762
