Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493ACCA5A
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731812754; cv=none; b=pEVVTwC05TnRfFIlnvGMXazRLZBSCgF/31vEhmxKIpEpL8mM43ndCVH0/+yN05uX7Dtmne8lvp3dV1vGTaBBOgx+3cD/eOTdXexINW0UhA6CZhKO+UDlYb+ZvUjZ5ElTIEwhFDALNLwsILK7GSGfIALfv2ECt5NX7kCqBSRcIjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731812754; c=relaxed/simple;
	bh=Co5WliaAT7syMYRRJnOdfQktAiisFvok2U6j1n8Zu/A=;
	h=To:Subject:From:Message-Id:Date; b=jzEsWmHXd55J7oG367+We8/evFFX0vAxcfqdQyGN9xtAYFLG9G5ofTkxTq4kPFh7kcrRnoqZBzq+wgMoDB+fWM6LscjDo4qNKvuxxBTeGByzk1F6bVeZtT4nhTl2UF1zTJyiNgRgaiuxRR6/+SYglDXtEB0yNlhY0Tewo8mHvQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d81wsMI6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d81wsMI6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE6A6C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731812753;
	bh=Co5WliaAT7syMYRRJnOdfQktAiisFvok2U6j1n8Zu/A=;
	h=To:Subject:From:Date:From;
	b=d81wsMI6S+NJISzF+ljDhqlUBYK+cPZQrPgw6R0BRVTSZeUil9+Po+3OC7TNEC4wC
	 V+CQ7ouH1cVxSsnSsFj35+umKdgT4vcRF14epxSb8btUfVZ/1g+zuWfeVnwFUoD0bC
	 0wvPw+LhQgRLSqVFkhgInWR06YvtqP0yRUOvmKqOGq+Q6pFXbBNsD3Kt1PiH982pyL
	 1eEDlgQZW1gjuX99+8t8PZ14pIixpzb7XRNF0F5sWJbVixPn0o0mkCJffFC4W+T21m
	 8uDkYAIOG75216F9sSdSW2aT9GMXpMNLH1gQPRT7MLkheZreMmouYTBwA3NAkH7X/V
	 1ChbadrJ+gMsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C22D68BE8
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173181275359.5318.8651477582110939561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08e86cb775ea680db1373374ed16d92d6878324b7c00363a10e03a6c9aa14857
Date: Sun, 17 Nov 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731812753
