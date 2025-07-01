Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC3025BF16
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751356194; cv=none; b=Bc1f3jwuAO8fgiO1dRw6QjIkIV70fAjmM06ai3jwfp0mbI7n6xRE1APrtqd1HxJatw8zC2RnGFksyChKUuXdimqUONxhT5s07N/FamFH0zAIWLDEf+1p3qt0V9HnSC5lMV0yRY+ysdJv2kbFxKBbmD+gy2XxiEPjeUaABD2KZ5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751356194; c=relaxed/simple;
	bh=WTzYTnqR8U2tN1yw+OX/vv1Qey9pxAiE/is2dFVcrUA=;
	h=To:Subject:From:Message-Id:Date; b=oIhUyz8UWuVtiLbm9LUZmLTbNQDkoKs54+wwzqiU/97DEjUdDhIACwbYGjnPqcigkSIcqZ0rEXKw1l5IWJepTmJ8pciwtxsItz8B9iMVbjU3vKBYqH71S2rddIAGJQd5CHuv1hHbM/4xBH95GVGl+pgLwjinZ3IkCd+onsoKkok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f5SNdqHO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f5SNdqHO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AF2C4CEEE
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751356193;
	bh=WTzYTnqR8U2tN1yw+OX/vv1Qey9pxAiE/is2dFVcrUA=;
	h=To:Subject:From:Date:From;
	b=f5SNdqHOC6UY2Ot9IKaeICJH9ngaljjhPjMjhLUckEMywQtoI9j8PK3r2U0bNAiBI
	 QTbRgWolQrUkalouy3xIqLhZMHr9M14dyItDjFc6c/lqveoUFJtHhZ6n5rfVFuIw94
	 bfEUw1l5pnhgV/NafdqbziGtLyWSBc7N8xEId5qKDMBuJ3ShRO1fLhMcC5fohegVUF
	 1NnmBF0C7ZlNIXXTejJ54lR00ynrEEGJJjYfsp3ybbLj/rtqmNhNY+hR2/X9MzS/A+
	 99bHsbCD4AjUT94Aqn7uFggndcTcXJzTulhmS1bz6ohMyyyzkv5jB03zAAT18b2iSD
	 /rlPWHpTXFjdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9159EC83038
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175135619358.29395.4477578150961194356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 532b2ee21568b8aa93617e81d6a2b19c17572876d3e50afc0abc6eb47c77bf3e
Date: Tue, 01 Jul 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751356193
