Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5667D43F0A1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 11:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784375914; cv=none; b=GNT/KDrCry5hNCsP2LH62h3lJiNx2fqJyv7PpDMe3Nf9zu/2dtaUJ2RXIkIOtUUa0rchdqWn5psldULmRiKLsvu5m6XeW/9ejFs6Iz0v6SudPvhiWY198zwM2L73oAsB/DeKtN4aRMkSOsKtTxzgFIK0EBuZjNMj1qeOcchkW7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784375914; c=relaxed/simple;
	bh=9UQW2jJDlpZCHdZumJaytrq1nOPjEYO9kNmS36nROQQ=;
	h=To:Subject:From:Message-Id:Date; b=QZVERuz7mSAw9YqigMNg2MjSOvTyavkNf/ikMtc4RqaU04XvmuFEidXe1nBD/zL8Taf5ZNVOIVcL85f8nWtqMyHq3YPT7Zsglvj8RZ7wFuojDhHG4kwzo0iQ2RUcxCookMdXZzoBYo+PeP+I/QV6WKaQcVrzjcVC3F/azsjna0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZkBz9hsQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZkBz9hsQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED32C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 11:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784375913;
	bh=9UQW2jJDlpZCHdZumJaytrq1nOPjEYO9kNmS36nROQQ=;
	h=To:Subject:From:Date:From;
	b=ZkBz9hsQsTUi5ujQp+ItMEe0xwOY4qDd5jE92Q2NSR8gJWXsBieYTBgDwtGX1uDY1
	 /A4qt1B+4xZW/EF+LfKzLLdrimkQXXVlMPW68UpXu0GGluxXJ8lsYZuQlbLcBxfsNU
	 CNzZ8odnPGAhOi8r7YNIYIyeo9Fb9NIjyzx2TKs7K498UnCQIL6q+sVgUA9nJgDQVa
	 gALwWPwsNUuUUNGziJ1PPwyMZjIbQTIKP7dK+lgUNP1t7rmcgE2QyBRvvnGr9DndLn
	 katNPRdt0atsTdoWdt05BjOVbqqjTgde1XtljfY4pxRbqivwW2QOPA7+oS16yeNZCt
	 ihw1qBRbf/3Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6A2C4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 11:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178437591368.25710.15058021883020007053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f0ae7b25aceab73b5aa694b559d7d416b2f6ced5668bb4fcba277feb4258a86
Date: Sat, 18 Jul 2026 11:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784375913
