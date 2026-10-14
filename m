Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64B7C3CA4A0
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792004434; cv=none; b=mMbfyNMtanceeot42FUEzu7salc5LOJjH6BQM1uKqdPe1HdXmfVrWhpICGkYyZE6+MCMlJ92WFEf0QavMJJTk5YTtvy14n7jAdGUsv3M5LusCAbXrBBG7pwgJuyQJ+rOsQHBQMo0q+nVWYMSexyELE8MsIdG5oYbncwT+EQnMNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792004434; c=relaxed/simple;
	bh=1gN4uK+FQxwsMu+h4L6V/0WFlNVWOfxUHq0E0haU0PQ=;
	h=To:Subject:From:Message-Id:Date; b=nrhkNbvCXxfqBVThAI5R6YMAiycKAte82jkWjaCRVA4bxwj6PZteyAplQoOe9VpjWnXi0OHChmA/cpI252NoSmVy1YYwjYr0+kjOrDyNNlVO66d0nq0U1R4evaVOVG9FAzvNL1HtWTZsif6ZWYRhSTp0KNhokXTZ/Xi+6T0atpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HPrXe+Yy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HPrXe+Yy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDAA9C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792004433;
	bh=1gN4uK+FQxwsMu+h4L6V/0WFlNVWOfxUHq0E0haU0PQ=;
	h=To:Subject:From:Date:From;
	b=HPrXe+YygPbynL0j9ZdRkAJ5WKK+Cvj8nWLlDkES7N0HbWy+UZqLTVztwS/mXFHe+
	 occNweVLWS1QF3J6/6Poeb5DEqaL28d/eJsV+ajddL2lNGZXpJOxyO18He8R24DiEH
	 ENewKoObL3s1fzrEfufLufo1F+7wvzIvNn1Aq2Gjxu5NiuPt6yCf1myON9N9hde+YU
	 DRUCNufqzRVMT7D7o9ZUiADK9Hc+DthIz/gSeQwHdk+6nnEgxOHwpsb0O/SleGS8Uh
	 e80O7f33XB82zyt+3vj8jpdAtg7WQn6nVnbQfUqOkpUgVnG39sMYFmP9Ehw2zX8lDt
	 1pC87t9GHCxlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7830C3DA7A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179200443370.12581.922091033960843518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e13de83e5f48d5617588c2ed27f8b4d2be640d384575ac281842a00b9c7eba52
Date: Wed, 14 Oct 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792004433
