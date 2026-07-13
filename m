Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E1C355F5C
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 20:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783975714; cv=none; b=i8MXPdCwmAyfrUsRj1iuuYJt68/9semtDnvsfcLlGEU2Alp4UnDk/jvwgUxQkCZrjYAWUmkEm9dAE2GO3k2K4dy93Yi83WfMyWuFLZoGbttGSsWSPTkj0jNMPXrYcce2DT5rK/CvlbVF3bRMJZP0rvetqLxq7LTiv/BrbA39YFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783975714; c=relaxed/simple;
	bh=uzMuuM4rKSNuhRt0OXhZPpyNshEl6nVbKqMuoE4qW+c=;
	h=To:Subject:From:Message-Id:Date; b=Wr/ZBC6lwj2OebI5BXjrrazzK9WhtEoTq7bY/gOdOK3Bk1ayt4vJVmsyXh0TG9Dg6exal3OIKnzExUv912pzJ8tkDR3mRJtwjpZ7f7/DuOXn3ayHRyACtdvYp9E69YC6yp7d2o++4riU8/CQUU+Ga76PfIYaIuPgm6fuX1kzhuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nAdq6fB6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nAdq6fB6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF826C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 20:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783975713;
	bh=uzMuuM4rKSNuhRt0OXhZPpyNshEl6nVbKqMuoE4qW+c=;
	h=To:Subject:From:Date:From;
	b=nAdq6fB6Km1d2m81Ud7+ome+X51t1MrX/BY5WVZjsIL3LVh4TkS9vtk+NfmKkMDzg
	 gJA9qBQN6xUXZhFYNKTyN85nTsvcFJiC/8V8wi9QenvfshBMUNjrVha1x8ibc5HMUy
	 MWkGG7Bq16WkGtGkKKk0x9va95bLXjeE2PF6pDs5AT9+0QeI8jiyGkmOXZj7f0SgL4
	 inmniRY/AQIPfR2CSX4dv4fOAD3i5pSrm7nww672RJxBunLq5qmrn6W5jNbe8KS0Y0
	 lwgsprJff8LH5bAD3hgKYQtJ6RHLBGBkxOZ7vNVAByTsGB4AomVtKfq+YhISb6MZ3q
	 p2bk0O28psVIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB779C44501
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 20:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178397571369.14722.9277841308911112649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a169507aacd31c0e5b260ef9525b95fc03b7a0ee64712bbf9c645f6965072bf2
Date: Mon, 13 Jul 2026 20:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783975713
