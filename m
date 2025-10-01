Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EB46BFCE
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759282194; cv=none; b=Mkh6LU76zwyCu362bSiAN/wEug5IQzCBbJaE7DEkXJuA4wj38x3qrwPmuBJUYcILeaNBJ2jIKuGIXo6IeXCyErHGJn9uq9nSDbL3s4dxnj/L/x2TTENT+Z/mJ/2cTZz588bCJFQs/EUpG07HCRvOxNd+6g46ro1lqwT6uehY4uE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759282194; c=relaxed/simple;
	bh=GVfDA1MWP0j4ElYUjn+KiZlNhtJq/wqY/4CnAU8vAiI=;
	h=To:Subject:From:Message-Id:Date; b=JJhB2GFVOMWUqSdha9Fm8uKX+l66P6R5Fkul8lCKOPeObCvVbwXDvEQILvky+617EZpwfQ1PlwwAs3HsQPWaDKzqht3iBzG/C9fzRO1Zdq6xRzWu7l1EvlHlxLsd55mJjbj6Zfquf2Eoay0DuPg8qr8rbSHhqlqQikcu29xfBn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S7orrgED; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S7orrgED"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE4FBC113D0
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759282193;
	bh=GVfDA1MWP0j4ElYUjn+KiZlNhtJq/wqY/4CnAU8vAiI=;
	h=To:Subject:From:Date:From;
	b=S7orrgEDYDsKAGAjkQxLbkFIzmfqtXkoir4qYsEpkUfBqQXraSvAyfn2POEj40zB/
	 23uDR6Gq08trmwsRMeHU4IjKwI4W5kztEYtI64DS9bOI1PGCHZz9+ZF9ZNdnCRlslK
	 9206LuVn9xYsjjKj3FVR8URz4GnZNL/TjnEXSH4vmMUevYzVsmi1CRNCp72j4YxXlA
	 xlawqlr6c8s+Ty7Vwj7tOM9IbTjihcrVdTemzhxykTCtquG1iCHEADqnrKYB/+bpSc
	 V3dzrCzDEtJ/yl8UqaLf6om9T/oHDHyl2917bNCiUsZqMai7JOVAjU5xQuryqC/gCt
	 7sc/XPGl5Nx5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B2DCAC5B8
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175928219358.18323.7062490809849158120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fa07d9ffe1be9ab907ffcac93f5a0c3044f3b953ec1ad4a4de48ff73ca483eb
Date: Wed, 01 Oct 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759282193
