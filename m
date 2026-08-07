Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4206A404BC8
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786117234; cv=none; b=HOGqGJA/9HESFhLR9piYLZKgwOyx5QtuPzkcwpwMuDEV3PuXBY8h7VjoZABqUtFaMgjb/xrIIqZgtbwiAW75sH7KQii64NbpGcQ7jOnpNCtUh4oHuVW2JuWEZg2xAoPb8OzeSuS5K/dz9MJExveG3Oat4QWWzUBc+Xpf3Xkm7uY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786117234; c=relaxed/simple;
	bh=OeykB3Lp6hWKxO9IVbz6rXsm8Mq4ooarmNDM0dWQ0nI=;
	h=To:Subject:From:Message-Id:Date; b=hPwa0bBmiH9SZQH96nuLpbA/zXYArjZ/jWtqElRj3ACVAcpqqeZ1qN5fFvzWJ+2FNAvCTGZVXrFwHQeSmo6r2fkDuZ1xNwj6Yug1eOae+4MU5NL0RzTrsjRekXf7WC5uZEmTlX6t5OKYJmFSDt3laGYEgwN3AfAxInDGv8QzREo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uayIjrDV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uayIjrDV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F36C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786117233;
	bh=OeykB3Lp6hWKxO9IVbz6rXsm8Mq4ooarmNDM0dWQ0nI=;
	h=To:Subject:From:Date:From;
	b=uayIjrDV8Sfe35HVHu2lFltHPwQu8rBtdz/Ojpo8mFnpzLke6/5nGrkUlQEiBgqib
	 YyD+IFvag4qRDyXuZvhFVa4mSytFbGBHsNWqHWhTFJ1O0MhrBxUYtWfpyH6qC8xGd3
	 L54MGDo1cJ1EAeDVMAvfva2ZhjjlszKBAGyiUJGzo3enlque5+sj2bWSJjR7xmEkAm
	 My4ALARbr2CHjC31gZcsnxi6YEHaTnlmid+wCnpCkMIln8AjvipBqXZFaxeTGhF1p2
	 ZOioG1eJV4K0YgG9pWEAwQoW8ZQi4mGMRBZidmJDkUkRmUSoQGgA+5Yiko0c1UfEYw
	 DV+QXYc8HraHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9686C5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178611723368.14805.7269283208678471081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c606f0485fc9c6214f31e6963bb825e7a9b94ab4d908d130d18800a80b9c3a12
Date: Fri, 07 Aug 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786117233
