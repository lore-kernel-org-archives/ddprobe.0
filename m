Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D172633EB09
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771970093; cv=none; b=J35C8dkcNnjVvBeDVs+29HYXHaX6S015oP9USpO1bMRyvWeUyTGMMkSN4q6CP9IM99Etskvq3Rpjov82RENRMJmBOp4UQtHUqqIcZX+5MAqTp8GIFURYw7lqqf5+iiOhRTe1zabzOlhgI9Ufed04hBlt/Xy5PevFnK4k5VZY/z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771970093; c=relaxed/simple;
	bh=8Nu6OCXr6bWirBa/gC9r59BNIZcGNXqMzXFFfNa6Tdg=;
	h=To:Subject:From:Message-Id:Date; b=qeKaZQLtOpsQ0YentW3HvYBDh9M1UHR6Lc5SNFlv2vv5OCbmeY2WqZ2+mjUcM/I9gdwZsX1jKZV6HrTc7UqIJSDW/jnavsh85/nMRnS8PZDIG0oRDJBN/CxYQaw1BJOQWnHGnDAe1uiR1wHMrNe62axvLcRHu5B0hEX+uEMOWFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gmUerT7d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gmUerT7d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4681C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771970093;
	bh=8Nu6OCXr6bWirBa/gC9r59BNIZcGNXqMzXFFfNa6Tdg=;
	h=To:Subject:From:Date:From;
	b=gmUerT7dGkgfNgAbML6WjWckaOlAKnFQAu2l7wXZpDc+gEaTUDnD+9sx2R/IfosWT
	 u3W31M1hZVphJlrFWwUlibxueyVGcGu8GkJ/z37OhQ75EXfLaWVRb/RgUT6sxQr536
	 BaWqbTFSFSf+07sH4EOVAgIVXdLftfBp2+wQ+RjIjjh84x/1KS6Zg2YdCnT1Bex3WE
	 vMsCjhNnvCYhMjaWxAvNBsV9Tn13VoLJndJ69UTG38asLJgajkTaJd18ZbPbPa0Bpr
	 H1vdr6uWICUtPaS+4G2KMUe3dmu6Nrci7kql9BS5U0W600mLwfi944FwGuWSDzpe93
	 yR5kN4AnQMPcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9048DF4BB8E
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177197009358.14986.7254672525617595657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a215535d98eb92be27d4657feee19e7d488a36cb052419ebae9e0288802188e
Date: Tue, 24 Feb 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771970093
