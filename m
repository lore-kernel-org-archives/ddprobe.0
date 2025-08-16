Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1379A1DE4CD
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755376194; cv=none; b=YRyBYioMX+fwQQYmSFvr+UWLXfdgAqFzmjqAgxGvrPaq1GVVR9rBJAvPOnGNWt7/Bs7svoeSGko7SuMz1xhDr7EhQLSDCio4LxkpsQCuIHsSUfXJyKu9/nk+xjL+Py/bYZr/IGvP8MP7K9XZCb1hA5Ahz2dxYKur5SUl0bdj5Ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755376194; c=relaxed/simple;
	bh=vqusehOsJhxLIYJRD996vfRSt0TkFtBXMXwxyj9vWXU=;
	h=To:Subject:From:Message-Id:Date; b=pM5j6eZB8EHJ5aofFlGDdyPVPC99zC6LFmgjzeQqmQDtCrZUMwvWejSD/XJ4lBKorBFU5BTQbTmfjRA+9WL0P+1JRczdLZ6nUM1klr+ucxZgb2e3WtxpPLkcIuObOnrKKrSnAdAqypPybuf4Yg22i1XwKS4FjnE8ZptGxa9yekw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bkgz8+O7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bkgz8+O7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5951C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755376193;
	bh=vqusehOsJhxLIYJRD996vfRSt0TkFtBXMXwxyj9vWXU=;
	h=To:Subject:From:Date:From;
	b=bkgz8+O7qFcn7Pu+DsLL0CE3WzhlJyfNva3Vqlrm3/Mydr9aSA+a2wHUWsf6fEzqu
	 gfex4UUluRO7jlpWCrPsK0v5Gd667zZR5S2j8Lf8b5EIm/vVw0ySs5BKXqdiHLUlTA
	 EU+pqfET8j8+Z5I18IBk4JZgltUJ8m9kdwKtwrTBOp/D0kmBSTIvMx6JAUhXUGBAnV
	 yXlnrurrd5XDPyB17KFLtxEt0IGWsGUEWvUluwA02NyZ+0MTqjV5/6NBkJROyoP2Rq
	 cpiSNbShKS3/9wOdYziFu96GD5C0GdxcMdQUJYN5WKcOKAvoOrWaQp4XRZRV8P1Fjq
	 dD8CSQf+kNfFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF21CA0EE9
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175537619358.3435.9135941204710679889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d69b16ebdbb54f359ec4dfdca42fd10880b45bdc2366664e99cec9199634bdb
Date: Sat, 16 Aug 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755376193
