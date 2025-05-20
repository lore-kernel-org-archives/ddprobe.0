Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516BE25CC75
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747724394; cv=none; b=cs60o9FyCBFB09GoDQ6tTwzE2f32d3Wz1S7QGu8/xBRd9u5TmHiVmtlgh5YODDqFvOe9TpLNO1lI/oQXq9njqmwKD4sWUPDhGMHrTcgpbQY3JQvJgoPoaXTJQilrn7ONw3J1rnTzWCGwJdccHvhP8oyeMLzyIyWFPEANjmXQ+60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747724394; c=relaxed/simple;
	bh=VRNa22pIczsv8zXqW0EMGWhpbX6TXQRfqkJtYK78Yd0=;
	h=To:Subject:From:Message-Id:Date; b=cXe3WHrwhstKjd3QTAWTQnr7UB9Cm0+9XXMsbjHtmiSlZYvlm3HvSd1ErLFc3vC28A5/NJmMiGu1PsuMqdz3GsIXo2MjQI1l2x3OSoJQakO8DMr83JwRNtlwb9q41c33UiVNLAPBdzXN2RIaMIDZLE5PobIPfkekTVbJEWR+DZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jXJCkjBP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jXJCkjBP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AFBC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747724393;
	bh=VRNa22pIczsv8zXqW0EMGWhpbX6TXQRfqkJtYK78Yd0=;
	h=To:Subject:From:Date:From;
	b=jXJCkjBPcBT/6vrI2i2jZvuCPxv9lMUWENk8ZbrRQLIem56T8JFknB/65fchWYFpA
	 6OHh7rVr6eE7OgTq/kfGo9Zm7WmMhjnh0APTCMwbXyqLkWr3K0nOU2VshhEJSC03TK
	 Oo2okm8B4HTee5tThRCpITTiT38uUD6iynVyZbdNcjeZVIAQr/aPCKHsVD1L+zTrSE
	 pF6oeEyInAq2vVwRaXfSzETOv/Z1rhWKU3oT8je7+LEp7t4Er0BRFzpTi3v7+ue/YY
	 Gl6f5I+X5s/sUpGSKTjgANl+tCrfoEH+EjoQXwJMTZ/Smy6XrJ1zM+EOQLtj9156L7
	 0DgvGNzc1uNzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91076C3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174772439357.12517.16553943553580291067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5e872fd686a4c170c1c984302feee5e59c633fcc949b42e3d8011facc27632d
Date: Tue, 20 May 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747724393
