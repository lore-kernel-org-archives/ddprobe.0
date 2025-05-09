Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C351372
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746813594; cv=none; b=eqLtozQhFJFdbxNOEnAMwREpibWJAufLIswccUWJZyv5ap1WYsBRorLGBNxR580loykXPtddufep4E4bUNuvSv8NUtnl5KfL7EdX4ZQJl43ItgTcMtHvBcHd/e7yJRfx1hrgAGlWkkglggGySN4fnSwdO7JB9PUIH573Bt861XU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746813594; c=relaxed/simple;
	bh=e3BbmeXqhj+Z9fBNTx/1ttuPyE150Lw/B1dzHNqouhE=;
	h=To:Subject:From:Message-Id:Date; b=ngX/5CryybBUUDYFe0JNLyiRREe7Mpe+IRoCSw0piyVjMoCSkI7+bfNTLkzLwhwzeK1xklMVi3egpglXigKHQB5zlossASGUzEZoMkkuUmJlNU3XnelDwPCC6PAikiS8r0KUZNVGtk5CxAuwlGrehdn98pUSeAnVWVNU/qwUmuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WZMSICjo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WZMSICjo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4121C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746813593;
	bh=e3BbmeXqhj+Z9fBNTx/1ttuPyE150Lw/B1dzHNqouhE=;
	h=To:Subject:From:Date:From;
	b=WZMSICjoLGQfoNWnOKNxd0LwBGR6vEsBO98X9VK/EPWm//sFWlI+MmLdd7nYCt+ct
	 jVdq5gmjn0Bqx0KdU6zTh2M8zGm0qpEyc5GtlwozoUcDHO1RCEHzLdz7j0fUBWXktV
	 zzGuTeIUXKPuIX68ujV0Bw5J4bBY2PAV9NC1WXieaQ3eq7yIvCEevQkUGLmP5QY9Dq
	 SfnwBmLoaSxr6Sa5XvalNWqyrj1Eqz1pCeApX25KaDQn2+TlBTiiecI/NY3OZeNGTj
	 wtScOiclLJz4/8Efw2xmZTjfUAZTjYz6atGIIAlYmvK4h4w6IYHlosfzXxIVIyLDKY
	 +/aWpTD/zvw+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BC8C3ABC9
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174681359357.13106.6269293278824700674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5040b91b5f314cc44028248f72a6177432c543ab095bc359878a909435fafbea
Date: Fri, 09 May 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746813593
