Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6673413D2A2
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 15:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718033843; cv=none; b=aJq5pGVr6QfQF7i5jJI9v/DhmVVNftcJManhDTjzIXRst1945OVb8MU0XHej7jGZToURR7lwYiUz7qmSkQ6XctCE2yr4HWrJecDpvFjcokpOluJsYOc4Vt/S4H/ChHQ1goX7vNS4MJII3O3m5QtJPO+/cUZvKcs1jj136/c2Sq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718033843; c=relaxed/simple;
	bh=0QRefBRZGp+cu3raWLJ2igXeIZ4ugGLl5QYVeBOJKKY=;
	h=To:Subject:From:Message-Id:Date; b=ZMkrXUviAqBdicUjBCBLiskgkHVoOw4Wm4pU4A/KUVL9OZg5nN3Akowu+xeiNrIz3FbEDMO6V19vypQ/daRPBrjRlpim+JgFga1p7ZQC60a/l/d/xaNWGJXDHeZzJUWtZr5qMxwWkeS7GT63PLiVb9D/LuZbh0cfscv+rErUPjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vAXQsPpV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vAXQsPpV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D465DC32786
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 15:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718033842;
	bh=0QRefBRZGp+cu3raWLJ2igXeIZ4ugGLl5QYVeBOJKKY=;
	h=To:Subject:From:Date:From;
	b=vAXQsPpVkqW8ePDlPsutqR4aWIvRvJoUWstAgZ+4qFsBsfejMV3fc7MbgH2DTydUy
	 lQVjqsTbDcSpvPLf7PH3kGEtG4UrkRKsnWvUq/92IbhvyH7LJkoCG4x6+TEW26wC+B
	 P0SdWh6cn+UDneYfDyPYOkxaMdElsSSTtFmCbc4xtr3U5p1zFLbSJBZdXNI8o0XxZl
	 /DDH3JbaXs9JDe0emp1IzlmWh2mB1eXvrK5cPpB8fIGfw7K4EHDa1F6NhRlt+cXKJ+
	 sc1f9QV4FZ9XjYL3F9aA8Qf4QvatD02WX4//Mp073l9rR/YkJEondTgnhokYijZ56+
	 uXEQQWcm4/bRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCADDC27C5F
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 15:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171803384276.1073.3624991078919721860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58e59f372c7f28fcc8a4ccb688d2ce89fb35e2ba30f2e80675fd778956c73aad
Date: Mon, 10 Jun 2024 15:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718033842
