Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BF4F3EC69B
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 18:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784139514; cv=none; b=V9KC4ZPeqEYlBF5qG54K2FvOE1WdikoRjc8lQAZgkqJ39lji35fqgFVsl2jOHXFi48MtAvi3gMqyadJvpNT83LeKZT+OcG9fVAdZiC0+xyCLGcsxV4YvSkmXDVS1QSXEjj+uQKi5lo12ihdWqvZZgBQAooU4xx3HrHKRsyC3No0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784139514; c=relaxed/simple;
	bh=L0UC4MZ8sXXwDIEPXnoV1Xlhk9m1iZFxs65oheybtoY=;
	h=To:Subject:From:Message-Id:Date; b=ElwXnsI2n2qESZayo7IpnfbLe9lIEVc8xCCDHZXKmGn4mxdQAjVayZNEb2l0VjOTN5y2Dbq+j2q/IvwQEjQDa6azwS2G1yEf2w0yW0KPySLCvQkXqlloDj4M07R6kDrO7xqUhzfz7DT3Q2Xl86Kp8m8KbUTxcwTHsDxSC7XpOPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QqMgBNbI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QqMgBNbI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BCAC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 18:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784139513;
	bh=L0UC4MZ8sXXwDIEPXnoV1Xlhk9m1iZFxs65oheybtoY=;
	h=To:Subject:From:Date:From;
	b=QqMgBNbIw1cnE1UZhTZxWKpBL8TVNof+mMNc8fpvjK8iec6w0OhXJntAaHUbEfwwa
	 O4gWlDNKMLk57gG7/UV+R0jqPLAZ4DcYSATkUCj1bP/xHkb/RozTgqZNg3BiMJsePY
	 vCZWP1d2uj10HRpD+yfQ/lMQCVhn46576QSRWq0MOpyYxxj29vYZegHs2wxQ/RMguh
	 JfKgpwDD8IAPMJ0Wll+PIeIJyb7Xza5mL3GdtzPqBGjHwD0uwiCPD7SwqhSuDKEsG1
	 OrRT8GUFOU4FRgH4Q+fFOC7SGIzHBBnkMjvAEJ9D8XpcElxVx6yS+ZteXYXWcoWE93
	 tHK1oxUWy7GLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC385C44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 18:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178413951369.23489.6210825009935892661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 822d96d468fab231e0acfaca60cb9d4a9e4911b8caa17a00ee977e3ed1216c70
Date: Wed, 15 Jul 2026 18:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784139513
