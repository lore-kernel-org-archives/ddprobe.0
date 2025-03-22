Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4267D9443
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742667594; cv=none; b=VSF8o0ydS4zGshB8qxd5h2Kf8bBteOsfWI3IiHZ2b/J8+QHl/NiQ1aTQjyI6W/+t2ugfrDchIh07oSDBuQceRtLCTIqzPypyN58KQqbI4ZyZelSOgNp3DebwNVxRQm0d9XyzTRxu2u/0xZSpk8G0aiwFpfWqoBO9iiNu+2zVRN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742667594; c=relaxed/simple;
	bh=EKrU5RBxctsw6JJ+J6BynEdWFlodxKXkimku+/lrWmw=;
	h=To:Subject:From:Message-Id:Date; b=Zz5hoph8NfJraK95VQA9lVbrdn0v69E7xXK9QvrNCLVuDHNLjimE/5pQfuFbAqu/l7aGN+rikULJg4Hb88OPhZFHaL0EycWujq18ba5NEn6q6gyax6n/GC4Xdzx3iKrjAq8YwVwxZp4rnSkHTwk+trqrd8hTCA+mqvpIhb0U4tY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fb09LcMG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fb09LcMG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B21A5C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742667593;
	bh=EKrU5RBxctsw6JJ+J6BynEdWFlodxKXkimku+/lrWmw=;
	h=To:Subject:From:Date:From;
	b=fb09LcMGK6aWHoRwjq2qAjVZS5phJ8SRbClFob6FGDGG6ab6A6NZtQYuncIdy7lHU
	 Kb0392zSHOFxVwedXgkLSFkOXpCqpQua2fFu39oUGqHFrtMPLoZrksnOPC3crkQMw1
	 ZyZ99TwR0I22AozgqNJb0IfkxQxkccQk2oL4KsQefzNWW+oBNi4mpy5jdFey1zgHkI
	 ZNlkHCUOWBYQ7QsL2ic3ZiDncgLCZhZOdF8COpRJEfpdTeIp0Vmf6npE4seTtTTe1s
	 HyHEh3+98XjpyKOTL7I5DXlRvVmqTVWBYP5fqPHJ/1To+3qrurEQ9O/LC6A3wr3H/y
	 jBfNi7esYuaoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF99C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174266759359.15817.8494488502258208499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de4b9940530b2dc3a50d609b0ed70fec06e2e57455deb04df351aa1f651755bd
Date: Sat, 22 Mar 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742667593
