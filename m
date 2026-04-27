Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FDE33E275B
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 17:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777312054; cv=none; b=BssBBv2KDfIstZnJLEM1Ue+2MGNkE9xRoWIIQYagRbSKVK1CasOXYQqXaW8YkuXtHhR4M3Z9WziPuW/NaVUo8JZCfryx6fW1E9E6POdNlGgA8/XlvESaLu5ucCajxV4z8Pl/gBQBnOmmaNahavakv5NpzqDok1w2EU+pYStvdJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777312054; c=relaxed/simple;
	bh=ZJtfEOvCMnWuRJh5DgSoZ6wjC4vzkDZJx5yk6xmcdgs=;
	h=To:Subject:From:Message-Id:Date; b=PdvLClO2RIUVslUj8TAAs9c09iodfH6Q9em16DWt1SExvVar/DgV1SVF68XUFFPcOqF90yUqObQ8asAolHZiCnew0pAjUF4hg8HjRTrekC93GMo4Nc06zyEorASrOpuC4WBfwPmDQ14tAeixtLGHvompD615EgVV8qmg7dap868=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Me50zagw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Me50zagw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF8E8C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 17:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777312053;
	bh=ZJtfEOvCMnWuRJh5DgSoZ6wjC4vzkDZJx5yk6xmcdgs=;
	h=To:Subject:From:Date:From;
	b=Me50zagwjjmjpyDEyu/dQ6anNfS04cZENaJjXkMBIGHMxv/x8J7VE6W2PVoR7pT4V
	 vfpx11+p/0U4E3OWWz31ixl24WtLQF4/kKxx+Zp5BncQbbb7sB3HZWevZFiAPfirkC
	 0IEkPINqSm+y4TUIYrIonY1JXSjCl0p+2oPeQ7Y8zP0UqE5G10fAzfnnvGOzVLp3IA
	 lK8SxulC35POAMJGyVD6BlUqUkeGifKlD9JAopmMKLv6lOJ0qzdGTGRAwyy+KR/9zZ
	 WXvcsvOZdiqdD8C6/ogrM93F9+U1tEwdqp62McLYf3jIGywCfY+BAbhSxZ0NIY7tgs
	 3rSqXVDK/UvhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF212FF8860
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 17:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177731205370.8159.2268646294509627852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 311ee0acadb3f9f05fcd5cf3789f5d9045f72ffd5154ba729b0c13f46464d847
Date: Mon, 27 Apr 2026 17:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777312053
