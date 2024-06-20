Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7534F6F2F1
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 22:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718922624; cv=none; b=h2EQHahFMEHNtURT01gQoP8POoJmCYaoPYrP+12hIA+XlRQpwnYu8X8AYXYz19SmXFa9WkZ+kGQ7aMSQq6NGWkfqEpTTNtYeNH6i8UWd/83WoRoxto03MxAZS5f64f2PVeRaB7MC8xZ/ejmhM82Hw9teSzj5UM5/n7swJVgzVq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718922624; c=relaxed/simple;
	bh=tAU2C7LIrCwmRKQM5nJf9sgv/GKmeH0iUmhRy1Mt36Y=;
	h=To:Subject:From:Message-Id:Date; b=cwPYSwXkCrPunUopvyG9hE9aNtsklReUXoHJhe0I7ad6Nx3GVrJXJGQZ7sXU6oBFQ0suuR/vEXOTESJTofjx1H8zLESap6sGE3fT5z7RX2bb8a+F/6Env4RJuyo1rNz4ovBOK8Pc9X1iGI1xTrQc+TIa2XjyVX9VLnedOBfM1po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nv7zuop6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nv7zuop6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9CCBC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 22:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718922622;
	bh=tAU2C7LIrCwmRKQM5nJf9sgv/GKmeH0iUmhRy1Mt36Y=;
	h=To:Subject:From:Date:From;
	b=nv7zuop6hZ7xqfQfLY84kZFUSG3c4tDb8clJBpxFrOdOI0auJO0oyTZkon8v4az/a
	 HaGizXIOYh+EEgQCSXQRYMdR1N+gmqgn9XAoVKDSjMhC5WO2UMvNF1rxScMLjFNFmy
	 xQUv3fLVI2zGm6tB/XbxLhJMk3QSyMHDe2LAIutXKVD6EM5rUpq8JPl6DbHvfGj8dO
	 FhizlVQSP+RGPB+Yb7qB1TyWl1Wr2yNeYDNZHCoXo1f0WPBcSb2himORjdCCqM9F7n
	 Jb+aPieOICoxlqV5n2bwL6xqdhvybJVR/XLrvDSzavSzfdaqXV7LA9TfUvWDsB1kZ8
	 apEX9ITD7o5Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC31AC27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 22:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171892262282.14334.11978501252213749378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac84fb23539c86375cbe3b9df9f8ff9dd0667efbee64a6dcc9de84d8c40d2a2d
Date: Thu, 20 Jun 2024 22:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718922622
