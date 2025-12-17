Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F613A3F1F
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765982034; cv=none; b=iOMIyAdyhooNwN0HIqKLpZf4E+fg2Kb2Y0+dZQo49tLQre/jGm6UofkaqpNIf3HfQmuwsLXapSMpA2X58nk33zkXaa9g23QZkJkaR8QW9b6rKDP92X5k45yhI1QaamB5udDcC3Q0oKO+MwC3y/vn/+AlBHM4qyFe8NAvxqYMolE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765982034; c=relaxed/simple;
	bh=+wygYNH+ue8YiB2BBbITE63NiA0cWsmkS4jdWr7oWVI=;
	h=To:Subject:From:Message-Id:Date; b=eYBAiMVhgbJcA4yOhwWUIhw22ZOFdvzXA+8t7K1mi/ejddZjBo/XU1NQZwf3SaygWxovZviOzms/6QRMB+F8w+maggrpzkuBtKGmjjF6K5r4p+y1R6qP1HYursC0jqPFyfhlduP7MOYZKR1nJ6JHV9b6IXsc+9yM7mahVNp0qEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5FPPtsP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5FPPtsP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF000C113D0
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765982033;
	bh=+wygYNH+ue8YiB2BBbITE63NiA0cWsmkS4jdWr7oWVI=;
	h=To:Subject:From:Date:From;
	b=h5FPPtsP/toYRRLieOKKQ5PSvJPzyE3b4/sn/jQbl1VlVbVBrCePqiyjxr22y1xl0
	 cF/udj+9DwmO5qviIcsL5rGC7nN7SzHrFxBiTH6krxGg7tP1rnRlRIGmhUyTixHGk0
	 FFI4KRF3ieZCojKfbmnrZi7BNvqgVfUsWMGkjgeM9tZxEUpBJpnh2QmpsVQ/rc6Z8D
	 UvjbzDe4sgrvkEbQeaQn8wCrNAVFLj3oPfDuurMRzOirBdPhLrCvFjYl/AjMHfD8f4
	 rvGGCG3aVhkwbVuZmXLwlUjsZ54ISFmKMnPziQVSU0dvUv7DsPnVb07LRp7+edkJvX
	 TVweJK0+jflXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E57ED6554E
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176598203363.11853.13448337883178813723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3090ae04c157b93b53cc86e4b21bcd29eafb4471a4991030bc1a0de335f820c5
Date: Wed, 17 Dec 2025 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765982033
