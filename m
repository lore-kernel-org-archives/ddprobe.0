Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154A51F5437
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 11:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783510114; cv=none; b=jn+wkXn+UC9TyfLJoBqqgRpMRbTvnX2/iF7u5mSqGQlhCSm2hsd5bCw+J2LxNUqg1XQzkMw/vM1YsbQhoxHH+LhKbtzIO8ikxh0Pp5UXr2FwtOWsVftAAJcztIeBr1tSQpHLGXtvgjwA/vLTnRVZaqfHno84+Q/xeS0c1JGQv+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783510114; c=relaxed/simple;
	bh=KqUSqRn4na4uiAE9WlBghWs+CiaLwXemKvZiggSjLRg=;
	h=To:Subject:From:Message-Id:Date; b=Zw1wi9WeZEfE07ib9FxEpDcq0Bgk9Pph03avYAvsuzMUMYZwfBgwDJgEypKAARyFu5iW3M9r+b68bb3VP5jMcqbkq1po3MxQFplBFtDsmSzN90CjNGxRK98Xvdtg8+SThLPAkhAAHFpLe4eEcawFGDRIHKuhMy6XAxPpjr2kiCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nVxyz3pW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nVxyz3pW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0503C2BCC9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 11:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783510113;
	bh=KqUSqRn4na4uiAE9WlBghWs+CiaLwXemKvZiggSjLRg=;
	h=To:Subject:From:Date:From;
	b=nVxyz3pWQBGwZbZElPoD08WBezMMbhxMobLd+kjaviEiFF62DydBcAFs64vHc2TM/
	 rpC7pYlPnW2zgUeM7VhnkduR/ls9N+r4HjmyX+XF8lhuLD/6nyG6pgbmgeBba99V0s
	 Q0FpZGw2lwobsITpttSfaexuavlMNm7MZ314tuoQlVTBlS5HmbceB90VDA0Q0aS/q8
	 hBlcOdd8bxIBKEcFZu9b+zXWFvd3uVv719g/4lDUMScv8bo3w/mbFjP11dQrFXDKuB
	 2EdIiqDziAEwRNRoLnvuczplGrKKeeBPNjX3eFWhwZBtATv3+62w4P5zUIK2fU8PO1
	 p/n9tmlcIfngQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9207C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 11:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178351011368.17187.3824562572786531803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83d2137b5f83db6ae0f63e54cd024d914c1cd9f284bdada5c94cc11310b1dc8d
Date: Wed, 08 Jul 2026 11:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783510113
