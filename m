Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 614E93126DE
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 12:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763469714; cv=none; b=Ckgx79+bb8eR+y76qxZaqm9rAiZhCd9S1ljGxx1f+zlIqajKF8wVReH8MYTp7q3I5kvbUOs5ZpWX6ZxA7uq+yBtE6lw0ykppUhA3oaNAVPwgePzrpfP3smUFcb3dLelH/QZ9H24OS34rKKNiwhyfANr7t3TehJwrrfI1gkTSeOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763469714; c=relaxed/simple;
	bh=Y/GrJRniWUfJ53LRUtrgsxt6egZSLtewt0mHv+SRDzQ=;
	h=To:Subject:From:Message-Id:Date; b=CgjJO7AznZTvi/N1JkMABoMRoXDA8jJm6d3LKnTUVwT2TpJxk7qCN84GbIu6oHyWfictJxVhDB6DQAL7Qhmduzr4mEf2Li/7H6Xh1ZtgRwif0GDlHM5LpZoCPU5xVgIhu8YfImxIV2edDvfOZ0QlEVYQ8Juh8+uQQr74c/wcNIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ciWPngp6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ciWPngp6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B539FC116D0
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 12:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763469713;
	bh=Y/GrJRniWUfJ53LRUtrgsxt6egZSLtewt0mHv+SRDzQ=;
	h=To:Subject:From:Date:From;
	b=ciWPngp6x8MyIb8tpsVx13pSdLgkiRZSQdt3Sh7Egx9cxlYZzt9xv61MJ3qUiBuFB
	 4nu1rJVUSy5wxQyHt8ihd7+aVTIyH3F1m9Qdke2ecReEcn2YsRXkK86De5unZ52Tgr
	 +YjvZFPEvZRv6bWzaKPxXv+SOMfGeMFX6SJdQaE30tr1Xw7Grs/UT7CpmMwIpaUWod
	 pmNMMjixpeR23NQ+jttInR2gbTM9G6zrytSoN5zhFxOyMEoC9vZHRw4fh3B+p59xzp
	 MouEo2zjV6Pk2RXO9cClLmV+RMadZWLxOHv9ZFO5Ci7ckFucD76y1qaJWvuQj/nnK1
	 3ZnC5BQE+ZdIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902F0CED617
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 12:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176346971358.9688.13595951678499619015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75c43131cd40828d589041aa6105b28c299bfbfdad039360e82e9c3df207e114
Date: Tue, 18 Nov 2025 12:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763469713
