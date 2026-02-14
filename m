Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D72901E5201
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771041293; cv=none; b=A1JC+dvH5UWVKkuQyivYf9v8a9CYf3+GXuslx8oH3H8iARBcJWQh2KqVtoosTvwkY1ZChaDIVufztCMKOhqqX5c09lHSfkyPbDVF5l6jqSJi0q+g2qgt/40l1HogHYCEXBfyxJHxBn4pLtUE6BqnrUMerLwhNaG625JxzJlmCz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771041293; c=relaxed/simple;
	bh=2IuNbMDJYc50l0bgQdtQRVzeqWcLZOXuqfKCML7+/ZM=;
	h=To:Subject:From:Message-Id:Date; b=dWq2rT5ZJ5FYySb6XOFlfyMlw0rfwoveTz/uJIhXZ+v/+xtrimd/R6Pezv5isEbMwdQt+U0e/BaqeUsVJSuO5cHsw0v/mcsqMTFfqjvoVIyRpiLgIkr2HxdS9W0461J682NM/FGRfKR9ZgzHDQ2khTB+tCR2H6KvybgOPF6FE5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dNnZL6hC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dNnZL6hC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A33C19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771041293;
	bh=2IuNbMDJYc50l0bgQdtQRVzeqWcLZOXuqfKCML7+/ZM=;
	h=To:Subject:From:Date:From;
	b=dNnZL6hC310D9ZZmwe61+OOmfAlf245v51JS4nTOJ2vxU779Klalqfw+Z5L5OMh4x
	 qOLCWVqGo5ZMZfmt/mJGHjs8Q28mZ4rbcJPq475f3y+y4856f+9VyOEnuSDsaMplMq
	 fTHyos7CIkaiLyYdaFs5GXm3D6b4gUUnzbfE+1iiXiHQFXKTxrXuPWvV9TPyyeE0GK
	 Way8PoQuPdCqQOE+Gvf+nWdwIc3F7tibvuYUaMu2BNZP/hojvkqJBbpoKCfQuX55q2
	 4+u73GMWMXG7VX+u4sgUnQFxDCTV7HxdzZj6qy4bkMAUQH6aTROcDSqXJ6zk4zJlOM
	 VmibD4NGitu6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E853EF99F6
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177104129359.8305.9851715022654403595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17b4f4b81afe9e1633a05dcd3702d13aa9f6d238175055e1ae6c6a3d4e564b2c
Date: Sat, 14 Feb 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771041293
