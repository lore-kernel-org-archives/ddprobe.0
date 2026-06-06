Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF9A3148D9
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 14:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780755874; cv=none; b=Mk+EaQ+T4N+oWx5OCuPoedi1+eaRpoGnHMSHosda1Vgi5hsxTZye6pGpaplmVVNQdKdScXhKyeed81SztTX2YMLdL4zXeSQwVI3r14mPQ+NwFddsrKVGNnryV8qJc1UTBwe8zQiN5+zzdKMqm4bV4XPiz3haRqID0sdcWrPT1LQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780755874; c=relaxed/simple;
	bh=MlNcBt0xNi2KqWedSI/1LISkC9I80mqNnOefJj+ACos=;
	h=To:Subject:From:Message-Id:Date; b=RH0UckAsUfLD7kTEWgtWktp5SnSIVSL6MBA6HHiSCb7QB44ERDjzljzFTx/M/aC37B70W2OVeDWvofIwkwMEKGLv+udWdL6tHo3UQV9CXaHU2zNViPz2WrnOAToPDQUzrBGVLJ9JZEp4K/LB8jtBhR+nuQdkzGGARSm1la3QyZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S4HYyROj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S4HYyROj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF939C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 14:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780755873;
	bh=MlNcBt0xNi2KqWedSI/1LISkC9I80mqNnOefJj+ACos=;
	h=To:Subject:From:Date:From;
	b=S4HYyROjIjBIpq6A9YT0+7jrhs08RG6yEyxHAJf1nqQrBdW9bGrEJ9Qj0RRBmasrR
	 +cT9LRr/kAg1psz2sKt+JinCw/34u3rJvDDJ0ix9KsBxYD+lIFfDizJB9n50FxZ0DI
	 Gz6asdCZ2yOIlci3QTHJv3LZ7Qeo5ytNbGtdi5UDCZTZXTZhIVvDJSbSFom6oxMTgu
	 NdHQ78nOIs1f50h177EScvq7a3toaGNOK2zmdFbeBdg7mXaqQxwvdEnDnncGbOKt2P
	 wSmjMuvfnycSu20PqqGQYZId4ehSHGXk7rQ4Jz47TFssBmCBAbqPWzkCQdZS2ki1tQ
	 7HhE3fziO4J1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5094CD8C8E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 14:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178075587369.11276.11011583087915763128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9fcf65f1d801465b7bb66e9cc27dd0760eb86cca28fbdd33c7224940b66ccf6
Date: Sat, 06 Jun 2026 14:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780755873
