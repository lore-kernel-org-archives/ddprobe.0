Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481B14C97
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 11:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716897263; cv=none; b=F6FOHAuShNySBw75SDU8EObgzmr+v4QSbxNjJpWRec0mFieGSnL4e6+jHINgynADgvpraRaPkUN/6o2WKGAu6ZUZulHSZ0+O8fXvSwiMh6PiYjSdKRRuGvo49IzCEa6iuBiZcLpEH5Nmpq5804rGO6wIY/HcggvYrnvslEpkq4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716897263; c=relaxed/simple;
	bh=HOc8ctLw6JB1ta+EAsj+7C7WLv0dJ+/QzhzTtd/P/qQ=;
	h=To:Subject:From:Message-Id:Date; b=ERmdRRb2g5zTc3eG/NPmN5pnqRDWF5zRQGa92TT5qdUvCzjNWn4XqobiXVlYoYsVGkUE6tAiJygKrdLgy9iHkMuw6CbFGGrpEM1kfVZ1wr7gXNS8dc5sMsYdi+NdorK6a12oOzxeJR9RC0HJ9VXimmr3VwDUlqWfmK+kLscZi80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpiusilg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpiusilg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AD9C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 11:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716897262;
	bh=HOc8ctLw6JB1ta+EAsj+7C7WLv0dJ+/QzhzTtd/P/qQ=;
	h=To:Subject:From:Date:From;
	b=lpiusilgqNXbNAGblPvyxx5EjPB/81ZPVzbN3uK6cHJxbTVM6ULOsvT8BUgMYJh32
	 At2XlSlL4TQc/N/2IXRkhUtvQjSFxzPoq/dUrphNl1KuB97ngheQ5S4tbt4s5IGUeO
	 yD1sKZo79YXzib5hwKv5iElaOfcjeGnLXZtrIGk6PuxOIM2QLH1AcQ4TgxGy6FVRtw
	 TJoVVg7wFBuRVkoaUlcsePtJlVhGXfFxyPlE/4uOZnTxqtwnBpiqO9jObNtlL3Um8D
	 mq+QN1oNfSjIukPD+Dq/W5Icas3CU3LrBnNQKvf5wQuK2wsI1wAYh2TS8EQeAucc/D
	 ezZoB52ckDMcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBD38C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 11:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171689726275.11427.3898053065543046228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a4051b04b3010e9482764104260408e01bc05707db97faa4f5c022b05995eea
Date: Tue, 28 May 2024 11:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716897262
