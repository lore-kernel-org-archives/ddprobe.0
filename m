Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260BF1C831A
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758797994; cv=none; b=cpH6tSM8GZpOlguAw3y3qeXPn+STx8CkOt4kbS/aBgPU44gVdUdYY5/TTiYhnbeTwiAua/nuWVNhCSPqsj6kBp01gECpjjTgxYPXlGIgdw98szybyRHiu4IuhDh0xl5EUxg/e6tM8/uR9xByqmr832L51go9YJBCYjFMlvrUnf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758797994; c=relaxed/simple;
	bh=lHA98JmYlcFnCL+PyptmjFPOWYzRbo5oVAPqCUEkY7I=;
	h=To:Subject:From:Message-Id:Date; b=QaJ7egIvHpxBOf5gmtALsbdP71iOgQCK7CbhyGhQ1EXRf0JsqbXzwC2VRXMuzMpN7toJntLX6VSULI9Xg1mdrkU1lfaXiPuaGHtI1CCLumJnwRbxaCYJXKpnGdPBFTqumpV/Xs4rE5pD4N2ENfGBoPIzlXoHU22mX+EPhaGnlho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m8hOH/7D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m8hOH/7D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CCBC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758797993;
	bh=lHA98JmYlcFnCL+PyptmjFPOWYzRbo5oVAPqCUEkY7I=;
	h=To:Subject:From:Date:From;
	b=m8hOH/7DEkAM1tVuhUzDuSCHC01/eFpPYY9AI9ZNxEp1bQNnqWpHBHYiNV85ICxF5
	 vkKrELkXhsB6Bj90j8WrQnSQQTz+zk1nF8bXPq2GX26LX7hdZDDe8pu+ghA4dNzbGJ
	 Y5wxtekzp52hi1QW/FeAzN3j1nj1+jq71I4D9tXHNB6XMFkutiImP7xXIIA65A5roU
	 AjPv9Vf8FDtl8OXq69BVcDt1H7u1xtd6ZtR/sB1FqdLfSiBl5NUW3jdyVF+4zsDdcx
	 BqfNOouKwKdzTAupZGGGoq1UC3z1JABVuMXBhPMJ1sreWGoGdM91KFvL2oNUr34qFl
	 DUiCjXcxo+yBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B62CAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175879799357.29886.6706505494686404234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa43d83edd0ceb4ab5abd39936e4085e296d6f36cc2b8c10f09fbf60691b3324
Date: Thu, 25 Sep 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758797993
