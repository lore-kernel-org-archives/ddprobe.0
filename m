Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C37A812
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722824754; cv=none; b=sxlE9O+jMD+Vvf4YRwdOv+J190ebkHdaZTNOJWJwxNkuaZ9+tQ05drEdhKw5Vcas8ZmDzM9/CTThF0Ik8YJmCnHeIU6fI6HuMmHie+hGF+zTScSKkJWVb7DR83KQmKKI/z91uGAw59nmEDds8O47bQN73smn22xaBCwebbw6SR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722824754; c=relaxed/simple;
	bh=k5/2wfgVigys6EJdH0S07QwkL5SqoPZt6r38rYuIb8g=;
	h=To:Subject:From:Message-Id:Date; b=d0GOHp+sNE8CcyasFMzRMkqeIWjGzo9uLacc60X8tLLM0HKfpqW7e+kS7+AWwDow0BBC0BtK2/afxrLi8QBY0arWpgP2WJQOk4ZIZdmtd+w219ZVDxk5UPM1vJIuZfCd1dh/S0N34YaVIQoIJ6mYx/WLxMGHsusqIjWjMJOKDvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ap2GIAIr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ap2GIAIr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A708DC32786
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722824753;
	bh=k5/2wfgVigys6EJdH0S07QwkL5SqoPZt6r38rYuIb8g=;
	h=To:Subject:From:Date:From;
	b=Ap2GIAIras786JK1BWuDZYzhxZ0SVc0i/1HM3LFdr1ynHjtTfc1gQ/cEM3+yw090q
	 zLTS4qHPnZTNftmbR6DKmuE83/x++w3aD5q5MCkEZt5v2WpUn+es3AorGTztIjQxha
	 WAUzsWcQzcdC751r2uPAd1NBiHKJwsyvAtGvf1sPTBHd8mzMzmKchN+f0kpDbUr4RZ
	 sbjNgfPu9lOzMuburQmRRt3ocF7Nk74S2a3b8NJO7xwPuQzOTvjTKdvqbY68eHQFQg
	 ZZ4e6xkNcUmaeldJEzraLCLP0vtnhu/EGdnnF+VlXoZs6yh0rgxADeTk6IqrKXlqb9
	 WjZ8Sy1nhfwHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A9EC3DA7F
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172282475358.12233.6567970774925053440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f934ca9748db7c5a1f4b1b8b0bb365adaf5b075fb24dad649d16bf2b904a7d0a
Date: Mon, 05 Aug 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722824753
