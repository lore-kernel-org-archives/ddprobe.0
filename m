Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3001516B399
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724076954; cv=none; b=KZ7XBTrIuk36yTdpDFQ+iJAj3rh+eRxmeklzVGfka31jKavHYuxSPnpDe+UxplwY6U9KDuJLmodPYvkxDuhZLIQvM7jE4aGFtpmrmMtq1wxJE+BxoulFgW4S6AZaflF4Hctnqkin71yWnwkLI1FMkZ6XH8NKDdkibAtq0mIvmd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724076954; c=relaxed/simple;
	bh=+cG3VWOvY6rH+NdAUzJKyJYKeWk0s0DQ0UqSSPhaAGs=;
	h=To:Subject:From:Message-Id:Date; b=KpEugWlqpKnK4QxBRWBd1anj8o9Ymh/2O61RLysnpJVy3yl0l4AbwLSKrZDQvAVbrDr1SrI/WwysTJjxH38fEJQE+QNOkAQPJWa9j4gKTrGfT53KnQvE/2NT2fBZOModiei2J26qELa72ZsJXepcQFw4ugLyGVJt4qzThOfabZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJ1cdOIj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJ1cdOIj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CC4C4AF0E
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724076953;
	bh=+cG3VWOvY6rH+NdAUzJKyJYKeWk0s0DQ0UqSSPhaAGs=;
	h=To:Subject:From:Date:From;
	b=AJ1cdOIjpqIw19yZMP63JbEvb/U4eMUcj9v+mIV8QYPzeVCdjLrYC7C10DQoI3XB3
	 LOUnGuSWaKWY7JpR3diUNQ7J/IIj/u3GC4yzo3Z7oqZ3z2FId6pxjsA93CKshVUcXJ
	 1z6moyhd4i2jlTl14o0he8rmawBCe4x5KScdTTNjpuCoIWuY256GOFV7kUyGhwa7MG
	 bfreaejHlJj5b7jKVAzdlz6m9qZDErREuAiRS0oNGL9wbQUUMajy1Z+CjhdAdD0tii
	 R+M4s980aYB/SGP94yHKgmMGMt56jAk2U7hXQdW5CurxwKMkA9c4iRPeZwXbil7wUP
	 1LYqAo8WO6hJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A88C5320E
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172407695359.32393.1973904519417345674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 736cb1abfc62315fbdb3399d7d58ae47832c539bab8607e83aeb2fdb4852b3ba
Date: Mon, 19 Aug 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724076953
