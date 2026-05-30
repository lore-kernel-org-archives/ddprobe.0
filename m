Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39781239E7E
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 10:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780137214; cv=none; b=jf5NhQVo6QTeDQu6a3tR29BG0xvci4SVA0W9N6mAE5I4yYiBvGam2fOTTIWQryvRn6ucGS9sltCHj0IxHFOrCkXLBJN14QYoXVEcawhDHh/8MkJ5DkzsbfVyYEDI1hRe2hUgA80uHpzSmDQ6Wun0cxjr6czS5m/HecmmUadQLFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780137214; c=relaxed/simple;
	bh=tVdPrOucVhUrQvEg8Imib6+kByIXh/P2MqaO7X8jr6I=;
	h=To:Subject:From:Message-Id:Date; b=MyauHJoFz0dZc3jaVBhqWYcsL79n5u5C/bKj+6Gm7R8HKUQbvV52r0WLPZ6IkjUG9wm59fW1NtFRB6Oy5SnV9DLyh2ZU5zILSa+/IoHyy8gVpgnM9dNUZVR4mrkb5Iu4SuQxC917uJSuwGjVj+eltwAY2Cy3s1YHJWtIxlOhKRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DGM4NNHr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DGM4NNHr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3716C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 10:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780137213;
	bh=tVdPrOucVhUrQvEg8Imib6+kByIXh/P2MqaO7X8jr6I=;
	h=To:Subject:From:Date:From;
	b=DGM4NNHrWPd6lEzlQvlqD7UzwuNQU4qlGAP6EziC/ggBe9SQ1lqCXJ3mpo8JwcHie
	 ozu4SfztRu2W2PBvC5IRDti0Cy0l3jxzKClS6FJrmS/UV4ynhnAinii2tXCAyskplE
	 ka/Agvwrrb6JQw/+okAOAJOE9Fr8qEZOnjmAd++hFedngBIV+Ro5Q7+gIiHiapyWnT
	 h7s2G6as7WXIzRBOhwy60QN4A2uydNhrhUoKfbkkxbrhVYFW1xzIjIauIQmz/I8oxR
	 POJmVd8TloClDbZnNTPvkIWrBY4i66cZ6PQkcVVHULxWUmhbhA5K1MISIYJmeUXhzM
	 IX8k4lNY6y9Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8279CD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 10:33:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178013721368.13373.17418948094239693478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9bbfe5ae0b5079439e890b773bd88c50c45a9dc7036c258e8045a47834b9a24
Date: Sat, 30 May 2026 10:33:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780137213
