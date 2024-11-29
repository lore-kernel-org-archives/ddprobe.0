Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258301A2544
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732908354; cv=none; b=NQLY8LzxVVWASzlngpwfbU6UiqO7TYF8gmSR/Kerk9qXylsufJ8zON5evw43fNf1e3SHubzkGWKnNEecJXUuVdIRPwDj4REPzNP6YRqRYm6f+r58dYVys25V2uOiSzlsAGWnfn4dCjAB4FdkhIQCRCWIOcQa1R12igRX93ZCga8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732908354; c=relaxed/simple;
	bh=JL7vCiqtxdJ1UJVkOXgOgIiZ8qzVEI2otm1q4cz/rbY=;
	h=To:Subject:From:Message-Id:Date; b=R4yFRvrnU/UeXuL6XF5Bv0twmTJg4pz1ez/lPj2yppgqw9893fRyPq69GSGHCbnQmVeQ7zkIb9KrWydtMB0qHQkuwPZK6BBLMvrj3sLgyPpTqf/LP69XrUhYPYs2ztpBo9vielKLrfhqoVWu15f3TrUML3QOH7Z8z4TV5PcQtzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ULXQbuzM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ULXQbuzM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4174C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732908353;
	bh=JL7vCiqtxdJ1UJVkOXgOgIiZ8qzVEI2otm1q4cz/rbY=;
	h=To:Subject:From:Date:From;
	b=ULXQbuzMtgf8vTxd61F7E+/JOaD1OThtpOz+Ig+NO8ERXWhA0yYB14U1JV92nw5ga
	 BGel+azgMvSkp6Kie/TSXBSEBIPGsnv5/AmNGCuhAMVQ0K7gzmADKFywUJX6boOZGV
	 1w8YPdiSSBmMDS4ai0UUU0cXRV8AnZv+q6EZPixrFDv9eyYWs51158zbXVIOcHApfM
	 tGoOnhehc26HPCdmjHvExT6dkfhVPjknwfjUB0ZwXQVAYPEaDX6WdOq+VnHY159Q2q
	 YRSX1/3m5ojNVVRMY1kHKbbrtH4F/J4dYmo07sg1sKhaMYRsK9R+zJRfHtG20xZB5p
	 gMqNu476X7c4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A54D729FC
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173290835360.8278.672153884759551852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88904092c7ae33a79844ee7559401d30a9d8c0e129be1835d10161b6819fda30
Date: Fri, 29 Nov 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732908353
