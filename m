Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3726A2B9AD
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726727154; cv=none; b=I37GAqMQkea8GwEYQrfrCDm1ckcCIj6uZ75CkrgkGLfhahk/qN/E+jL/K5swpYVJgxh48wPLTQNyJASwHYhSLLvmo8C2o8rYaePsJXIGqMhkYx9XQzhgUn88D+he1UnS9XVx0G++e3OXFQJO1enkrQ8fJ8vjcSbc/1tenRyTHV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726727154; c=relaxed/simple;
	bh=D5Cmr384rc2SMpAK4a49efaLdkZHJDn1Hsgm9sD8Al8=;
	h=To:Subject:From:Message-Id:Date; b=qld01w5qv75xTytiEIxBQ+29KeQX4QYD1cqKZcwfm/dfoMeXPWubAvr+9w5xT594zJXzaJX80lZ0LFv/8ahONov1/aEJE44R2JK2+D+GBExrZAon7Z7Sr+GFamuzf2UBw5+lIRgPB5guWlHsz3SDP/TU/RKT4v1shEDzPHfzjbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pI2Ra380; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pI2Ra380"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2425C4CEC6
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726727153;
	bh=D5Cmr384rc2SMpAK4a49efaLdkZHJDn1Hsgm9sD8Al8=;
	h=To:Subject:From:Date:From;
	b=pI2Ra380aCS5bJc9XCWMgjS0P0z6JaO9Lpp6Pr6Xuk/ugk1/y7oEtM/OseMNaOp9B
	 q4BxNjR/zYfFB2IOvUXdUStPjAKNdPKaWWc9Gkk6LzhyY54/ei0/xE4c1yvWkJ4E/X
	 6paOo4Bm/BWr2MIhPdg0jFLwxGuXlXXHm+IeFh8kKArdhH4TLf3pKPPCI39n5wQXP2
	 J1YOBrvUQJrcNen9/UhBFapxE+SiZrFynalnPMfR6956Pvqi8n0NahhHMg0lcMKIfx
	 1ZapOE1pJ22ZyZLSFow3evyLSMONZNKS28XBg6ewoWNYy/2ph2kiyFB7p41Nno1nGK
	 iOdv6UR1GGZnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CCACE8D4C
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172672715359.3022.14604214506711163314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 673c3fa07c557e2809a10e9fe3eebd1286bf732208f79dcccdae699d83685f05
Date: Thu, 19 Sep 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726727153
