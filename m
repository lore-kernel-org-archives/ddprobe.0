Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5116A40B11C
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789474234; cv=none; b=kbF1UnLm38NHzqVhq0yLc2FnfPM4/1X3sWHTQQDua6jplwcmpYe7SqmjN/+09tD3RBwywHJwQ0/hDZalh2ggLryciC8wWZY96oTiDlDMYVbWsBJJHthaABYhjHmxiImMrv5pCj3DOxjll2K4TxFkbFuqH/IN/NSQhDBP3+YWuuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789474234; c=relaxed/simple;
	bh=G3GeRFHxZIetunQZGXiD66pVt63AqCJnTbX2n6QYgq0=;
	h=To:Subject:From:Message-Id:Date; b=Hq3dUe8cth07AcyujPuUqIgF3J7z8UqES0ktiYitqiwkCdbu/AglgFlRwPE3+6uKfSqP3t5BHvRKSHdP8gh1WTFvzcd5fKGYrLeVoPppa0G/8JE2k4kGA4GLmPx5uFtcBnxft3RBvx8d+CX+1CBG4kOYDfKnx+j92reh/pir1UM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OLiBVemk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OLiBVemk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA22C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789474233;
	bh=G3GeRFHxZIetunQZGXiD66pVt63AqCJnTbX2n6QYgq0=;
	h=To:Subject:From:Date:From;
	b=OLiBVemkrhD80z10oE0GzON4909CWny5r+cw4Nxr9UO43X9DVlcgPq+qh9VrfA3Py
	 qL6UW6num/HOpciY9RHL0nkfa62yBJxvdZug28qWDAG0uFZzBkCe70WYXeDzY1xd+V
	 Xt/B5CWUlsztwQTplhVfwJYTwubsPFmKE8yQugKa/EAdNN5czDknGowEW8b5+sSwTl
	 fpRHLH5yFDEbaT5BeFBjRMrCveeap2ByIhI7jkKrieewI7dZuWC0c1jnGsQbdAvVfk
	 cvbTfl7hHEZu8Bx/289B9imkZFR8hBoIEApv/XJEkGX3SQ+J35jpvaFK75Di2Meo8i
	 c1Q+Kzh81Uh6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9350C88E53
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178947423368.21540.14667168681985381856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24b13b81f305201b98aaa02c2dbc14a2d36fd6be6c92704d67358029d411854d
Date: Tue, 15 Sep 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789474233
