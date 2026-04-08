Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D30824A3
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 06:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775628334; cv=none; b=H/GyMoaaTFvvE3bdV32MdhnEYZTos/n6ClL9OtV84aNiHscC7PNJsDsuJl+v0tY/Ivuc7/TnaW28QO+/aenSzKCZjs0Pt0xI8/qGvEs3CEYMqbH1m7tP5uJgjcShFseHtjUOcoBdkijxzIZGD81Dc75yv2omojK4xNt96T503TQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775628334; c=relaxed/simple;
	bh=t6zekdomsO9UEwOAnUFqFaidcUapch0m6vcGxRPkmLk=;
	h=To:Subject:From:Message-Id:Date; b=XGVg0UYc2NHp6oGkvguf9kyU8ViDPVMGPXpkjiDnH+AXo99QNXJW0uFOuYPR8F9u3bA31r3Mt82lxtqb9oBC2B3vJZ1ogv6J8DFuYVsbw7aA/GCq3g6OHBU/L+ojSDxbkTofhvSCVibf4d0Y2h8IV+DsNhsNgwgmbiKywkQsBUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aD9FpNOW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aD9FpNOW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD31CC19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 06:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775628333;
	bh=t6zekdomsO9UEwOAnUFqFaidcUapch0m6vcGxRPkmLk=;
	h=To:Subject:From:Date:From;
	b=aD9FpNOW27u3Lm9scR3QnZevR8sSsrbT9ULlZkxYJO1+YeRSTZ4Gc0OIO9ObiK1HA
	 prKgnO6gk6eI5ohSr3k/Z3ulgysoWF1aVLLdwoN5cXag+VvZUMINNwoolOyRdOyBES
	 Pbi0LemPrCx5ogh4El8Lb5THdUdXX0RzElIPawFIZRz+HsSEMhFQ6x4OB9jLLIobbq
	 XnLqNfEnuipp4W1HQ/LY1zCvaVeNt7HzR2HDXX5Cn5zpgXC0+//JTKzv/eLFvSLrhD
	 XTpKXi4tXFjfNeVnwdOAFBbKDvfLwlv2OGDXxxT1CQN7PPmeIAMMBI+1Z3xNoTz1j3
	 9OAQ06MjDrNyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7875FD5F7E
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 06:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177562833373.23917.3179804279823002256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a9d647902b9cc656c1ece601e056e23333960a19258fb5907f7f3a1aa80b80d
Date: Wed, 08 Apr 2026 06:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775628333
