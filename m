Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2B13A7855
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770201834; cv=none; b=bDksSy/g4diUywJh1apCOFBuwinnOhBma6klrfde1sFaDPl9fEp+sVl+HbYmy0pAS4m4pTjOXxrnoWFYa4QKxkujXV/QfC0TER468cTqkvI+bgDTCTPv2wr/eiYYiNSgMq783SrEQQrHgIdUgI1M3Vq8WIUB1LFgJImvxYJIihQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770201834; c=relaxed/simple;
	bh=hd7lkTuAdXW2QqsVF/3/8I+7hhru8h8ZW7fpWOL8EYk=;
	h=To:Subject:From:Message-Id:Date; b=NFjyTXqRGOfbuQSXT76naFER8nJ/wpXwS82k6ppeBTbWBNMi+8NtwAfLurI7p0+ZD2/BuS4zHrxL22I8AtFte8FOClshUa/ftb1SIsBTDngFX5NZROTvfSAvjS4ZQxgnYZg7GDlv21Mb+Tvz9dFQ8ZzdbAi1wwJrsAOzYgjZe94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QIKW/ocN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QIKW/ocN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67A4C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770201833;
	bh=hd7lkTuAdXW2QqsVF/3/8I+7hhru8h8ZW7fpWOL8EYk=;
	h=To:Subject:From:Date:From;
	b=QIKW/ocN+5hRf5RHsMG9FAQV3Y1H9YvnWC1Ev6i9imTu+lhHX8WPubjNghGkE5ZzH
	 fcQLqKqH1UAFZPVzZR+API9ezsFhNA+GorQdLAPM2jzxNjIOD4J8WjC2bMMwvGRKHz
	 oWCyU+iNA4f1/xJheSosGXvsBmDKkHom9Y4sWYSlXJh9zZpY2jddDhNQf9U3jSxAZK
	 rxvhrjhKJK+VM3ewTUSsXgiV9oGO/IwdoIJqA0lMeqKGt/7vJZ+ZdPoxSyPCbqmOM2
	 Nmxi9jeeAkmenvf8OKplbfSpWreE2FojRR7B265YpRNDxSN0RFHb8F40cbtqg08gDf
	 xmgS0q2pL3WOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925CEE95375
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177020183358.23622.12452907833239733726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf7e5b9c27f40006ec8fa2c906d5c15446c371901e36ed916205e8f3199e233f
Date: Wed, 04 Feb 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770201833
