Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EED32989B7
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771410894; cv=none; b=P1qy0z0Tsd6QSs6vkBiG0PbVXLv5SRHufLy01w8L4icyTECbbo5DmNs3ytUS1CL+05aibVQO/wqGGT+cClgJJuNrUlquU6uHJK1+4i+zbhcmczv/r+czkpXSwH/wBQk9jwRGn1OWa4vL+7Vdsu1SCnkRWgiTxmIBBhzkdpNW9vI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771410894; c=relaxed/simple;
	bh=n3hgfEoz9A6ufYWK3GJ1lzcj24qoOO0/k7K/Lm3HMyk=;
	h=To:Subject:From:Message-Id:Date; b=gkLZxV2bUVuwC5rsbSYAoRDVkzvXoNnQ+bWLcyY53d8zyf4S9pm1UUguHcAx7eFRMGNVEjx1+75WyPG06T8eT2VMYi2kXlcq9XxgUoi7hNjPMA/yBtvpGtJKeU9LHoFZ7w0dWxD0z+faZi7LFgEbkNT8dTcdXzI2AE75LvOSibQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RsTFMxRY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RsTFMxRY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E9BC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771410893;
	bh=n3hgfEoz9A6ufYWK3GJ1lzcj24qoOO0/k7K/Lm3HMyk=;
	h=To:Subject:From:Date:From;
	b=RsTFMxRYbY5It3Ckokn47avpgoRYQwtATJEbMzVZq7tJCC9OwBcs6xSaJpb6a3hDS
	 LsUJxnmkuioQgY5FVZxGc98svdbN1UrKMZvOujwFUOM9AMvQ//D3mdRb5+nBAVtk9b
	 uGu65Gu0UqoSx/7B/N7EqXzDlmE6u8j5LlxC4H1lmbw7x7F9YbRTOytQdkqwnc66ye
	 7on0sU4cXTmmstzUbx1i1MJaTBUKUUUdS5gLrd1JXoAlurcm8Tds3FA9CKEOGP/+Vj
	 4Gkfec/LTNL9BSdPStsg7uspCG6pM4Sq4GN6Ko0O0diqKxv1Ls7QrnILolhRqCLBjd
	 lFrqUn8v5oWBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90504E9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177141089358.24884.114977679874622006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1af6bfd098d4dbbfec29ed6e6a9eeee42091d8112f725b8483f45fa761a6bf21
Date: Wed, 18 Feb 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771410893
