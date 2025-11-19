Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24422372ACD
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 20:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763584314; cv=none; b=im9skEISmGcC/T2pMZWh5j71V1qNf8LO33S+ELXzY9bVEjTFqXuXMvkELcN14dGarDdQPu86D2vpf3uK37Kc8+4ONzcGGrG4lU+aqW66LKpJ6Ff6e1fInMsCu5FoQnC0bARNIYruJv5ym7MHFTnA6f/uwprNiIIF7YHxAfp8k+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763584314; c=relaxed/simple;
	bh=T8jX8av7qlH1hH563m7abYmD8+PRIuPsPicj0RwQJcs=;
	h=To:Subject:From:Message-Id:Date; b=POBisi5Q/0hwHm3xbRqTvg0hBcN63CAIjU5wkEcAybYlIxVgYpAGai+f+Ll0wv1I3Y5A3qX9DxzXkTiJo+GT0iFTW79jbebsfonh1iZx76r3neql0h8bj/qih3SjuXCn7q59WorPhy0DewyhGPxpl6rjjcKXDgpIYLWWklO6G/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sMQjiEX5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sMQjiEX5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9EAC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 20:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763584313;
	bh=T8jX8av7qlH1hH563m7abYmD8+PRIuPsPicj0RwQJcs=;
	h=To:Subject:From:Date:From;
	b=sMQjiEX5rDK2j5oyLQwoe6te/kQ6Ny6YRs7Veb2xRkzhAtDgg2m7f6U2e7Tv4D8Qz
	 31WDyp/cv5elP45UDyREZtKj6fXu5J4Fan5Uu0Ktv51jSB0eq31AvHF5PQz5613tQ2
	 Tl3o0ur7+KCxcM9/VkhPowJmW3Ny7sPdqIOA3FU2rifwtWTUTjhVU+I2bNKhi7sXl3
	 gPnraSICt9IXDubvzJpZliaiqYYPI9a5AM4kXUOSP1iJCn0GKFPnoUmgi2MzzFt0DU
	 GxGGJDlCOHJnV0h26UG4uQbDM5W2d3RuAEiVtpa8fV9nZh6PYvy8FEaWhSvMTF4XBP
	 fW30yyaGZRCqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9648FCF58E8
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 20:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176358431360.20031.16467731508970934344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8a5e9f0980b536eccfc3a3e469dd2e0b22c17781abf9ebd7be1370005aa395a
Date: Wed, 19 Nov 2025 20:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763584313
