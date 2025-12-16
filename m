Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277E1347C6
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 02:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765850574; cv=none; b=nlvWnlu1d3A4LTQMCjRqTx/jcYggNzPKNv/bSNh5+gbC1O3I0c4MrtD6H7dcHyXSDzvCaGN5GcZS9c77GioMMAD5KrQN4SqM2NUC+jAVW+nzA4m4nI4ddlCy9CeCBmWIF/CUQPeMFdtKvHw8t1yLLa04ca9vcyDaa0AJfMb4QuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765850574; c=relaxed/simple;
	bh=q+joAvYIOjHDZDFvZIpCc55TQ1KfIMIycw2rMq3eLL8=;
	h=To:Subject:From:Message-Id:Date; b=Wztjdiz76wk2el/+oHf7BGj1F2A2a4LlFjYLgaiwpLmanzpEuKbOJFlsAFHVupDdYVEXefGvOrvOfNfVhFo535Ti6uOTimQJqIQVlr36t4j9bF4+4y4p+vS4VunBcCFrGRVdLrIoi0TssXfdmDQTL467v4reisdOYFW1YeJ9rQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZJXJCMF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZJXJCMF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A623FC4AF09
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 02:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765850573;
	bh=q+joAvYIOjHDZDFvZIpCc55TQ1KfIMIycw2rMq3eLL8=;
	h=To:Subject:From:Date:From;
	b=hZJXJCMF0TK5RYNJcRbVw6f+4C8MxjGLTL11xopfwSfpQAeVTYnyRA2UqGK/9kA3l
	 zM77M+ogvqXLxgUL4ZFpYB27pUn+bS0MzLqOri7Vi1L6xAN51bmjrGxV0M17hNAYWI
	 SQtwHXAso3kA1H5gAcIv+GiQjRPs5G/kTp3d0x+5yV3HQLzcJFw1hMnj5FBipbfdFD
	 QJJvwlQZ02mHlH8itxxMABU+fiddDlASpZW+Y9HRXECbWksvS3u/3cF4j8NLSw9L+u
	 SNFgIkSHA3xrMOpIW3Rsj8u0tFWQPjv20HWopQWFdafGyysbyDxjL+gvPZIfL3dYrf
	 VmvN6Ubb79JvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A7CD5B87D
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 02:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176585057359.26633.13879814013968192208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 885bba3300140c55bae69cb01f7bc23604f19f333a4186c449577ee4b33fda2a
Date: Tue, 16 Dec 2025 02:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765850573
