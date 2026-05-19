Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185114A13AC
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 12:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779192634; cv=none; b=BPMGA9TGCnESZ7jrW/ioHen1BvxaAgqKhuAxMpGMuEOlGPgBJR/avLaLb/ow8AZ8JNlX8B8ZjYtu2CVZCIeNkTC9XxQS9FQAaA6rSHQoDhDjnTF8O0lnY8V5JBeEJDxQqjOZcyccYFc/Jv6JIU91F3udylwVEePsu903WxbEJd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779192634; c=relaxed/simple;
	bh=aki8YOskFG0OOR25ZkPxE/ReHH1mMAx/SzjXrq7L3cI=;
	h=To:Subject:From:Message-Id:Date; b=nhZdy5LdBzfOCAAlh1vQPUgpPIvNfR5jbcjgndER4QYxPtxahYrRkmK53r1ZzhEKZv7H42wFaj+Byu5BswP/4J64XKzTmxNsPnzr309ehZqxaFAC3YB44twSHQlgOjoAPpIbjjD7/5xMSaOgnN4b5En9cLnivZgb3xsPjixiMQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CDgU3s+v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CDgU3s+v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F66C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779192633;
	bh=aki8YOskFG0OOR25ZkPxE/ReHH1mMAx/SzjXrq7L3cI=;
	h=To:Subject:From:Date:From;
	b=CDgU3s+vrJ6afDAzcFJq4BLisEIRzYSM729z0ujmmZJ+J8tuYCsJVX5MXs1OKfiUV
	 ngFHBuz9tve4c2ky+KkZnyruaEWItF82DDlFsA0hZB0b6CIX2CzZa8YjhVwHfr96oc
	 24ZIdpl9e89ShVvKvkPEBwLz8t9KfA9TylSO1fPpZfadJWR6Z2r5KaqNiebIFP9BAJ
	 oUJgORz922rzldXc1dkd70N3IAAxguUbvIQXkugeJ/pD5aQVUZsfd+r4HoWxtInwJx
	 Ee9SqfC0ZoLofBaxhUNcy/kwv7GVRkNQQvQDMl50jPxg+J6QjrQzYh2QpwCJgNoWq6
	 wx8SH5rVu5amA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA90CD4F57
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177919263368.1023.17199198331251526750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 135ee770b5edce4a9393727a440b8cdd172dfd78fbca25c449de538b14ce574a
Date: Tue, 19 May 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779192633
