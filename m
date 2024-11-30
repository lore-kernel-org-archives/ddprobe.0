Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA7316DEAA
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732965954; cv=none; b=o8cYhRZzl9HfuUiKtd5GPeuyD4HCeP43ZS3r1ymGP26DaNoxaQ8ZuJJxHf/ayxs09AGcNQKKtsqfbD6c04KTSGI54Rcx9SeBuv/zgVIsx6evDMoZOIfRX9zgR7OrgMYcPITRnLdKMe3n8dMkRhme/QjVUpjxMZASTGm1dKTj3UM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732965954; c=relaxed/simple;
	bh=2nCam32MFGWHyJR9XDIhimTbaeM6LnidQ74vUGDJCj8=;
	h=To:Subject:From:Message-Id:Date; b=TCblqM/K8kT+qlGMCPWRt0H780Cg7e9R4Mo1YSsbrf18Y+dgsnApWgiepB8ZW1CgeNa0kBrsrfHe8whLXNJMJLR4EPfVKC9fI75hpIax4yf9fVjlVaOF9zFzf+dRRBBC/CuF71nwkXPo9YS0T5LUwdIsyN4wyrMMV/8Bw25C6Pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJL30kJT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJL30kJT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4493C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732965953;
	bh=2nCam32MFGWHyJR9XDIhimTbaeM6LnidQ74vUGDJCj8=;
	h=To:Subject:From:Date:From;
	b=GJL30kJTiZznw+vbSvztoGj/qFyZtTyb4nJERpKU0ZinXluLXQkyxq9M0RxEAT7zu
	 U1et2+/KsC1SgisJfGzHoo5ufMQELCXiydYMS6qvUO8SlFHDs8s95QQlTV6jK5ckHx
	 Ktk/aWP3zi2EN3Z711DIhxVRo/+FCPuL4ucUfhJTSpPqw7/xvQDaqVnJ9ypwkwZCpt
	 C58nT+Kkn40nHmaQDwM4UAQnSlK3tCM02U8zmjk6zOzmP2WhP71euIdkEQoV92oMaz
	 r6L0AKgTI2x1VhNqNtOOb6d1oFIV+RvVNO7C0ObZ7hmkH+hncQVJCaL9pn0dV+EnUL
	 kcb0TPtNhRVXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924AAD735FF
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173296595359.16401.8466123576585060811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca3d6e5233a47bf90620d5ef589c39fab80261d3b358efd772d7a5ecf75fcbda
Date: Sat, 30 Nov 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732965953
