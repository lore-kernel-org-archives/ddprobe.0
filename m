Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B25C151D509
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789756834; cv=none; b=PW/0+/v0i5+rMiYO6MR3QE8iKPJ6qSGY9unCtMSowpuwTS7CRsEh0zhX3Yb9aPH2vbODPWoDVud9nnZAgF/3un+DCvMWXY3xWWU2KEgvTQ95jshZUt40BVWwFSew2eeFCXx8Is8xOB0IfBcy8x9Kw0ikKNEe0kXl+eyW2qKIHto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789756834; c=relaxed/simple;
	bh=Q4zDiPFjn/S1XIw+r83kQ+mqBtZ9RgP6uTxFNKPyYWw=;
	h=To:Subject:From:Message-Id:Date; b=mePDN2utPKOljRbwrh5tHvFOnlhkjqcc9P2FN+Go3Ie/uNMgL9xNKvP3+lfl+HyabkUG83gYwC27+1N1bRft5e1Ul1omPPziegAVmlloJ7IM5nO4ki31Pn3Ic/wmxKjgk97vTIIGjAcGzmS36PgIKq8cJjuMRzOHVrrqsJtCn0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EYW/rhw+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EYW/rhw+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0591C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789756833;
	bh=Q4zDiPFjn/S1XIw+r83kQ+mqBtZ9RgP6uTxFNKPyYWw=;
	h=To:Subject:From:Date:From;
	b=EYW/rhw+QhPTHqWQsfiTQa9sJp9wFn+CKlFd88jSxAOPsqaJfo3EAF2XBOBpYGNox
	 9X3BuwYrMj8BIg+tm8UmPej8FljYrn6bG/pxXtNfyAXRVLLID3RTdgsJo7I3KSMcRl
	 PUE1hWAA5J47DZh2E1sWmXCuKNdbJVpdu9xIJBST9Fzj+4ZKZyg/Zl/+XOhT4Buf7g
	 QW3vsRXFY2QCPZcJhqq3P7QNIkdL9dSHYvp/5n8D1CMfHb527PrNTT4tOSmnqO0wlS
	 dpZ2xwfiFKuM+nmPw9inyfBoIJMQPGlorvjw7st8lc15WF+CtX240vsLadUYAcOlaX
	 CUg0pI+qMcG8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC552C982D8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178975683369.13735.5395651819472072950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88d6792b49643fb57caf490ba604694cbef8414fe48990a1d57cb80d7a2723ca
Date: Fri, 18 Sep 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789756833
