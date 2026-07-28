Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340CC19E839
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785268234; cv=none; b=IIuje7u9u7YezRx/9AfLbN+9vu3Fs3rPnG5W/+n5xY7iMUn+J4woSIhKZDQzT5MJ6XclqKio+WirjZuBWk5WN9Q56UdsQ7CJc9Q8CKaTcJItwbqRWnTI6R84rfXVBVjZTY1TCoAwdWDcIXA38jwUtbZ96YRDu0PZYJQqQ9qFlFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785268234; c=relaxed/simple;
	bh=iDO/CXMxQ+d+C0VhG+MMGiYcCcQM41Gla5neHrxxm7I=;
	h=To:Subject:From:Message-Id:Date; b=Km7qsfQviGaRH4hH6f6qeZyMKDh76TN1WB3XGdl8WWP2KgKZT9PlI0nD/4MkQr/FsJCr2zjMEFacodGnZ12eLTCd3hsklPS1KnWbxn/gotwR1zY9RwxH8ifP7LD3rdtTUNeAWJRa3tO8dGFly/kRwYu1SZ7x11AObJF9ux/BazY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6NHimAN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6NHimAN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6CCC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785268233;
	bh=iDO/CXMxQ+d+C0VhG+MMGiYcCcQM41Gla5neHrxxm7I=;
	h=To:Subject:From:Date:From;
	b=A6NHimANibLbe2w/urZ6Uek2tL0dEE778ZJmmJrUqy7wnxH6/EsSYoiaONYHqllgq
	 nkJd8+n4PJ3J9lRN+m7muL/jssCGNzvxXdtcCqRsXKFvUPISxMULYIHQccMUXyliVq
	 SHgrbR3yT4fdBxleadWP5R0YEbGolNby2zNDYsKs7DMmZj35f/Lw7XIC+LoVpcO0gu
	 1kewJbHS2JMGhjZoHxsrNe2PIfKyR87BelD4C0RWJx9F/POZi2y6bFw89/U/nL2Pb9
	 kCVXKIz0pQvuTv26grqDWZXTFBmLzup5G2SfW6OjLAfSN22AfG5cqnU38BwCz6xhYq
	 Hj2X5zqHespsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95E6C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178526823368.8543.12338161834060798907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d43e67cc97c82e617d8fe5add2f7cf7008893e4bba4e3cf4cbabe931f629df5
Date: Tue, 28 Jul 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785268233
