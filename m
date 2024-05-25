Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E1B7E1
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 00:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716597803; cv=none; b=VYyCXaBFnxR5IKSYnl9bOFGHfbfhgB1O7XYw2fIzFbpNHj2e8jjC3AuAZHOUoawWjvlRcEubWrbRNAG9qUpJqqBDyYizrEk1Jzah9dXIpc0eYcJv6YiSMgOvCsck7qGlLYvdB8fteYxZx3Mr9PNHKsrqjezcZsRol0yk2u7hU+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716597803; c=relaxed/simple;
	bh=Mn8otHCCho1EYBrrYnngVrPDxD2RzvUd5elo4bD3s1E=;
	h=To:Subject:From:Message-Id:Date; b=qPZREdcFJkt2Q7Zr6IR3DisLd1ur4/0rnm+IRNWgbTT3s3CkAuxbDFEyZYNuOlBIy2jwGXFWXxtvp18ySeztPHLMKox9++eMUHOSmvG9vlOfNHw7Xwxm8FsxW/h/G2MWPIvUmqtxox2mX7aZUaf+bTc4QuqwAYMr6MczFjacmWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gLuLSL8T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gLuLSL8T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D709BC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 00:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716597802;
	bh=Mn8otHCCho1EYBrrYnngVrPDxD2RzvUd5elo4bD3s1E=;
	h=To:Subject:From:Date:From;
	b=gLuLSL8Ty8WP6yjH9aXdrCUvPu2OMkzZssGYMNT8oAbHr9w6/qrxr3yBAFBEV4UZV
	 Ckgul6+qrRWUTR+Ce8EzTE8l0YLzzWcb+YjlvtLVi682sByiwaPDoGibefi26qQjWR
	 x+eLWzzQXPOldiW3nE/qTKcQ+yqrAL/8ZCx3UQM0xZfqHYoS63lH7Lzz/F99JWGmVI
	 UM1xNG0hAz7SRWTXRr7HuQN45xYFms04eHs+crNMjVPxei+S/nBbgMrfeZDWaWyJNk
	 w86I1Z5pK0NimiwmvyK+sBmHlr7ZqPkjxih6akjoFz36PZ8HiUI0hbnpRphM1VCY1z
	 txrWmsf1BJ+0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0BE1C25B74
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 00:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171659780278.9252.17363937270855379285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f19ff9719b19fd9a9815312d87e92a28c0bb32923c78c104e7a68253208b6fb0
Date: Sat, 25 May 2024 00:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716597802
