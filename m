Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4504CF510
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 19:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721073323; cv=none; b=lL+rf1d7vVHXgfvwtxCYZfLO7pf2EnBCBtH9W5HwAgS1G+rViWJPwfG9emjqMvB0wujr+W5bWdKdAZu3xHjZp30sfc/I3UfTUmrsK3wZO1gMXz7d/rGL/AJDlAmjnHSub4i4LG5sKTh76nhpbYGyylLh0VaAF7Im3AraKsEvDY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721073323; c=relaxed/simple;
	bh=sM6uGOP+/1SIBJ0qoDnK38YFmE3p58eW8totmQFmuu8=;
	h=To:Subject:From:Message-Id:Date; b=DrGCqhG6vTJh6tSIvwuyTKqry23/ZJBxn+9NCXU4uix28u4mMhLCBgGJDqwVw+XzNb0JfQoWjOk6lzVdMximNHV12wAenerz9ZgEcQPOZag7k/k9psjyi1ZvBhGdbN2dBAN+xL/yOXFyftFWbo5Pf98tR8WMnagnLVTNkucJnrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QK031BRN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QK031BRN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C9CC4AF0A
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 19:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721073322;
	bh=sM6uGOP+/1SIBJ0qoDnK38YFmE3p58eW8totmQFmuu8=;
	h=To:Subject:From:Date:From;
	b=QK031BRN+Rz/hplalr9UgfFgyL5ATqVnLrnhfZf6YbQ/UfR+ulk02pELxLdQe3m9E
	 5ZSC3yu6jruuz+tIK9WVXqzBS+RrKCZyLK/3q6NDGUSQZbTLmN+C9Q3UNEeqCQpmWY
	 EBOm+BfRHZMA3oCvA6JT7ReaOG3tke6Iw7yan3LhFGbRO8iTaWKwRNReJ4FPVLIxJH
	 ca1yCxq5tsHq654s5tcxXA/es0vuT8jm+g0yJ0eQNZwjeTtP6qKY0MrF9G3JSbKrVT
	 4gCoTWz5vIG+fhgLZHES1jX85DSbaMUILFc1B2YQTcuRwMSO2sw5ih6RFpH08Y5YqL
	 tRtBura8uWmHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C27C3C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 19:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172107332278.18564.18108062243961736215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 634cb9e29569f4b4dc9c0dc7f3b31da1386ccbf778ca8d4e64f633ce0be23c9d
Date: Mon, 15 Jul 2024 19:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721073322
