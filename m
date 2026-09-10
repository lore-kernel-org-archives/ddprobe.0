Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4634A091C
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789050034; cv=none; b=ZpHLTet47EaK0ToX5zGGb9dy5zTpE45kBOwrEyiSXSHXlVOhhXC5+/Hlrzs+f1cMKE6rfyxkt1Ruf64IoD9V1k8lT5xIwSJActrTf4ewmtxseO0sBGGctr7elZC44VLasbDW5tXKNesNNsbSqrf9YUEXKHw52GL5ezRNmgH/w/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789050034; c=relaxed/simple;
	bh=+cGfFl5/ObXjjUqoK+HdkEfuOkl0xllsxBKVbioA3Kg=;
	h=To:Subject:From:Message-Id:Date; b=Vakcjic7rI9L6qbPG7KkJc/OpqQkQgnAHBu6bW4tl2Hr7JCNG6Ea3ZgxyOg3lQj3+6ib9QbMZ8eqsEz2GevUXw5JKep4oeFLH0Dc4cKGgVa2JaX9G6e4qvg+p9/R2JaznMBeQ8bwf/kVOrICLSl8nQfz+w6gJAfPFYUwaID4E24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XqwxcN9u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XqwxcN9u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB41C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789050033;
	bh=+cGfFl5/ObXjjUqoK+HdkEfuOkl0xllsxBKVbioA3Kg=;
	h=To:Subject:From:Date:From;
	b=XqwxcN9uD7xXT34dI+yO0apDOy4gaCeKzgdhfeENdw7NROC23yORrRIwFlzvFpUTy
	 AlqFx14V1D8DBmLR+vgYLXMSgPVn9Hlt6mWqgnVVrLCCo1W9vWnxLttCn9WbEWHRAr
	 7cBZVGuSACU1n7xuV7dN5vSHiqVmivCyhKKSBIJxWw0qBcGRYhpT64I/eOelSKitgy
	 ofPAn+YzipHPP323Va83zALGJkIACOMs1OQNCCXW8zVUEIL76Cw2Bx29eqFUOgLvjn
	 3JIg0Aszlm18N+85VPWnMLk1gaIcrhD0kkdNQWOfAuJ6d3E2LCkQfF6YXi2dyXElQD
	 xRC89u0ItAp7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD87C88E40
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178905003369.21998.14656523039212658658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1e7a074adc6c34d71875f62a979f0a0e09239b7a6d013b778e914ab22fbc778
Date: Thu, 10 Sep 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789050033
