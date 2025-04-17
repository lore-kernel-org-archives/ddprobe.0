Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B550232787
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744886995; cv=none; b=fHkW6lvpQRLyljbBi29KB+D/EFG2zdPNpD2WrX4dZ1z9eGXgsQU+LemjNcPRGXhCPxrPU2k80SarvHDuv8i8G33pWh7a71ICBvgrhOfk9kIK7kMi30KtCHD0FUeJOsBmWGS8trroJfFYIaUyqLLSDFF1N+T6Vb6/9Za4usvYro0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744886995; c=relaxed/simple;
	bh=gcfua3+ltolA4Lt/gm4Wt0k8GQCHrvoZC1doFl78pvc=;
	h=To:Subject:From:Message-Id:Date; b=Rznj1X5nFM3rzD/4iyoeH9oYdeJY5XoGALtf54ttRy6pYzCvMdloff4WkY8rthQIM8i+wPpGS70Brg3bVrCAJMl17V7yBUM0EXo+WYoZcLXU4qNJaFqvWbTSLx8bguvjcgUcr1wPlM/H4vjT5wng6ENf9UkeZiZ4fOMjJG2OKm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fbvdQvBk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fbvdQvBk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0688C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744886993;
	bh=gcfua3+ltolA4Lt/gm4Wt0k8GQCHrvoZC1doFl78pvc=;
	h=To:Subject:From:Date:From;
	b=fbvdQvBkdjKpvOpC/gxugGvYIKsNdGzpoce1jrVw7zeitcPtuVGBgSjVvztuNvY89
	 UFfin3aBfcEEIknFBxHkEhCSAksccZQnm8/g6kciGcIG2Tx+eG/DNCXWB1rvnMmoTY
	 G7LT0gA92BxGB4yQenut+UIfHQdQ1LKYPtzKHnKbkw6CIOBecO7GTSUTMJKSG94W6k
	 4VgN71CsUMoqteCt/XCAWBPorLTARckGVBNRdEP/vcLjztqYXwbjBgryeSoLmCCSPv
	 FcyRUIGHjLfPwkF6KHUGpOu6+leE5bX5+4wMrk4iWZtUD6DjaZg0yhf5nQVPyBsJfm
	 sTXNegH8EzHBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EB1AC369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174488699364.11590.184267642616146880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 617c3c8ed6e0d1b66e613e1f7b0b4abe506ebd148369c7aef7ce242716aa8ead
Date: Thu, 17 Apr 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744886993
