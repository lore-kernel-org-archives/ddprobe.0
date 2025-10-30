Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E88261B75
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761787194; cv=none; b=UVM3GggEJcam3XYRGR0QJru1FFN9yTNQQXoDlW3VAIB8aku28d5oOUXVheR7JlWzEhqEW4u0LR7Wbc5TfnzSEnWC78+eT75U9u9k3sL39eJpJe7VyBiNwustCvjPNOcVQQqnLd6A3JBVt4rrT+gIuKqu9RJE/pQP/iTDnTKbUW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761787194; c=relaxed/simple;
	bh=nZXQt0l49KYsPVutsCWk2I95ul0CK8rrJAXgiraps9A=;
	h=To:Subject:From:Message-Id:Date; b=szGRq0qB5OXjdKrDGIv3NxU3tWuO0SxLTYD9BTvfXRS76jpiF00F2mmgrKagAckodoN3zNpZ+HIFM13dc7Ll8G4Ovl/v9+2OSXBX8FZxW3QIiZBMOlHmJgEt0hRY0DhmVHjEw3ZlJlqhAbaUsJRP09BjKzAQdb5Uof95gH9y4XY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZFLBx4P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZFLBx4P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A477EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761787193;
	bh=nZXQt0l49KYsPVutsCWk2I95ul0CK8rrJAXgiraps9A=;
	h=To:Subject:From:Date:From;
	b=iZFLBx4P3Y5PEHV05kJD1z9uPkFdE9xuKrE5CyRiRNLDuyFwNVL1YuI6QTX30arvV
	 htzSYKc5nzWf1KwChwnkTteYq5gV2BHE4Pz6DXL46LJrP+a8rR67QlDXWPu6KBrlyv
	 P8iVaRJok6VtxPz59VnparXHJT04UDEVo8CCtvrXc7PCYLVOr7v+QM9RCE9mXWfg7W
	 PZ60wkjqxCPSjIR2PE0JbiwYaKx36NNfJZlwrCspyd+XCM4WwvB9mHp9rrC0vmT82o
	 ilNJRvoneF3u+m9zm3ivzfIplAFbjL3x2q/EfjV9DV0/OS8XNK4QpcLUBejbUO/8eL
	 0Z9OCfrRzE/Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93175CCF9EE
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176178719358.14486.15651050997667256061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d1da20a838d8bc525c40dfed819e047ac7d6066bf19f62f44a0ef54400eb8e4
Date: Thu, 30 Oct 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761787193
