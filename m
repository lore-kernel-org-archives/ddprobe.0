Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C556389118
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789372834; cv=none; b=UIUeGhf+6Ws9sStbcOWh8qhNFDl7uRwAOBrLhIcEyqyif/EcEa2aQvcrQ3q9CaevbOXhg+lBYINuJFqQyrTnKeY3eTBJYwhT3rwRmGl79n1yaNn9LDxWMee/3O4jp53pSz6ITCnUNwGugiI/XATBEflEAl9zdKiFh00P7vO7Kws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789372834; c=relaxed/simple;
	bh=0VGPWhWzd7gT+HDOkG4x1vkCj148g1gC3jUnTGm/Two=;
	h=To:Subject:From:Message-Id:Date; b=nOwoSppODYuftIAHyhJaQdwKIvvMYLofKQojEl3tEI0hjv+M7K0OnzAEC8PzDsvyexJwU53lDBR0TBtTmXO2vNyjvJXWjXERYNBzCLAW4e79mKRvgHHX7NVDq/zTmcVOZ8b8IZ2T1hao8zKzvMCTPqobcW3hrXComomFfcYaoSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NXtdLkri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NXtdLkri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDAA4C2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789372833;
	bh=0VGPWhWzd7gT+HDOkG4x1vkCj148g1gC3jUnTGm/Two=;
	h=To:Subject:From:Date:From;
	b=NXtdLkridDK16TqR2MiYF2ou6n104tPi03kJp27Pc65aO5JI43i9hFZ2taSbCUpmR
	 UYT0wE7zg2Bd7RZ2UDhGu8vcTrotBX+WN85U3LwBm2mJ8HFmCAnfdRBM3zCcONX0FC
	 aVYliKbie2969QUGaWy3fMMwN1OPpAhxE326TrEkNK4inHVwN6WLPCiv3Qlfc67ULT
	 wmuMLGY5NNju5eAUWixhNGWdg+p2YLyxeJ/4lwO0QHyyLnWP5mBQwzxHA8ozSNkxJ2
	 sv4ECeY58u81iufC+Z0gmonoq+5yv1/av0FhBnesf1r0HlGv99pWYx9SDStkkK+bgE
	 5uda7n2CZPE3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99FDC88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178937283368.5383.12210302135942940467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34b840057c1643398f11d6e677e5bff51043b274600b4d727213473367996b2f
Date: Mon, 14 Sep 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789372833
