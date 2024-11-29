Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A606647
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732841754; cv=none; b=Bq1W7DsCmXAtw8Eb3GqfNZUrhlYVuGZ0w6GJKWvICZoJg5+7txZo6zYCsEObIhlz+ts90pHEIsYlAqgWhRT0EVuAcPXH46rQbRzuj0GUbxlvT2FoaLntnuAjro0R0SFnxI5KwJUgb9zEvjqn4Ou4bJK5GoKyIHGT1O9ESv90BmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732841754; c=relaxed/simple;
	bh=ZUkRJ59DNBp88qUTZGHD7Trmydscs3MNf0SkjT24Nag=;
	h=To:Subject:From:Message-Id:Date; b=IWDOW2DnP8UL3/hXrhQfADFf/swlaF0ORtOsaF5/NVJzum2cC5mrMV6lOA/Mmr4HHyYd99Bj6L5z47ucKBNzLz6fiV2BDL5kSKfbtMgiHxm7uvIY6uWK3CL/QxemLuUfcZlxwaU0i2q7BhK+NJRGW5hFc6xKEGWQOOjU4mLfoyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oHrGGUg1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oHrGGUg1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2441C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732841753;
	bh=ZUkRJ59DNBp88qUTZGHD7Trmydscs3MNf0SkjT24Nag=;
	h=To:Subject:From:Date:From;
	b=oHrGGUg1FJVEw5bd3hWFvdF7v8rMfMJOvje4+sPzUWi/X6MmeSwRx9bPP4dvf5oBy
	 3AjA0kt1rTTSOiS3KpqalRVAMgTw7yGpamj932O93ncKeTScA364M7/zXTJMkTFWwR
	 xlebszonJ7T231add63FMUQ82bU9/6xAwI9IZ7a/mWa1m4wdkm0xqYzRuARfvZg+N4
	 XtKwhlkRVMLFFew3ixpWc6K+7UuOzTqo6UvQSSqik/Qw9CQpQruityI1VyDRA7X0Gr
	 ONsnbvhmur9FLAtgqT7r24+90qDAKMc1xlS+GXjfTUX0tfK2GPP4TKcUTVoCsxfla1
	 KprBWzWUfEhqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3968D70E02
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173284175366.869.11055653170160988996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 862c4605da6e69e996232b756a9b774b040126ff5a74ca284fc9588b60e32964
Date: Fri, 29 Nov 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732841753
