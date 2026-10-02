Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A62E47254B
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790937634; cv=none; b=L5Gwx5wV4C0vG2KwDmkRwXd1yrmp3/1byeiioGz9K4p+DJEWPeA2jD1DGIoVtB5IUui/GR4uGMHCshfeWMggTGHIVYruvAXdn8DimuLhO1M8Nf6rm2fVdEkkXLV5yXv2rkYFSCPdNncaa8aJeF0a7aAmXtSUn3n911e5hfJhkKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790937634; c=relaxed/simple;
	bh=o/N1BKBmkb5vOyLGqfjePR9ZtxsJx7uftdcvgZANYAM=;
	h=To:Subject:From:Message-Id:Date; b=SJLJon1dYD01xk7jxVe8ediryHiXAVVyahJPJMQwhVRJX7NOyhDxn0kXG+xs52Fb0MDxE6MPY5PurUOXoAOUtJAqi/2eqh9ZcmWEDoC3VDu/mtKndrsciiGUbi4QQ2JQs64YiVa9q0n1tWT6dpCBQW+E9NC/D/FgjTu6j3ARN8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UgG6fCQ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UgG6fCQ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEC9FC4AF0B
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790937634;
	bh=o/N1BKBmkb5vOyLGqfjePR9ZtxsJx7uftdcvgZANYAM=;
	h=To:Subject:From:Date:From;
	b=UgG6fCQ/3uG0/NXfNvB4Mrjl1RN99k2NYXFuOYrJOZVqV/GPrQqk9rGfvHFfM/Vv/
	 Lh9PrzqtsOJN38yvwpRoJrWbIhfJe6V1JmbSXJEugp80Rrpf+2eRBRQBQ3PYfVJnHE
	 IMu0iyFnU7TCPckkFwzhbasSNfHoAqaLi/a8+mb0N1rs9i3P+ecX/wQm2HBCplwT7O
	 ekclWDl+509zd0T+ziQ4rBf0BdtxFx580JNky2KLML7R6wK2ZDXFshdb+dztS8oV13
	 eGcqhvnptiSa//wvyotYhsPBhyPYuZu6xQu+KKKlOvmscBpkwopKtSlusoXS4qvQ7J
	 /IFOGAjXZi9Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA475CA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179093763368.20866.6694636755504805144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92196448832aac9b3e80f2fcf2789e0de9239ef5467053f4978f48463ad4a4b5
Date: Fri, 02 Oct 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790937633
