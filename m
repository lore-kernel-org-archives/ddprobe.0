Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1527C2D060B
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769424234; cv=none; b=qGtUo/TiOeQ/QNU4MJ0R91wQ9ed+v91iG3r7mnqdi8pwjA067S6LJmqm3zvdxXfZCgnKFqoidbRf3S0avgmmwiA8SW7W3QoJJ2Mim4YpOp0cplmDNiqmv0pepA1zINBC5B57c6zxuPvjFoh4TyBe6vBEpHeaJW5emsHFTu6xGq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769424234; c=relaxed/simple;
	bh=VXY4M5YlZ6sQBtyaXfWPH17ZhQMP68d4nBZdEBewXbE=;
	h=To:Subject:From:Message-Id:Date; b=QyO2MvnVOlQkt2Krvza4QSxV0qsM6k5s7+kHTWuxbVjCK7+mBSB5fzNaTepcOzVY7uhJRSMTcbWhsO4odq0tk/pEbF7dWq22vAyANUOKsfC/pw5tve2MSfBHE/QVOMt+QF/wHkUbv0K7WuKDoVoezbEeH++I3SoKVyjLCqdFv48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fuyoiyYD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fuyoiyYD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD037C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769424233;
	bh=VXY4M5YlZ6sQBtyaXfWPH17ZhQMP68d4nBZdEBewXbE=;
	h=To:Subject:From:Date:From;
	b=fuyoiyYD7alTt2KoCPQp5TnGWzx2oVcNfrigLgCrw0Bw0sbzRYVySJtJ9pHVmA2KT
	 d1kJfzXkCqCRLXbeUbV25hiSnBhokB4DArsum7PMMRNc7w72VKw99hqIBn6GiCD0Mc
	 HoOeoYVoq15gvMUTcb+BhkuokYdDuovb1blomPhVCU/IWnOgBRB6baDTJaLv16Fm+m
	 H53bU+HJZXX+OUcWhr2UUzGOoBEi0Wu2bJDND89oQmUT+i0klvv8lEB0AwQwrYvneL
	 7gsMOOcShg/QX0HILyv/BgGjSzrEpJM/99hikM+Nxiyk2NnPqDtPB1iA/IRD6E8eJD
	 o4O574Wpylh6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B179CF65D6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176942423360.6339.11870379976686467175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97acb955b04f4f3a6853acb591afd20532b593d6cf02cb29de0f22eb4823ca5c
Date: Mon, 26 Jan 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769424233
