Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AEFA1527B4
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 10:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740651534; cv=none; b=YIySDlilZZ9OjEIYy7E0e67pY3chksiZPp1sDum69WlHXEehol2iAlT8wSKw+iNiLqPgFvlQqyISWj4N9FbnkOkB8Xuvjy9v+qkM3t2G2Abhg5iVFnqFnkb6GlIfeUMnOyImfhln8gaa9XLxR57ieF1L7yM48adV1TjliAbg1Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740651534; c=relaxed/simple;
	bh=QtqITVfmotpkWx7OzauEwqqk4coJ1oLwPV1Li7LSu80=;
	h=To:Subject:From:Message-Id:Date; b=cGgafs8MVdziHn6bNn0pr5xhsllvW1yxLihHfr9eD7mzZMsOpxL7tER149gGO4ullGMx8X0TA+UGtxYxyY9Cjytk4jU1dQVgybO5NWDaggk4mPquICafCyy5Zgi7LxEzCLFqftRvuHSmk8dnbiP7Jowttt7b3B9R/y0+cvqYVno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D2zeEbc/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D2zeEbc/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE16AC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 10:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740651533;
	bh=QtqITVfmotpkWx7OzauEwqqk4coJ1oLwPV1Li7LSu80=;
	h=To:Subject:From:Date:From;
	b=D2zeEbc/EZndvyJzZObRM3Xfhm09pVGLzpUP6vvsP+Ljb4309n1HL/A9B0nfVWxOJ
	 Lxz0kx2G7w/NHYZJqMd9FjTl8ei0kUjTtaYWDLokQq+6b5wxzwoNvf+/c5fJcE6T72
	 S10U+t1ed2swD8nvDsrBIqcnnnwkXXcuRfq6FCiONc2EmbI0vAGn9Nd6cxHdwGXxAO
	 TZt62/mUekzB3vSJCkJJU2Pcq3/kqyoP+XFqRT9F6mDs6hOr3n7VX1Sf/CByJnD5Fb
	 UeGVCUDIyq+Bf7p6OQ1KeNl+3Hdcq4vxgBHTMDxt9TED5tiFCMdovtg9mESk4zpLnb
	 p3SgUINCcYxyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2BB7C021BE
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 10:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174065153370.5799.4305407023482648509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da7b1afc5da4009f2eb309d6afa87e033d8c7e36c68331212c0f66b84a43fe44
Date: Thu, 27 Feb 2025 10:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740651533
