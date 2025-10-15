Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0F4231836
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760536194; cv=none; b=sUmHnhAxQxy1W3VnCVYvtZEA/Mc+y5U31QyOVqvMj7XBrgdexmRfztj9ZwjwF6FeEAOJKS8c7+V+bBnhHQbNUz403vj3BUe0vdwSIKxsHGqjoO0OYkORjuS2pAGx2TOIHHbwEJn2YpFu2eZMOcSKAppqEWRCgU2KRhK4YFF7S+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760536194; c=relaxed/simple;
	bh=dIFpSJMMzqDZuvsIchGEg7YWud6I4lh52dnq7A+UvtQ=;
	h=To:Subject:From:Message-Id:Date; b=ork7HhFF900kYW3MopTaJnB7gNnEGLMiCYQ95qvWHRAhC8MAw4fX9dQbKIJqnZ/9Gc5Jdxc9M304sWXlEDKmAdJ8LfQCpOww5vhCfwT9BKK0jKL2uxsPVxLdUvy9w8utHs9fE5ZimkKe5qDWHPfuxayO6A3/lQSRxStBZhGrQuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I9Z8c+jd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I9Z8c+jd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D8BC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760536193;
	bh=dIFpSJMMzqDZuvsIchGEg7YWud6I4lh52dnq7A+UvtQ=;
	h=To:Subject:From:Date:From;
	b=I9Z8c+jdB5y8wYkGojYYgzD/3qIcl5oLA8Yi+qXbyroh/TaBpRfaTuKYE0D3ImDUG
	 O4pMiiY2y8FP0l6IbhTQQ+lF04YYrkDVBimJsBpBHeOfwEJwin+bkcrWJihFhsR0DK
	 iPh8lhjG8gs+hOrv3QcjkApHNdX8Q6cGkZgOEySficMaCd0+eH7VUZjTtdLl+kuf0Z
	 NmsnAmjpSNziNN2Vg1Ase/90utGOxOdo57stvIP6Z+HsFHJ8s9Ub0ut8tUNUK6t3/d
	 DpXA/ZLJAapGAAQBYio6bc60Gq0k/mCrWt9cFsk56uNC66PP2vzyKAjW0uoLlTJGFE
	 dXUndEZEwq0oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925A7CCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176053619359.3002.15315836902458945991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2434349687bc963767b3e6f2a26b55c0e8f30f0c0763a2751fd891d7d94ecc4
Date: Wed, 15 Oct 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760536193
