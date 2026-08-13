Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 743D2357D07
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786641034; cv=none; b=pbze/UFX00x6rKPkbuHdsnpu/9hU9PgOmf2cwMVtgMAIYjiBr47+dZ/YA8Hdz1BmX9n32Qofmy5lTfLOP1TbNBTSu3fEfuRRbn76QZmok/Ap5mBn2Z3VQ5a6VRRvHhvm5IIk9Zv8RF5FoayqJyHRLnnN/9fz+c7VacnuVX9xyCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786641034; c=relaxed/simple;
	bh=k2/WOsz5dHVlwC3OvVYM0fjCX9n+QuuFg26BR1HrH6c=;
	h=To:Subject:From:Message-Id:Date; b=ZsDPHNG5dZCH7RR2qHpr5ae5OtPCXl52+8x4NlLnMj69Z1JLi1FKDNMMuitozIDmhmbUa8wuSeqSKrjoxHMZK3vyz1kelaZF6/YHAgD1BgsbkOXWy6OKGKlGJEgF/RRibhzgFo6Ht6eyIh+q4zg9S9RFN3Q9O2sHf1QGFtWAjBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lusU2LHe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lusU2LHe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06DEC19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786641033;
	bh=k2/WOsz5dHVlwC3OvVYM0fjCX9n+QuuFg26BR1HrH6c=;
	h=To:Subject:From:Date:From;
	b=lusU2LHe8KdpNyOnT4HpHFZvyBbPlVZRDF/OX6ni+RUoYemyjxRDW9cZ8y46tf8O3
	 URYLCC83L3fDcnwciHZimW/7Jir1lgBHplkGMMJdlTwa2WCkfeYe7UGEuCtk6oj3Nr
	 gM7wMjKqFvaJcgyMGykhIaCqJ7CdtYrAe7s9gt332Nw7blafS4498Dwj9t6fDSkG3e
	 FiHwkbLqPBu3mEWNnEmVWB10mAzM+5f9JX0VwVAt5r4uJDXjqvnQtHlYSq7OG8zMmB
	 1ndj8xwQ6FrWwywGF054SMqKX13YN47StOfask+0OziyXG6tzC9YIGXk8+xXkXr4DC
	 OtN2+HHlVHbBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E26C5CFCF
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178664103368.872.15239258847244226027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f3dfce7a63f9cee1dc9f4057ce6f7881fe0e018f22745d2a56a095d32860609
Date: Thu, 13 Aug 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786641033
