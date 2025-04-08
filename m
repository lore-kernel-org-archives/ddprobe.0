Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FCCF1D63C4
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744138195; cv=none; b=rEmFg8CpZWzWlxLt3amkXl+1jtVzyypuB1BXAwCIYVXDC2TNOL3k4WKV/qBE1PeR3yevBxFDZ0bnsMpBaaLjgbW9My1+gUVdn6rS+1WDtz5Jb72NlBEKMrEnyqOEsysgWKqftGWphTy2IUIAmVMvBAAsaFtvN/SV4btEUY70WOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744138195; c=relaxed/simple;
	bh=tdFuToE/R2IgWvRINKCDJjdCYlJv1jVHsQUIsinL3cU=;
	h=To:Subject:From:Message-Id:Date; b=B1GtOBrP2PPBZxhNaZjPFAHe9shv0fiwFijGZQCAsFS3c6/YM+Qo4F1NCnN7baexk8/VdxYUI1kjDv/3XYYg64CthafTN+YxypJypcfyLXt9WM72tTiwUzaCPqo/5vFJa4mVItxm1K61JvcZ/2AyvUEXentb9vFM9YykN4vYIM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g9PAk3Yj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g9PAk3Yj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B58E7C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744138193;
	bh=tdFuToE/R2IgWvRINKCDJjdCYlJv1jVHsQUIsinL3cU=;
	h=To:Subject:From:Date:From;
	b=g9PAk3Yj8C+a+jfxRjhPsfZ+wbotSVSsl7IJAh9aRGuhOahnaixfJNzCIhUqHLSeL
	 NvJnYZ3Y7CgbfQW3rhU79Qk5KtjBONo/ihNnO0Gd/dG4/B5m5SQXmGx7TIS+G/LAKz
	 E55GN5fpVJOCiPiDtrOAxk63aXd6tyrRPkXgMzaM7DKBX2diWHZOZn1ef2sU9NRYg/
	 cUmM2hBy8XKwHa/UhojQivhDlbLzk46YJxywHjK2swkHISzSukhpXffDifPXqls34P
	 ncDH8D+5IiSrxK8aVUMtWCdOKFQSXkw5opa+tEJAymf4gcbhcQ0xvzQWGTpqoc65lo
	 9D4/GMdL9GU6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4BA4C369A7
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174413819366.429.15598448069273588118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b82e9360b3439e3f6076dc5cd331d885f6d8339c0255123b64ce882c0342fb9
Date: Tue, 08 Apr 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744138193
