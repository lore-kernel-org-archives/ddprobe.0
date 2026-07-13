Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347CB1DE8AE
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 10:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783939114; cv=none; b=ENbIrGQLSD7sTVNalpFCZlGGaBqK9xMcexIB51JAuVvocxIh1EHpsrpTGh1YleGmu0vEhLzebGD1/zUJf2saPkgFpPAnPP32Yov88evPSvkL6D93IYPcthUPS5zI7OU9Z1gphy6Rgzkfmd/bk0nISJHjBbD3bPXoRZhZKV1zb0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783939114; c=relaxed/simple;
	bh=Ol18++fOVHU13/d1NXwAZjO7Ilj3XANxisXOrdEMmF0=;
	h=To:Subject:From:Message-Id:Date; b=aHOs7EvUM5IGZuYssG7MHEFxq5W0QXf8MBPnsxhOJLkvou7GXEtAkH14x6DlddEK3BSeVJWJfhK/KRaOKpq9wTvWRo4rsarveQimSlDcQPjNh8oMo/ymVgg3f5jBE5UDfCMv41T8rDqPIKh4nNaJjI3GXPmoZJ7gndD4sdc3Egg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R8R3WBLR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R8R3WBLR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC09EC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 10:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783939113;
	bh=Ol18++fOVHU13/d1NXwAZjO7Ilj3XANxisXOrdEMmF0=;
	h=To:Subject:From:Date:From;
	b=R8R3WBLRBWPSKFuJxqRekUV0D4hDj+C2//JCE2dt0FrIpGqiUUvo34mPnf/MvHIFv
	 /gEcCjoqj+S+21YWa0otD5n0N+TSQAtiFI/UDE4nsDGdXKjWCsGX+UFqaBWYqTXUte
	 yQl+ELxbBnkVsZhketpxRqXweL6TP1/M1JS1Dhb98QugqGJceIsIaHGK22ITHXeJ4c
	 d5FX5Bu4os6yMImJyKb/OPRAghWUT1EQQrFnN/T0CHchkue+w/XXw0qK6OOdFJ6vKp
	 E2+EtJ549UHsFHC0WVzVJSXMpGzVBULLFIVCHl8sdGMvkY9B3/pQ2wpLpGvpUoHRoO
	 MlncPnpoa/jBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92F7C44501
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 10:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178393911368.16765.10128258175629839569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa106437c2ffd3e5814f7e041788564c62f60f27eb1b8840b5efc854a28bd9e2
Date: Mon, 13 Jul 2026 10:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783939113
