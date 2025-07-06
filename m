Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CCED3595C
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751804394; cv=none; b=Qt8PLpaBpc3f+7Rmyh/g6PsQGvF5/POxuhpiyt9UN8hg0sSo/LwiTUey79yAM8L+Njq+31d3quN9w983nVbw67YXjnaZvvUfF8TARc/Z7MnLouhqSnuJ1I0/AAE+15A3YbQDbE2iTtuZO9+XJj1aoZMclQqr/FkYsprSSpygrZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751804394; c=relaxed/simple;
	bh=L9qGucZCenHWyHcWLM8A5Fg3/pRdT0ZUfE7IbJyHV2o=;
	h=To:Subject:From:Message-Id:Date; b=IBZHEeBnKdi8bzarRV9th0DDHJcHsm6Wfc1q831kh5VnpL3qWnIooqTlWpmkUi9Dx0QlKMVJ/1+EyZcZd+aWpeJ82sb4WZQHQ3Mlal3tpyihnxk7/WNxNn/ixcDfaCliKYHkAjRgRS47XJKyybdA+zS73IuF7tf6pwZysAf91O0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rqe27L2n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rqe27L2n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C6DC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751804393;
	bh=L9qGucZCenHWyHcWLM8A5Fg3/pRdT0ZUfE7IbJyHV2o=;
	h=To:Subject:From:Date:From;
	b=Rqe27L2nVRSq/uPBO/kE+PIw9FA0sZbreo4ZOgIpTTirOvAXKpuq/LpvuQt/oxjBq
	 rNtBx1RmmQwJkI6oqD8J7SrsSd2W6KYRR0cVaYy0DmnlHToBdtqe7Sr5/7RyIOmPPP
	 hpbkqamH0qlVs/+GsjxG7OMMv0Fa7aPuWxzsJ3ZKxWJXMKirwNLu9oQwLPY7VOLH/j
	 OG/yBYt2CoKjLE4U4M2EkTil4MiMzjDl4tUT35OWuqA5aBw+TYshrCywZV2jL+gO9J
	 fOjacnFCbQEyLLC7cSiVgoxYn2djpj81LiT85ntJY9LUjDtJ+qdjYRJiCid7iYwzG+
	 zRUAXJiYPkcTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FFFC83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175180439357.11660.12319100749660909133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 148205fc10fbc30b04c261731a99513ab0f44ba57e6caac8243a23eb8f2fd696
Date: Sun, 06 Jul 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751804393
