Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE46482EB
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731471355; cv=none; b=TAp8G3eHq15kSI3DrL2loWPWWtq6c2bQ2IInY/wgXW5V+Bw6SGzj133VtB7YKlReYsnawYunIRKtPQ4tJuvTUVK5w7/3JgkQBxtAZRy04RbMlhaSuwVQVvvQPUF6UT4Q7zaK17m9VYVPkN9US40Z7YNLGYR0S1nAQ6pFqBjn1XY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731471355; c=relaxed/simple;
	bh=puzJer2kY28uks0cbXJX73nsboX4dTB3UkUMfzDPYMI=;
	h=To:Subject:From:Message-Id:Date; b=ACY3vvGX9bAC4hZMP3m6cf07XBRN3vJP8CEqi50V0orQUhOP7/QSB2ZvXjTWQwq62YNXQnSNliuPAoVe7ofPORtj68THhmya5UKKYqgPK7ioRv5Tm4+zj+7AD2GGhvzVrsUQlzPNW+wVZ4VMmhAtbIe0c1DrH6J2R2ukqsZ2LQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jmd1ItD7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jmd1ItD7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A421DC4CECF
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731471353;
	bh=puzJer2kY28uks0cbXJX73nsboX4dTB3UkUMfzDPYMI=;
	h=To:Subject:From:Date:From;
	b=jmd1ItD7EkfKnNigjHW1B5TMRJW6h4XxDjRHGB/0QYvQx7tbF84VVyL+wY17b+0MJ
	 876pWkX7AcMmx9QDFJm0ZkVjMnXvFbG0OjcRs5tmywnuKn9qrZNNP8Zg1sDEgJu6qH
	 0UQAclnwSzxULHZyiqQCKxkxc0izHMLowIpHAA26OcIfxYnL+H9BXhDPQQ64nPbc23
	 V4OFualdzPDAqNSrC1LcDdE2nfJeqli+p8lOjPOe9UubJgOsFfM3CutzKdHu33eSCI
	 VqipAgS/tNsJCtYrq/meXdniphVZI5DDMqgMuWEBkSbZlfsYX2FKRJuzLLWHhV7RX0
	 AtesAztmqC4Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965F1D42B9E
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173147135360.5300.16984826210157769378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5807c3fd47bac51884b1eb391d822f4e0867c64cacc4299413a36f29d41c1f3
Date: Wed, 13 Nov 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731471353
