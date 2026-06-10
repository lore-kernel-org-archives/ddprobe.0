Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3FE4A32
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 07:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781078134; cv=none; b=MzhnOewRIq/KeiEp+UbTvUkcBvNajJ0rWaVaKEv6Q+haw0Ypyie0f7Q4kDCD86w0fytWz2FHBAZRvbtRY0hXTuodT8VuLQMuvWpsYfB7uNvAapu1Q+vEB6niQ8qxlURNFBkCTtnoXDJkxR3+ebTRt6NN6ggzqfeNEkCtAJ8rZIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781078134; c=relaxed/simple;
	bh=bfi9CnFNyh4DeUAG8Aq/3GBEOmaQh0gGIXuF0eK+qhE=;
	h=To:Subject:From:Message-Id:Date; b=a3L/cM3JTugEWfxwxcsR9ks7aXCKh4UZetOiN4t5G+3Jj85DXU1CNMURHDRjPOGTRPlr6WX/t+6TeDZ3KR34kqDRWXJi1F3S+5gq7Jnj6/VUibM/2fEwbGhctSNjN6S22oFsLhK0Vh8P9Ij2BR0KdHu7zA3QhaMXlBKQ5v/oiRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8T8Q6E7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8T8Q6E7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D42F2C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 07:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781078133;
	bh=bfi9CnFNyh4DeUAG8Aq/3GBEOmaQh0gGIXuF0eK+qhE=;
	h=To:Subject:From:Date:From;
	b=G8T8Q6E7XMUE9JjvIuThd+g+L6w70rbazrR30nPdjL4u00cD4LZ1huiNr/oHz8zWu
	 lpSzjhX3qDn0BBPLi+0RGXdrtWlxc9YhymF7WFej/7hXs7uWTf7/kzx7fopcnZq4uq
	 zCHo+rvU2MSMf+573mpfjCxF+cYyB8ydwevMI3Utl7xyrSABzkmfHqrQ1PQYa9WPF8
	 BVUQROYnTNDGFdHXLiDSvMOUPRywSELjvqNrNF1IbN6yTMIhD8K0jgOmTlU4r6H5aj
	 C72AYvRaxjdYJ0HYWAYNnNwK5Iz6Gvxlq4k491Xp/Et5LgmecSWGvWk6a6gTgC8PAs
	 0YjFC4lNEqpwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5CCECD98C8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 07:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178107813373.717.11654253650386471010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 222eaf64aa6f2de1aa3579221ca51205605014477cb6f767b037c93875f4e8a9
Date: Wed, 10 Jun 2026 07:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781078133
