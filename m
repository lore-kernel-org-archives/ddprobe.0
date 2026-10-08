Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5107D188596
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791418834; cv=none; b=bVdsqch2i3LPYVYnvVLZJORGHCzfJMe+PXoHC6SllPXCm1UGyLuzE/bRbvzbjr7YW1EX9jVvDUzR4/mFC7G0znn5rNCzPyuFshkT3wP/kibYOj1LLHqKE8ELD0EhjJoxMUGCLuuoiCGhTwX7Rpp6o2gbOc2nR36Epdg0ElJF+pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791418834; c=relaxed/simple;
	bh=/IBqGB+QSoiqz3gYCAoTxdPue2H5F+jzeTzDF6X9tNU=;
	h=To:Subject:From:Message-Id:Date; b=kafJad4tRxO8KV1xpt5zSZHccbaJAeK65gO3xmHva7pQ7cv5W2z4CDWqFISKOHtQSRhMFUY5T036q0Q6vo2Cizl7uhN8uVMua5TFt8FU2FJCExLdaKoKupGxK8O6SSNeI52pWEtFDPU9W6xpTXTCG7ClZStdCERIj5s42FQx41I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hWZewcRm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hWZewcRm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE105C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791418833;
	bh=/IBqGB+QSoiqz3gYCAoTxdPue2H5F+jzeTzDF6X9tNU=;
	h=To:Subject:From:Date:From;
	b=hWZewcRm+PAYmExWRE6smK4SnlT9Sc4+ff6ivlGmGfvYNnU5Ob817Xbf+a+JJeDyg
	 XuOidPoPwU+e5IEEfp7dp1ir0bRNre9aCKptB6tG9K+YdL7+X0xtjbQh3WA5lqNoUR
	 OSeuCAnDoPV2xpV7Igd/K87as2ez4Ws9PI1QupQxhlvXlU9P9ZGbgB1f5laV01pRuO
	 YEZhy+xL1wdrKlFlv1DYQH0RYAPQdV2WMOnyeOGz5ESn0fBx0DSVbIkeW4CsUT9xnA
	 buRDpjTGaHU6skPa6zlsd1JCdrV9FzwkFQ9W2zVJhMcnSUCsg8awW0NKyi+rxvXD7C
	 lKUjUC8i8V8FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB253CA6002
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179141883369.1730.6326091825318210586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61dc6a64b9785a02ef45ff6bad3ef2354b6a4e20f5818f0339378f258b51e877
Date: Thu, 08 Oct 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791418833
