Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378EC6F2EA
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 02:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717121063; cv=none; b=Sm7hzeJNpqAiXs9ZvNNEcssRoqZrlPXlQEwCpkNtdsuYou1dNmS/RavPVGbOe24MvR6EqjRim3KkkpDSo5AtVFCCN3Ig4yZ7XzOtro9TR4d+axSfeaBesSPTfnVthqXvLynqNpM0hOlSwlAFq0XEEYH9ZWgIWMKr6NM7Q9uCkzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717121063; c=relaxed/simple;
	bh=J9TUxMqsxmR/f9BDNIc+1b9GO/1ANLNqyaxrIdFuNEo=;
	h=To:Subject:From:Message-Id:Date; b=BmA6p318tjptLDJWUGJC+pFH2qNhzSbOArv4nlZ+6zEiuXlU9ivn77/eMGY0ybivMi1Dp1YKsduYiRG/4U+an8Q66nVF/XcCFhWFWhvavFIIcC4TEyeqc9SlkL9raP5uFJLnJ+eRIzDdU8DcsGZzlLNFpp2qnchQ9cWNmJ0520o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dBWOJ0lX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBWOJ0lX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0BDD2C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 02:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717121063;
	bh=J9TUxMqsxmR/f9BDNIc+1b9GO/1ANLNqyaxrIdFuNEo=;
	h=To:Subject:From:Date:From;
	b=dBWOJ0lXQP0LwHXlwNCENdKOAS0C5ydGYOujMsNOkuJWn5mwB1m5z36703WfqEDdZ
	 4SMLsLuitLIQnlGhxeToJ2K01XzqpfcdeuQPwyaGYhPBwnvOBhOoflkm9+Se8qP0yW
	 +vji8Oi/jJKnq/lteUuom8ssD8j32s56b15Byqv+BoxNTxV1/RtglJemcGxijIAmj7
	 y2BlrA0enmpbYPCg3mXXx+Te71ImADvxge0Z5AUWcXViPE3cfLlDcQxFyqAMeto5i2
	 zxm3DgMLIl3GNyInyApBk9nSq1J3zBESmugAERGBl+whISNPHgu8qt4D4vqfJEFmfG
	 5T4FYd2HXaNAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5B5EC25B74
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 02:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171712106283.10690.16823122119445947140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f1c38cb951fe95062838af98d4deed5528ccef9f97c9182e2f7ccd860349d25
Date: Fri, 31 May 2024 02:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717121062
