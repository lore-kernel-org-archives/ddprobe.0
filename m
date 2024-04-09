Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E1787D3F4
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712649497; cv=none; b=cihdVYv1/Z2M8R6qD0dI4GskaOxKjgC9I7/go2/0i4tTOt8vAujB1uqHGnnbaPN2fAKEof80CP4evZ1sD9GPJggLlJAn9bfZ3E8jWekamFeNiK6zrwjlxDLwp02K65j6FTWRC7Vm7O65CygUdXefZT5KIuBJDry9Fq2m21SJtNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712649497; c=relaxed/simple;
	bh=OARAZwVjd/wSWQnHLjCdctTIDwNGUmhV5qzR7ALzm2k=;
	h=To:Subject:From:Message-Id:Date; b=kCvPGE9K1T43fAMScLt9NoQ/NGL1PMXOfgM4V19XtTl1sB/t8OYHdGw+capwyN+YA09KcSgLEt+BsldgjwWVH+X9p/sofUmxlK4JZ7q1R74ScCm9cgpNxOyo8mxdiUvhDt89ZQLC4bR0yuBdnqcwBuRe/2uCQp5WLhdXiPJEDLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u8Zx7y5f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u8Zx7y5f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F626C433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712649496;
	bh=OARAZwVjd/wSWQnHLjCdctTIDwNGUmhV5qzR7ALzm2k=;
	h=To:Subject:From:Date:From;
	b=u8Zx7y5fVL27KzfAyv5kMfHnJByh+J5voWzfAzs2WZotQLsBac1eAxVIs/3ne2yxp
	 bLQN1FxPEaBeWlxv+93GI1kvQc5f5tQc5e/j6bPe78bY3vawAfzluICiMKsSX0I9ym
	 wpQPNwupxIsCwq9goqUuGeiTfSd2DUvno8uZfQK0xj4YUiBxpneAXwemajso4f6q24
	 jZC5FtyPOiyRTtf5PURATvKES/DWf0wAewWCXtwIfckp4luEvzVPCtIXQVADixSSBZ
	 5dM6gzXxH00/MKsnWHWwQHcL0lXDBS0znxlJj9kdic6/x5+G/0oEo/C9fgd90Hd3sK
	 RaSWqeWPD7++Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C9D0CD1297
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171264949643.7223.11006835604097273059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e09e67a3633698abc0d49911d39078713ea748f23fc0bf18e063d3cb7b17afb8
Date: Tue, 09 Apr 2024 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712649496
