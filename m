Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4978BC133
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755304794; cv=none; b=lnMxet08XB23S9ER1Xxqvlwl+vKZoHJBmlgBLm0YOtnNY3LEUwZU5v81+knZzO7Gz/VRbs3oVUXOQHdsLWbLlQ+zRVRd58TSX1Tm40mDh0iMb8NBxgArZOdUx7JXXkg3Hms/JK9hNBHkB2wjkiA2YsdwzSxLFOHelA2zu1yLzSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755304794; c=relaxed/simple;
	bh=YXXIO84YyavopB3H7/FRFosdMSvLE09LnLkI5svVA7M=;
	h=To:Subject:From:Message-Id:Date; b=p1Be6BgjuJF0Zf4uruV8HUVXe8Nz+mGFIrl4eYkHB/1Qfs53ixl5GlcwKtw5pOra73sMnzao93Emb/yR+8XFWi+dc8LPTLXOGIcfCUgyC+eG9YRDwEyKm3oWud4MM8RPoXASqCYwWD6DYILjqkQrVV2B7g0ouI3fMncz/paQcY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXeT6iBS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXeT6iBS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC2DC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755304793;
	bh=YXXIO84YyavopB3H7/FRFosdMSvLE09LnLkI5svVA7M=;
	h=To:Subject:From:Date:From;
	b=pXeT6iBSl7Z8gVfg4G/KxFC0xNJut9qnZ7cBeMeLhr9nW0GzjER7jJ/28BBeffwZ7
	 ipbU3BZpCo124mWZw1Lh1KH+TD3SapXbe9uSw4eZka0540Ll91fu8wTfbU9Z8FI9yd
	 uohZHZD79zjdoeSJfs2oUkOo+CsNksg3lm3EZZLohangXDXRwzMkeQU/kaK8BTM0Fm
	 RTIx5Klv+/xQOYyiLRUvTxjgNLCwyE5rJ6tQlzrJd3nXMLx7K9LEQmRe/z1kDnSoft
	 /rXtQ1JcdHPlHi6YNiqixI0Gh8WTCajx2zuhpv2BhVBTvwFxmeMB+h7ttbqcRGFwUk
	 B+InUejU5W+gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E417CA0ED1
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175530479357.22851.13971669777851461498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97aef54de3d173b14d52dd2fdcca141b3a38f878d67b94f0ce99ac02e9fc9a48
Date: Sat, 16 Aug 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755304793
