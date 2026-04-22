Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0A333ED12B
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 18:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776884255; cv=none; b=mhOvL3lMWSwHpARYJYGa85T0CxYWk5KXJYVkPPEYlgFB+btAFchRGfa2pDb8i1F9SRvLM7FWKP5fZwMnFLNb0+teLARGvMfwgXPpd9QY9yb30SDKAYIPUdV/grfGlBy9qokkSkv/bm3enwHFV4x44/m2RQJB2hemUAQiGyozNNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776884255; c=relaxed/simple;
	bh=V+vQymb5eCt2drFrWkfGmwZqctpDdgEWTNkeetf9glE=;
	h=To:Subject:From:Message-Id:Date; b=H68ipIB+CPCTc3DfUQ/WrJYzta5I4ymBjpGLorMUSJUP52fIXaaZygLkgdaXjfL4AKDPMpVjPgQc7bvcV5SY5HCBJnRzdhqa93Ra58LabEld/Iw7BXHZfmWWQzGbdSqZ/iWbMNvvTeNV4oX00FE3cAJ9IcTL79cv402nW8rtnNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8GXMvpl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8GXMvpl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B83FAC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 18:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776884253;
	bh=V+vQymb5eCt2drFrWkfGmwZqctpDdgEWTNkeetf9glE=;
	h=To:Subject:From:Date:From;
	b=i8GXMvplKPNUNObnoo21z9cnvjalyrAgbW2v4zHlPUZvf7VQFYsghxLU2Gq/0/naW
	 WK5k1GrCZxMI4rdAnSIn3jTzn4emc22OlTYdBK1lZrRFTzyke3p8oWBR+Po59FoHol
	 vGxLlJorM9GwmVcMPDsdMxzLL7w6K9JzycItYiuVw5pxqF4ELQGmkW7DSi7h1xw0R4
	 XwZL5LSBaNju3Oyp/6wuYeLv3B4buBc5xd4jZEnRgwRmO6mtCRR4bEEAU4C0mgSiFh
	 1hn/oCK7XFWb2I7z441GihDrVxcVH6NARmiTHHX8YtSgBVuHpjY2l1yZy6r/OFeZ1n
	 /o+fQYrQe9xaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1A1FA1FE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 18:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177688425368.28427.9196387530711538839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28711f08cf2b8e8e19150978b809fe20a7dc265cfd812ab3586053dd1b305754
Date: Wed, 22 Apr 2026 18:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776884253
