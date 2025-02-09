Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59991220693
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739134554; cv=none; b=pcV2QMEVhV4Wx0dTpevQQWs7bOeBfZ4TsMo1weldzKb2yMAl8HtU6JRYlds4luJFZ7OGj/3aVlM2WQJ5VZWyp9wvP239Le6+etZouYf3IEromCB8gxcqMZkO6mh8Hvvw/cl+cN4jq+bsRga8o2O/z+kQcWr88INfO+DQ4L7GBoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739134554; c=relaxed/simple;
	bh=5s1WWxuC4BPtVWjN24q7180EcWmhYwRj/MjPgCmdEEE=;
	h=To:Subject:From:Message-Id:Date; b=jlxOGI78HgAKSSJ+SWuxhqNsSVLorj1e4fxqo7Nj2vxBzhc38lM7PdzmrT6NQIHWontAxzG3gaHsCirAmxWBtdvNRe2Vff3/qI2XybR8zPXZFwSHfJ9GFemTl5JEHVTI3oBAdHX7WIbh7qERK4Cy2MbN0qPH8rTTOmRATs2AwMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qnGaCxxO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qnGaCxxO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC265C4CEE5
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739134553;
	bh=5s1WWxuC4BPtVWjN24q7180EcWmhYwRj/MjPgCmdEEE=;
	h=To:Subject:From:Date:From;
	b=qnGaCxxOpos9k8fMX3hbDrXWVjC5eow6pZCX2irKvwyHnEJluCPJ4xTCIbCANftJN
	 PWFz8Hb3mHcxFbKQ9SFtmuI0OkJbB5J4iSB0Z0DzszpY2WjJW1COg0pDH2bY7xWQFK
	 iC3NWVzz+3+77lqvXkLZVyLiNa8/x4HEa5osj5YmQ6J7x0LlyboT/xGafBKYXysnIG
	 eRu9K+sug3M9gB8oFUIkEZUwjUNZbKyf4ajgqnHnkvyAcG3sgYKqnVwXFmPm1nzEEf
	 GzGtpOUyDVq3Rz+kXptqNW47ec7Jnlwmw7kve8gxYw58TI2P/fOULHWRo36JbCcn1u
	 pbvn9bbD32ZFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F20C021A1
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173913455367.28667.2636669497597238893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fb69b42dcd941da05c0d9b862efe57917543f49b66fe34daf089e5a0679313b
Date: Sun, 09 Feb 2025 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739134553
