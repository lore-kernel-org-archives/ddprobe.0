Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71C4EA23
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 02:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716689063; cv=none; b=SL4KRirYRClYkP9QfGIOqtuH5v7/2uzBXvgqPKGBT/M03T2Pg/dOLQdrolYw+qQsFTB3HzuqF0h7WV51skYeLcM7qsj2E5+Ou/ESEJZ5xMCh/urlwyPUbX2V/Dli2JWnBHjiFOnG6cwsRbpfXNf67CoxXkOOEXinrKndSu/8Wgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716689063; c=relaxed/simple;
	bh=0n47ejb1L02YINKjhwi+218g0BSHhNK7mRlga3lJs1I=;
	h=To:Subject:From:Message-Id:Date; b=gYzZixeaFi4Ua3f7KW9VNNfDMcA5uDnAAuano8t/eAlzh+DLkqhbh4CB8/g8mMUxOFmmGrxoQR5uWfnQi0+Jwo7LtpOvokzvzTtp8MLYkhWdIbTu5WmWYqXgVShD/H9m/K8T4i7nedgW0MDWFqQb3k80pj/SF+BVPDPW6GfQLIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sMyxpyyf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sMyxpyyf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF1DBC2BD11
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 02:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716689062;
	bh=0n47ejb1L02YINKjhwi+218g0BSHhNK7mRlga3lJs1I=;
	h=To:Subject:From:Date:From;
	b=sMyxpyyf8QpsuYEAFVJ4R35oY/4eKF4SKyuIOuTgfzO4YMMnnhGhureZ/HDcfy6Ew
	 dr4EQDSFkGTcUFnppE9os/a6Z71WiWk42H+f+6vPYU8xpbRkK+u21NE87rgMJSN/p2
	 1WBs0DlAGV0aoQSSRF3TyWEsXYg9LgHlfdbf9ZIFWiQOXLFR6werQhvX+pzXIAEcsA
	 QkDOV9Wy1pAG02SVvo5B1mrVY+wmwTwl1gvRIdup5ZqljcD9K2ZZhimPQMElqDR+Oo
	 d0xHyZvh4MA1pBzzmk+23BKjgYqtYAqcy3S36IhkrIBMSLRC6nf9QGODfCl1vgYT97
	 WOQQuTG6qsFxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4A85C25B78
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 02:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171668906277.24519.9968945613629290953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9428e584629a0dc849adf5fe6d668f73c652953bee6e1245a5baf40a88eb0fa
Date: Sun, 26 May 2024 02:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716689062
