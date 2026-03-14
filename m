Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17706388E59
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773527694; cv=none; b=nkquaAK1El8dA3tyxC3zFp1WRDC7sJG9zO1buOK/42tkuyAvG0RnsZ6kQk8SIeTnuRnV5faBnxcutWRK5Hb7YmXJ6fOjyvs2XbEpzMQLXXzDMCjiyzK4WsHpbYAPaZ64XrkDIn9KkZ4Ztcr1JjDgv4MQMZOOM0oEnSOdOX+3C/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773527694; c=relaxed/simple;
	bh=4KXVYl9DdXJiisSbsNJes3PnjHcrbb/RrNqi8z6TP9M=;
	h=To:Subject:From:Message-Id:Date; b=Gkp/VtAE8DSW7Zk4sCv3LIEuk65JMmAEXrkjGRhyY10vzUUcuhstpku5aabO+OZZPTJMCx3glWOJE58hLROL+rfVcqek/b6I2CZRLq47UyTETRG7s2mJMf9ZY7K4aSzNlsw3nhXJrZJaO4s4gsUV8VnwWylXFViQZqgwENw2nSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SYLhdg4f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SYLhdg4f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDEEC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773527693;
	bh=4KXVYl9DdXJiisSbsNJes3PnjHcrbb/RrNqi8z6TP9M=;
	h=To:Subject:From:Date:From;
	b=SYLhdg4f4Xusiyp9YD385Vyfh6BlC76/L/4o5a6QqUwntPPXzxQ7efXifeRFEDlCw
	 IMmyELawCONh7fNZQMgRNDs5mdEV4dOvqBNaKwYNiBV9G9z117DZyxm035mp7r2NG/
	 VMYqdRnQ3YlE1Mo4csE71KdL/9XiAf038SY+lG6vMhjO+KKEdbfJScR/46SFTvw32c
	 j52HUqJTNDTZ9ofVtFkYlbPrRJzxQ1ZD+bLqFgg47IUX6w8eMKzf9tJJuhGQnDmJuS
	 uEvJNxsxmJwzXVmG9BEsixQxhkXZzI60VtTINK6IlCVrEPGlqmbqU0QOEDeaMHB0un
	 mBJuHknnlMIgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9647F10854AA
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177352769360.25843.6019052277712247407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6d54e1d2ffb4292b96c0befc81834c172bf680260cf2dc6b7ad37b81a6e702f
Date: Sat, 14 Mar 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773527693
