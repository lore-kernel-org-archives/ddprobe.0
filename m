Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE9421A3160
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771072494; cv=none; b=MJGKmSk+MbCpOBRTHtvdYUdmLzsfg6z95R39N4zGSrg1C3jvTnt6YAEUjuiTw/U+xVTXOqjirygb+lwXXxGJGT8aXQFrOstsYSpcJSmwykQodqJS53XfEoLmB5BIHGgTTYJ5EWVhYGW9cASbtAJWf30BwQTaCeuxAlQyTuy77g0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771072494; c=relaxed/simple;
	bh=NHp5kBNu6Aq7oYSntQ+3WdAqutRg9aybVgEjzrKv/AM=;
	h=To:Subject:From:Message-Id:Date; b=MKuNB8gGC3+pX1YR3J+ewegPgHyNqDaBKmQvaRHeD4mgY4XDUCF+7nCdNd3WQeV5pudTpJPr8Vqx2oFuDWsgU30hMxE4hmkf+SM1XInAyVjBfCf6UKWaKyc4a07EGKQjKRS9KfxWb6DeX42WGbSw+yiJnHpAC5baWIVWppuCswk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RoaUMUp2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RoaUMUp2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F2BC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771072493;
	bh=NHp5kBNu6Aq7oYSntQ+3WdAqutRg9aybVgEjzrKv/AM=;
	h=To:Subject:From:Date:From;
	b=RoaUMUp2FFF5ZhGoiKvhxFNHsZqiYUSOUtNeV0i+hyMCDF9Uyqrx6XxbcGGHw3z7+
	 nmxK/xiE7T0nOaQA3R9GjTMdb149GfFoMMASlfMsirjqQv36V9aBr9UiR63z1xl3D2
	 jLXCzXqYN8BBhJnFEkS6Q1giyrOQO+OXFp7SKoOM8M72ExoLVmz5d1hMPNJZkza2ij
	 jZGUXd18l3DXtXfEq+ECbk03u314uQLM/Nf38OIaf5Wum5Irh3bORR4rGGEMrHKkYv
	 h7tGbRMHjTwbJFNJi4Ai7k8FvworMLUwX8BsYyCia3O91TUDlByUANpQatw6P9/IhL
	 RZwetu/jkxb0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9455FEF99FF
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177107249359.15707.15532262835475887288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f51fc393799d93b2bbd989a2da6d918d3f68ed79355af9e1dd150c11ed9b9a8
Date: Sat, 14 Feb 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771072493
