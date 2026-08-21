Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0EB3367287
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787308235; cv=none; b=aOzpZRZ/FRV6GplfOAa+NWd58e5zZAF068gnJbMNQAvn6FnfDYiWxoLwVyMTz8l/veAFG830H0IwLPp+TFAXszFc8Ez8PN3sj/Txbs9iN4Y16srtX40e/yh+ukVBcN/wQim63SZJ5MhjEBcnh5WzChY+c4NIeA9GKDJY26DFx+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787308235; c=relaxed/simple;
	bh=jhjFAHPKF5yxUSkEi9G/goB9sBvRdeIh7CRCHbFFrec=;
	h=To:Subject:From:Message-Id:Date; b=sKc1olcur59x0YMiDWGoZRNLWEOKdbTFMv6oxSJL/hO8lRrlu/t3IfREzGCChMGH9+ftfq+hAr5SGw+gmdI0sPw5wb66afjOh/SmsPzLlF3hHQMwlfhYK3MxRrjI7EgVgXhfu/PH/KGpGBC03Hnsx/Q70Iza1aK7SVS6hfx1YXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IzD/xErV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IzD/xErV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED3DBC19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787308234;
	bh=jhjFAHPKF5yxUSkEi9G/goB9sBvRdeIh7CRCHbFFrec=;
	h=To:Subject:From:Date:From;
	b=IzD/xErV5NVMkcuPZScwOGEhl+ZtYeie1Z/C1bIkWvQTu3eRQDeaGCHM80kyiwH7Z
	 BLv9A3AstfcPbME4cbMXEolcSI4F9r3Io0i7HmfmspulofbIINF1gsGFqY0Lk/BLZo
	 Tu1u9sfxU5PMfL52rUkKgFlFDRI0ivIx+W9x0Ri2LIIlNeXtbvUs1S0fL47Tebz+iw
	 77xQKpjZwI8p4GtkWhAGkKuNYSkypUKlkWjXmhEJm/aecMdoivApeE6NcEcajpc+N5
	 zmcKUIra2biR6hCFzLsK2Kn4N9bbKuTQingiVTiWZPUH2Mnq9pozHvGJ20vGVjsYeV
	 T23+g6vJiV4Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBBD8C5DF7D
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178730823375.1309.8528611460656768182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8c21123e3ce42a512902fa26c11106988620a4411f5e16bbb5fc8a30d5b5464
Date: Fri, 21 Aug 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787308233
