Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345C13FB1B
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760274594; cv=none; b=tEiYuwE4fp9/98r6Try/eK7lqSlmi7ncMEFAcX81rApKtjU7Yr3W+NJTNs3gHlms/wF+MkXKPWzCfTXGX/3xbQz5gZEyTbKDzTgwN0+XJPB9oLjNgfMVcRwD9vwOz0YtrgPIyI2a8qAYSKI6loa38GefQNJG3hvZbvFZVIllDcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760274594; c=relaxed/simple;
	bh=gRqMlD+OIIph25s3cQ0zhss0OZC8ITu2h7QRqHVnWBo=;
	h=To:Subject:From:Message-Id:Date; b=Dtu6v0M0LHgyQMt7Oe+LBKM55naIq7TERB7CWTMJ8fz3oE2k/3Rae9WXtuBSlO1tMCaUE6/qRttvNlUAX0/VKHxlyQ3CXe09sL8fIWbdvlVBchQaomFWiOWEe8BMq5NjJpXyDM9zj538Q3NcW1zX1ozVEyqZ5yFsEb8WuGqq9Lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vGGqX67T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vGGqX67T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BC2C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760274593;
	bh=gRqMlD+OIIph25s3cQ0zhss0OZC8ITu2h7QRqHVnWBo=;
	h=To:Subject:From:Date:From;
	b=vGGqX67TEOmlIX1mBq0MSalDdQO8RV/e3pjo/47OAKqQL0qV0ogrOU9+zsuKn47tr
	 v2JDAhkbZVnhUE0LSjx4LGVnjhPLmQe3XKLj9IaJK8aDlSK4CNbE5u1sJuXdH8HyeL
	 cqnj7T9S/2rpVzUswQLGgzwjyh7/9YTZ5vF9ACg1feTcb0jXyrTLg6n7aefDvxTUGI
	 vF1FHg2l0HGRXx6JiPuaUpmGJGyFWS0PdkTSUiOr1mtf6uN/bJvXaA2USieGmeNC2A
	 oQvhw9mRoG76T1YT7/35U0qw1fMpj2FIZ2GANmEQl9XR51kpNG8LReLeT17CXxNZTA
	 wy6Qp4WgN9yjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3ACCCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176027459357.24152.14121511692205613548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9123e4d4bcbb7edbaaf13601de7f291a000c9f7070fdd2771e23a198f3811809
Date: Sun, 12 Oct 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760274593
