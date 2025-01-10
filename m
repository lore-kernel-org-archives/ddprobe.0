Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1141B20B80D
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736515554; cv=none; b=LbDD7+nXcTsy00rNC6BGF3ETU/J574FDij4t6Swacl+iebAe7jUQSjKsghAV4jvpwJ+zaTm5s2HA8nfb0X6tEY5eAuRAwlfGU6nDH5kmWaED5/nxpfphDpLKgCEzeKRmHUIHdSMyWZm6M9MYJI52rmomVlkkgZiPiVEFjAgeOpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736515554; c=relaxed/simple;
	bh=v1MXcA7eS/3n725gUktmFckmkFgA5MMzpBQRHPB7LAs=;
	h=To:Subject:From:Message-Id:Date; b=jXIqLZa0k3+QZA3WDY7pDiun9vcCtaNX8KI+8l9Qv2+FlqIKVDDtbcT9j4D/yG5EOj4TGcxBKTpcJS3NHL23mY6jECnVNkJyBwKi4uH/mzdXgI66JS4CE2bPZK7P8lN1ivnzh32AtL2pfxxmaK64Do2OGEScnoN8o5gINdZnP+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQmPkGIN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQmPkGIN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0211C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736515553;
	bh=v1MXcA7eS/3n725gUktmFckmkFgA5MMzpBQRHPB7LAs=;
	h=To:Subject:From:Date:From;
	b=EQmPkGINuZ7jPptbivHDL+YDi7F9YqMTqPdMv8G9AEC4sQOxPP78jMufWh9tty9/x
	 8zt+LXQKbxgIKb80S+0O9bhWe0zN3ZnVQJrdf/+ztrPRzmFxJ8Gby+l3Y3MW9FfMJj
	 ds2tCdjcOHhKsmAQ6HKeMGlOMjw/OVcOo7QiLc069sJLtMxQUPv+1Jndb8FEX68TFC
	 6hKOLoixwKQ317w/uqRVNqfNZlU9WpqUC5K8beEwObBKU+1s5KxTc09jWgYO32W+M8
	 AYSu14AYNwK7RClseS8gWyIhVjoUHQbAiJDmTxzPj8fM/M4RJiSFK8Doa45jmaS+VT
	 iEcvWFw7eH49Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EE7E7719C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173651555358.2990.15153340967937374034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00cb7f60df98335197861b7291b6af651533871fe48569387d41d433b1ca02df
Date: Fri, 10 Jan 2025 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736515553
