Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2633F288B1
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 01:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780797274; cv=none; b=or0Ul1EHtay1XQqaZtqafLbPCivYQqjlZW6YHHNQBGLkg2tKQFqVpt+oIXDzVI6j/D1Jg7nfDWV+VM55AAKULzrgU0jCXfM1vomnQFwUrlwVhzHWeMe8mlxPac4rIZufqWbJxFJPg8C0xVd1RU/+eX5D1yfEXzSMS00KsJEtHck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780797274; c=relaxed/simple;
	bh=4/yJHTgjrsuPdUM3jm11/8cJan5iS4v8jP0pii+YjMQ=;
	h=To:Subject:From:Message-Id:Date; b=ALHMPV/tr3AhHtmap3IpEo37G6IiNmMYHNJ7ca5oCcaCtAJEYP5ajxrmIKVDMcX9SIxTZMtfCD+cqSbiTNcDuECcTCimhVTeFA2/gUX1DKpID6kIjVEXOdFKwG1Nq4thmK5fjZOBYQgcROYZ4Z6/l7BYbIYej+hr1IOBTcJxRpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ywhsamn/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ywhsamn/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C93ABC2BCB0
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 01:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780797273;
	bh=4/yJHTgjrsuPdUM3jm11/8cJan5iS4v8jP0pii+YjMQ=;
	h=To:Subject:From:Date:From;
	b=Ywhsamn/GaLvqgwFZy9lMbzaeH77Kmn6ysXmGUIYctnIEH/3gDYVEQ5VYmTYA5ZkW
	 uyzZ90cgrK//g3CdGOH18FmoSqCvkHHDHhHD3boUf8pqhWjCVaG6ZiaUqUMrq1TnBu
	 eo2l6aIgh5wKgzH6ITZ+iabwnPNbG1nQjigNjJd/V1GN3VHytyFESaoclEh5eozs/F
	 7Ngp+k36BM8xnjcpZv63QVudkakhu68A0WX/bUFWp1b7Ki3T+XEFgOeRxWlFmKAoIW
	 v1nP8qo0vm8yUTtqL0wZHhwYiZUAtRekgkTk7x5zGibBTi6Isd67SFaXfErYmNiVNg
	 E7Bh7D0+INpYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA33ACD8C85
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 01:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178079727368.15473.6872657837661127082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19f2d75ba151df45c38303f85d0ca68a7f428a14d763d25e68dbc0bcabd7ab46
Date: Sun, 07 Jun 2026 01:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780797273
