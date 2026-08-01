Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D12145B11
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785616234; cv=none; b=Mdazbj6ZL0PElZt1y2Zl3/2mMVXtPSBNJOwNINW+GBGh/MqQ9JKWBhd3JcWYAgyeT6ipuyd38q5+m3hD5ZhDopJlaj6ktS1u1b0UireZ8ZEkoqIcrSEP9oVYHO7zrsoPfn2sAWqj1aU8PtrjLo5RK5dALSJa8LQz4mAutdA7+Gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785616234; c=relaxed/simple;
	bh=/axBr5eHQVUkg1ZS51UFxn1uH/EGM4JMOmAPrxQpPWs=;
	h=To:Subject:From:Message-Id:Date; b=hLZ2lIP9CxCKXs/V6/fkoZVEzJbx9u1ALhkuZeAILK0X/dGgJ+pPTgK5k+oHwoXR0scj4mOlcfepmh0IZK2T0f4JVDb/F19TF6s10IhS0GEYsJBtRBaVxhPIanIdUlzifwf6GKBe6719F78xiUJMvducuhRF3lp2lhccHlOZvP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZI1sp54; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZI1sp54"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D054BC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785616233;
	bh=/axBr5eHQVUkg1ZS51UFxn1uH/EGM4JMOmAPrxQpPWs=;
	h=To:Subject:From:Date:From;
	b=ZZI1sp54zfskX+WjOZWjR9Se0du9zRIvhpTenqCgdjZGHAiOnAu4nc4i3gIlVxP01
	 BTulblyAVp9HzhcGiHaE6EFVvp7ws3WJZUz637HI5WC0DInCWuYI70TAfMaVtPC4S4
	 2nadrqt9E69FXW5iBtMMZZLQpS+dS9dJT7ZVLLHxbbsAbq1RGRfPGdgFxEB46jAqEq
	 PtEX4R6zcOfnjHUA0yV2zjG9SM3r8t2EXZC6xT1RZMkqOCUn1F2CDO0H4zGlb9JBXM
	 E55SWjtNN1mIRMZFxj9voJBwUG7ogaZ5AfSxg4zFNLNjyZnpX1jlQ/IJdmC8J0zR7l
	 bd7kc6DpVzLGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB4BC5516F
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178561623368.13406.553439775202633490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0a52c4a8c27954ffcdad741e8caa1622cc9d9997204594bfee013cc8fe2de4e
Date: Sat, 01 Aug 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785616233
