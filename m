Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22AF52046BA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 11:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765278174; cv=none; b=j+uIQlhURp8lQVnnUMkZx50tj8gBEb/LAzlLCCyE+Oj47QR/wM/aRzVQ1jV2PkB6h8PmzpAPbUcz955xKKxHKfvJYJS0O0BlP4ZkxkqRQZ9WOMYxLx+UwaCNDkHO5JWRyk6MksSbRZ2im+MGFB8V8IdwLF/dr051letQv9hsCVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765278174; c=relaxed/simple;
	bh=gGCjUQquteHGjiMPA+kMYnLu5l+NovZpMWZyOEXo/EQ=;
	h=To:Subject:From:Message-Id:Date; b=sswfMJHnUgh9/GH+db/5A991OQQ3v3pf+Gd/boQoGvdgnPE8htEn6TIH0R56Nu8A4TFtEiFgYyhUZ4x1/IfZc0E0IyT23dqQIXHdPcKUCA7VApNX3VeoI7NWvOyDGWHdX4E5kyFzGA0XvwKkl0rJQ+7YOpWF1Su6jn+DLZp5Qwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iO2mo09C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iO2mo09C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3683C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 11:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765278173;
	bh=gGCjUQquteHGjiMPA+kMYnLu5l+NovZpMWZyOEXo/EQ=;
	h=To:Subject:From:Date:From;
	b=iO2mo09CIXvbDxk2tCluVqhXAMjkZLuSc62VGbZlxKeyOo66knWkJNIE4s5PaRHBG
	 SekpFbIAHzSvwd1S3mABpvTsjoOCcnjC+jWD3fVCuzlTLkQPglqO2NNwLcfPNpw+vU
	 gPkum9b4BRHrMnwmU6WraYLIV98Z+sR6Qucm8bI4uA144vZLC30okFLpRVAtGQybzL
	 2PWpZy/QrxI3va9pOBhsqqDsilgQivGc1lTYNlRJ6W1saBKk8EWYXbQwcdwZ9M/iPz
	 hPXZfvkcOBg+DFgq0ccN9c57e/kq4k8iaUJyy8Hj++DEGYuQX33tWzqqi5o09Fg858
	 1AegZ1cuOuPXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90583D1CDC6
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 11:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176527817358.12304.1051314818040905322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05e9e1b3d0ba568527ca0fc9e55df87a3e616f95a35781068a9fecebfc3bb6b8
Date: Tue, 09 Dec 2025 11:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765278173
