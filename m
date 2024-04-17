Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25819129E7C
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 08:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713343763; cv=none; b=nWAv/kPOW3dIn8/6N1fsUQeO7dr3pmqOEy1QiXdnMJRvfBk7mI+16NP8+JyVU20Uqvwdarh34mutNWuv5mho3IKgkMIZ1CcrHbGGciOQW57zmUG7/fuoyM440t8GiAkzFH7r/qr0aAA72ZrGkBY+nN5j1DedB68gd1A4eAk05wE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713343763; c=relaxed/simple;
	bh=sSN/Xz0U3Ss0trfSZFZXWW95MZJ9v2xPUw1ikgEWU+I=;
	h=To:Subject:From:Message-Id:Date; b=HbdHkTXjhmT+EzmXWCFORqzqdWqjyk18vsSpaPesILoEocDHJQjDN9SXuAilWbaEYF6fcQsRckvoAtDcrVICTIF/6WbrthzTuKw9E6EIwCxdXaqkuC/Ej9sERZbvS/DgLM66hUj+3VPLTNgh+99tW0nhfDp2eiUVvpsKwZXviUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jgY1ODjV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jgY1ODjV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA6A1C32783
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 08:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713343762;
	bh=sSN/Xz0U3Ss0trfSZFZXWW95MZJ9v2xPUw1ikgEWU+I=;
	h=To:Subject:From:Date:From;
	b=jgY1ODjVjYSVB03/Vc1ogih47xNrD6WCuZvokiBF2ZFGaLOvZrBdit2+r9ZAglH+f
	 7XPIvVzbp09M9h9I1s/BE36ZGK2g1Z1En1Zv2ufPAR42G23dcvCcV2D4XAAcD7DrlY
	 nRNABGMeorHwp0Wg5ZPIP+JoY3nZEKCXJwCyXiGbjKt+N/kJVFpUDYUjFVkfNcSjoA
	 6GiJSL7sg2ivFL0VQ6tI+YXnO589GBiXeqv3JVa6jKYfPOy/9Oqg3ZYTBCadpyV9sZ
	 Wdm75m7PwwiaLK6Tgt1NP7QJLiCML05IX05cNrBLe6f0429zZCezBEW0pLj2G42bo3
	 7zt6YKdiLeCEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D03A2C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 08:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171334376284.14394.15422527511544433954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c6c2ec5854ef5133e8a95652c6a1f435b9e6b54607fa6a207f778c0d8d7bb16
Date: Wed, 17 Apr 2024 08:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713343762
