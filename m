Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448661A7054
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723587954; cv=none; b=ZWcLXMF7XduTBjoLvvqNFZBezPXldaHXGlTGjKu8kfi4V/VDFJgwXYf6ZnNmMNwtuYjlPk+0wRVHrZDbGGSqNptWXrIraYUf3GSXNCOviyt/zYKVkLRI7P+Q7re3grV0y5tIMTNxNam8nETnuWKqYIYCkYcUvhNQ2rf5WPr24UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723587954; c=relaxed/simple;
	bh=yzun4l2Y0+/P3ZIneP48orILvNdtMhEj8IvUQGnv4LE=;
	h=To:Subject:From:Message-Id:Date; b=PBQa1ksBpzQoBzfqIcby/zFcFC5/jmA0gyYQReIJBpSDi/CKxO9SK1m4MNP2JV0rCXzTfkO+GRcEdurd8Un4cJMdXirIndbz7l/141PvmdAKFmgxHlPQhjl+uErsDydV99fqBohYbg/fxsAg8MPDtyd/zT0yNcaDM3kNM2aIX0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JUSub31b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUSub31b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89B7C32782
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723587953;
	bh=yzun4l2Y0+/P3ZIneP48orILvNdtMhEj8IvUQGnv4LE=;
	h=To:Subject:From:Date:From;
	b=JUSub31btvDHELgEHmTCYMPSGaHZEZgEMD+g3a+HIde5yJUAkDtdLUq0R8TMeyGjT
	 C1Lj3iWnnFrgYT2QQXjy4QPrQ9rzKqgH9ZKxz2lDlSgpN19nOtaPRixrIVuDrEOORB
	 2SpZ9QXnOdYEpzZwcf6WweqZZbLDSfFc28wB0GPoJ8sMDNY1t0MQouvbtbchLr0obr
	 VEVDCEWIbCSJvjzL5eY/WGCX5zgg7YEBrGzIcgPH485PsQgpJdWQgALUfDNTLmTABw
	 XF61LdhNBOm5hLVc1a+TkWS994P67vCvLTwKegh/OSWG0n59YNkrYYuxW+MgrMY7qp
	 0DdLnbKfIXPsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9410FC52D7B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172358795359.17878.3221909253696734406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22c09ff7624112e1b9d172ff8ad69da056747b13b4a9b42e0e2420146f7da393
Date: Tue, 13 Aug 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723587953
