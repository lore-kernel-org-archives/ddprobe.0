Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB0C02747B
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746899993; cv=none; b=KU9GZ7/a3DOmmRs5AyKM7eB6vue5Ty4wB2Ju5t/en5CJAbQnHXNW+7wFCIHTQiYFZjLPe00ryWAw0sucrsaVCq8NSUymIgrsjwngOhL/l1Qw8ULI/SZNg0qeeWijKp6e0gS46CUcxTeGyK+7FAlhKmzzrXDFdsp2RbIjay+wqP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746899993; c=relaxed/simple;
	bh=5WyZfubFLZR7NkRpldlH4VIwyVdDkOo2eWbKOKgDWFY=;
	h=To:Subject:From:Message-Id:Date; b=FECcyDRhALRXmCEIC4ULz8ZnYURjlJsu7VeKDqX0RGrjZgLjB5YG1NRxsBRBsqVHDdasHTsDacGFyt6UbvCwwY/ijFPjo4dcAaBNQCTbBUjnHgpjH1HZn9/OvftzBsSOBXyC72zkU5ccc0UwBSj3W56NRDnRoDvZAEESdtTUkRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qdGWo6l3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qdGWo6l3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9BDC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746899993;
	bh=5WyZfubFLZR7NkRpldlH4VIwyVdDkOo2eWbKOKgDWFY=;
	h=To:Subject:From:Date:From;
	b=qdGWo6l3uaLk5Gf8aWA9tJ8MYnPpHBDhD/zpDu/FYW6O9vYfslrjLOX1ZjsJii+7W
	 9XuvMXt0IchSWimx29LDwpERslJbPiknZGxYSFLl3XcEYtoP2vooZhKao5vyrxahFW
	 4J+xV9mqwmZ6sEu/OrfejZIXD4SQF9kiRGjnL7LHn/enlNFCnEnLuXI9mPr4fHOOfa
	 env+1Z/EGnkDWQ41lN509lxnJhtAWtUsVg+IrIkfN4j4m4nXXAcc6d12u9XiQG+hsW
	 vy81GceK4HGFVfZzstym9nXmpmjk+oqu+fWEEeUqE7j7A1h2dDCBF13ICCOdaOJRmq
	 LkSwHZqzLJonQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908ACC3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174689999358.31394.5613217795428118280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c7de86f3c9b53dd760d1a52e7d8e5efdef93f692087a6067034751c21b5d51f
Date: Sat, 10 May 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746899993
