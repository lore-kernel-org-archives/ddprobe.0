Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1DB14A86
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708249697; cv=none; b=k8rJi8fE4RbOwypvmeh+XMUcRxnAOMW5g+2KL6wb93SkqUsviO7pTCh7hjpi0iANifaj1++d2SuGI4VA3c0T99I7slg72Kk2fyHGidgipzE4aKQDGG941XTAMkVlhJgfDRwc5FbEqNHmdgDxQAblzCPvEuOKP0mWNxoXJQyNjDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708249697; c=relaxed/simple;
	bh=B0FGoOTGqJBhV2wdqwUmjqqdPf+uXyXnNiMgl/HKUrs=;
	h=To:Subject:From:Message-Id:Date; b=pr3SPnLC5bd80eJ9DDZSN9to7dWGubiebXFI8m7q+lUWv2UnOdREjYRv+M5s+tNXXis1LE4Ivbm0UydpsnLLlJ95RdVrYXVfZxriMpwTDS6TIHMyZhtrTehQ1GH1oI6lq4PDSDAxtNHQMCaTaZtWWYmAIn1OKfXhvbba2UtR+8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T60oWK/j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T60oWK/j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A9D0C433C7
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708249696;
	bh=B0FGoOTGqJBhV2wdqwUmjqqdPf+uXyXnNiMgl/HKUrs=;
	h=To:Subject:From:Date:From;
	b=T60oWK/jagezbsiqVsNQvpm/Os+fV2dqQ3YgVB+cWyAuwcg9MtQl3EepoS1Le+NIO
	 GYa8h07cUpDiaUnb1E0GO1wQwkMyIQqB4IPiZcN1kodT7bthKBovxwu9rVMF849jA6
	 mVdn0wviU5Tg0NKS727VjXVQid7NG6zPJ1juOWjUmQVAX4BXRTfkKcUz0SfJSn0eOK
	 Kk0kP2YSZrVJPgCU52NYVv4zSh9G4kGYJ4TuZzyRO7gQg/EYhb44p8vv7MlsQtNMF+
	 V28t+L1Idit9AN9BktGHb70zAYco7AUKGU7W9dP6Qsb0oeG5y2S5GYpHKsLEjujMiK
	 0O3iRpqiidtMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C69AC4829E
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170824969639.7734.17436153861171716035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be5a2bba8bb68fefd0d8f91b550044f5f21a92c1e16d7833131669b9138e6624
Date: Sun, 18 Feb 2024 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708249696
