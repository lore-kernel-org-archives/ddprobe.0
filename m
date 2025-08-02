Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39502143748
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754108995; cv=none; b=ak7ZpBQRc4yRBHwvIMHzLvHGLVDJH0hDGgvvmemRB+ecz5am3bqrcP5riDFZtgf3Ob9CFvdS6M+Mgcxv3dck23ciMbVDjf9Org+Bn4p+r2FjI/kQHId5cqVcOa7tl2nSATx6HLMkdUGRaNaCIMn+GDtaSTgCCzuD8mac2OqdLOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754108995; c=relaxed/simple;
	bh=2P15XTJPw27rerE4dGfSQQTY8BjwNdYhEhQ6kkfH7Io=;
	h=To:Subject:From:Message-Id:Date; b=pT64HtBV4AgWBSPKUaT6owyVIkkBvGkR1QJW1T6lEYj26x1I5iHr6jkoudycbWh2TNtjvdaKXM1Yk4qEc2DAd2bl5FOKBudYE9T28LETYhy3v8CcRtkTCKULR0UOj9fgVn4OCngjm6WgAp1GrD4u/eRaEql8U6NPTqqaNYpxPJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kcZgG2ng; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kcZgG2ng"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8054C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754108993;
	bh=2P15XTJPw27rerE4dGfSQQTY8BjwNdYhEhQ6kkfH7Io=;
	h=To:Subject:From:Date:From;
	b=kcZgG2ngpLQH+yoQwoA2qTrLYbXg+8pqxD0h4KPNILdrpqxAj5eS1+YNEd2acCYoh
	 UYmrPcT4mSbJO/LvTj3iw6axl8b2mPd0r3J6OCCLZHqpUiXF0/Nc3BrlsYostoJiJY
	 o/u1Ev8lLJAhT2Ahpn7OcqBbdFSZPJHf2n/bozH+xfB3OzQIEmYFDWz1oY6oHCycsP
	 dUyx/xYcqeIkTKaCPrwzDPFcDq065lodfWoE+iWMm1y7nZI67KRVUa9zqh3ql7y+9A
	 l2mwHfSZ18/7Ibhsl7GSjyUFCXvT0d/3nvWblFAcIA+E/GUPwTVhgePeRG/Su2I3gO
	 TyGhdCOhDK88g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93269C87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175410899359.5657.7778432506200657631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e49ab1e289db7bbca990712e5fb239ee0f8b4af34ea2a61b7dac9e3c5535495a
Date: Sat, 02 Aug 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754108993
