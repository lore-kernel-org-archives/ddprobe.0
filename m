Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C6313790B
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753558794; cv=none; b=QWjqpTz5CO2eQfI57dm4DkNYNqo5FwI3yJU2lpzk+m0ADV1sj0gJ3LnL+TbCCj73DuTbBKLhEOvz4jZEoJkUglyyRt67PVKoX964El+EEeB6Ta84FabVSnvdziFdWFeJcuwL8oup0Ae74G/uqDfumGk/NwjJvadUk7XqLgzEPfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753558794; c=relaxed/simple;
	bh=eTN3fFv8S4VV6kAhffXkoUgdP6Peo/KUhCW3PfA8s4I=;
	h=To:Subject:From:Message-Id:Date; b=XzRuQj3DzCCgo+bYZ/f0uNh8Dvw7+RUJ8OGzjo5Se8ZftCwwaZWXEW+nkQPtarL0qoohe8O0YO+QSc5S6a069JqPOXwyhXYApwD8iKAw0BhW8Gecr7iQRjGHxT0vx8DJwCkmFqNIiIfXJij2UwKcLZXFn82SETGlfyNyJMn5f+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k3KxLWle; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k3KxLWle"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D74C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753558793;
	bh=eTN3fFv8S4VV6kAhffXkoUgdP6Peo/KUhCW3PfA8s4I=;
	h=To:Subject:From:Date:From;
	b=k3KxLWleC26xeu1sQngUb0NsehAK4J7G/rtqKvSxnnYEdXYtH05fIXQaPlk0rJiZV
	 SywmW091Ezn8b+RchuGwAQsjsVXrOARJ8fxpf4EYWwhj7z4Gx4oSJ9VT2XQSMwax90
	 n/AEjugJiz/c6SJHz466uZCtijLKLqhI4gDMme5D2blgpyErxeSmDHY98M5/oB8W2A
	 m9bUfUODo93dR0/U8A8hdTC6EJiVjkyQ+dOjcHOZwDV0E/ZTAuLH18i+c+Is1HnJtx
	 xLpFZ4vF7kpcZcr557IuCEJW5GeXdTRAdV7XmtjO17Pyvj6Q27qAi2uGwntdTYR53h
	 k6ljhWpyB2aQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95268C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175355879357.24795.6356377242330771134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 061bf43f9f0bece69ac4cb0d3fa4ef685140feba75853d4f61466e642df16caa
Date: Sat, 26 Jul 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753558793
