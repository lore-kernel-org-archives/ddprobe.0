Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F5987478
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788750634; cv=none; b=UYisIFdUUj6qX6lZZDNX0sR7qi6lKuHBNDKxpxUiPYJfpIpBt07awPwr4JRmGWqZxYGcCJDfm3PVFitj/XlWHnSlC3BZkF87pXUoZ2gVO1632ScnTAkIyS7llZkkx9mE/hYXFX/yHejNZ4B/tY48FXFbjJUeUnW03aHagAVrvVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788750634; c=relaxed/simple;
	bh=JK4L/pIkvYwCzjDrmgnjgV2Zr048Rnnh0LcawIk1kU0=;
	h=To:Subject:From:Message-Id:Date; b=naRb3e0BSsosFWs+a2/wD6+tSahX1P5hFL6plE4jyhSCqHcL7kHX1BqHwYaVCWc0MF4WPmprhTatKqrN2tbUjNlHT+ik2gQbZNeYBbRLNtDyxA7lKEZBES+PHalCYqCAWwzjKT9qv8GOBeHManhM+m9GiLeJpF2gyDUJAptLrwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZerQD8Qj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZerQD8Qj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3751C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788750633;
	bh=JK4L/pIkvYwCzjDrmgnjgV2Zr048Rnnh0LcawIk1kU0=;
	h=To:Subject:From:Date:From;
	b=ZerQD8QjOo+sHECbceb5qHkOIAfxcRjcevTsBvBudnXQUbhbAqpC3BCNJhYJaW9K2
	 CBSsZBEc36Up7IqUNWpMQRhh/AYDxecg0PLRtf57woDhyAYphmzj95QzZGDE0AQSVi
	 MVIm/1eecFaM5T+p0gRAFuBMJvIsUjP6AQqXR6NE8riuPsKPjn/Hwu5i3Pkst3//pH
	 6yPkTgzRT2QeKM2kD++DatILYVg/CIA3xBv5SdzjADdP3sl1PuFMMyWWkcEsHeEPpf
	 3iR3GaCQJDroab06RweI0ENPfurUGaL3e23vmgjpJMjezGyxE5EDvDbA9DPh7mk1dz
	 rVH6NUFYeVVoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B16E4C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178875063371.15495.8698053669624216772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 356e8cadd607ad2a3d25db03f4e0683a99a8aee949044f8bab262bd0e0fcc069
Date: Mon, 07 Sep 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788750633
