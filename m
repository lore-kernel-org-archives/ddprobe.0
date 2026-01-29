Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E4D93EBF1C
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769661834; cv=none; b=iNC8skFK8FTgPUT/xaXivf+feSf+eJY4gG99vc1R2cW5h/INT8CvFB3yx4TnKtOAezYWBxAdSuYDJpjWprtPiAtsvww0wxH69zHbbecoifalkQPG6QBxEMx/i4C+J3GWQytH4FYgMrcNIQkZkbFyghgx2ez1YWuYG8vCXxcJAqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769661834; c=relaxed/simple;
	bh=XPMclZ7bQHvXt4BkbTMMc8F/k8geBZjdDAw6kBo4XW8=;
	h=To:Subject:From:Message-Id:Date; b=G7FFUMngsIkS89fA64NC+400MXNEAS0h69XJaPsnQSC6QlFHUH0BMsfrLxR+qn/rsO4pW4Ge6A+scm2os9Pn0vq9p5s2gnUB2vK2jUpNnzGLIK376pdx2rOkCDeMAxwEoExIPaUdEY7N8cw1TM3OT3oWT+vVSJ18rEsPI8ZaTMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZqVqYhOT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZqVqYhOT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AD4C116D0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769661833;
	bh=XPMclZ7bQHvXt4BkbTMMc8F/k8geBZjdDAw6kBo4XW8=;
	h=To:Subject:From:Date:From;
	b=ZqVqYhOT5a2ap2tJ/k99R7WezcgSi3lKv3xnrxTYI17BCQz6ESEO20tQO+MP7iEUA
	 JV7CXGMKkN67X/cPDLw7Xx9wdycY83X4X7D93JRC+QNtWgLKl2FzcHOYc3xK5Qp/V5
	 NQgtsbeaA5ZjbldO7SZRIEjgF6lIuOeqFc3U5IvtkkETE2PuajP+Ge65PoYQmUCcDS
	 PSd/9fY5gzMDomN5OE10EGHGTm1ZiPC2OrjKleaM7uUqfKBROQEvTxvwfvCAXmL7mg
	 8SXrL8bQFUxXq3gHEyii5U4STeOiXB50EGufk4g6JyMe3Ql5I74TeKVn81WWJ0+EaE
	 gdJ1+GTF45XRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92006D3569F
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176966183359.11308.16279961611115203030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 929fb0f2ac1dbc899eaff59789b4b748ea27b097eb0f62e21ba9a810b924e46a
Date: Thu, 29 Jan 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769661833
