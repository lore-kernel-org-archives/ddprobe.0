Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F3FB2DC32C
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786369234; cv=none; b=g8bYgJCzX+9Iy1FHYrIiJ2exhErQNRPXiqdBSlFPmsA7dCPIifcQAyYRQfE/MezwYtwFMhz/qIPfjWpkIw42tZxOimAL7c7YHUT4ZHQ1yk9awInbSQd8BVDT8ldlfUinKqVE9gzg75MLzDFWGA9zguvnxqW/t5fYZqysze3oE+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786369234; c=relaxed/simple;
	bh=NA/uz5uuyG5beh0jo3cnFrf8CyzTuKnmA8P0rkAxNcs=;
	h=To:Subject:From:Message-Id:Date; b=kZQLtxhHigKB9MV9no12VYts0qh845ys4gcGDIsNaMVUZmBdqw+5/wwNFOs/zyJsGHj6+qlJCJX3yjJwqAVheAaeIp/AzA9LhWdQ/qIbHbpfft46lcmtmFn2zvnCcABQi5XtcOKcFagMsOsMAzagkUeyG/uMKu/GpxWWYo+Ikfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TtHFtmBA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TtHFtmBA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F70C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786369233;
	bh=NA/uz5uuyG5beh0jo3cnFrf8CyzTuKnmA8P0rkAxNcs=;
	h=To:Subject:From:Date:From;
	b=TtHFtmBAEpS028Kqt+YBwH5r+JDozK3kiknXZKNQ51cRGaykLMY8Vw7U79VlrZ24y
	 BPlPbl0Gr4TwZdQxyPBoR8aK9eUmnPgvaMNZuCzfvrTH3iuRQtnyHQ6iA/rENR6aIR
	 63EZg1IBLK099FiijBJygV44enOgcUUaNU5u+0tznabV0fDTkX7LrKnWv/PiSRZo05
	 HeMyXaOr21tZzzlc0hf/zRwG3ccXDG8kNgNJyZxACwy3AjUTA2uUK4y264euP/ytbN
	 fRcW1v4wuS4121/XfeB28eM90JfWgMFqqD9wDL8j++JE+QZug7yqfVq+op0V7EX2w/
	 RyQVLxS05lU6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB369C5AD55
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178636923369.18549.14840474860562124388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e34a1055d847164857e54dadb6ce9f306fc82886fbb9057c8138b93d1507703a
Date: Mon, 10 Aug 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786369233
