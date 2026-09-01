Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5983347D95F
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788259834; cv=none; b=qNfZocjDyvIiy24K/RguFHf5jWpNKCYlF649Oz94h9RAnm+zoBL9hKbmJ143lfGhDbrFy24OLs+0HMcUmuF3klS08CvA3nUeM+KPP7offnuGc/yXIZFhWaNnBFYcO5t38Il1mTY8TgdEE6pyZZPy4QnZfLnZyrUG1s0xIjcSvUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788259834; c=relaxed/simple;
	bh=6civ3y17z8E6RUZD2BkhTuegC6GuT7JCd2IgrjBQ9VQ=;
	h=To:Subject:From:Message-Id:Date; b=G+c56E47yDh5OHO6KByFKzjjgHjyp9jj7rB9js+tsXnEs8T+BU406dx8g3pUFxG+qy21q5qXGBlvFvSaJHGog0inMpQqPwnTZMeiW45toElz4NabUgKGJ6pacrzsBAaVbspVhsnY5Oq1QKYAwlj1BCr3LktlmQF9jNRr2mt8oBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jeCxyWTJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jeCxyWTJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2193C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788259833;
	bh=6civ3y17z8E6RUZD2BkhTuegC6GuT7JCd2IgrjBQ9VQ=;
	h=To:Subject:From:Date:From;
	b=jeCxyWTJarJgbG0PWDvRvr+KcbYg79GQqUbNSZ8/7DQq2Yek1SVBxznN+/KQewMTy
	 STgUmWek36FpgUloIbLF/S7g+3qP9HPq9Kx3X7/kJFiu0rjECFTDlvSyGbM/eZGNZJ
	 HIH0SXLqdJ21zaPaUt9kDntSy8BfAm7E/mvQgi07MlyQM/b5/6vUDqboO+hFPqj/5j
	 kT4/i5H3+7H75pWvkvot4T6Fj2FhBDD8T90LejIubom+qiiiSuSPmRG98jOgQk8FSP
	 HGCdn4E3K26FFR6n+ZGs7nZcQ3kBGbpQ2N8zCJx+KPVV9+DFP8A7vov2mNiLWR0liJ
	 +jJUjy3CU9EoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6A7C61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178825983369.1399.10739337155693687112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c26c6af5088ab7e6c6f0489e3d5207f44f83aec0ee1fa1a73edc05a190f0a5ab
Date: Tue, 01 Sep 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788259833
