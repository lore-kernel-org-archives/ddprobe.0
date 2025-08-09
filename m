Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2BF222586
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754757594; cv=none; b=r753qq7Xf9Xj5yGcPZ90MinC1tS/HTF/iHWqllWjONk7gLIsTqGjZpSSdTQtnSk7K7OdX6270BGdOXBDqXURTgEPMk0C2qlEYwt1I0RbY/fmzwLubMEO5E90qp85NDMMSwdkRIyO7Df1Y1XtWo22ALw1ExodlrryPeFQ0kXhJgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754757594; c=relaxed/simple;
	bh=qyUZ8MHz+icAjQPkxHWiqLdMxydjJAIXYtUaKk7x03o=;
	h=To:Subject:From:Message-Id:Date; b=iYT/IaDXdW/+cUIw5CuAXjzYcNRjTDslrv98ImI6yPSHcoVDi9SuU6pXVkyz5JxaYkG4cYE7gMKqfHbSwJIrVHjQtVtaZUWyk6ultJPSokm6/ilTo+oRAJsF5QImxFCNRfwiCrHpJI3Y6Lr2APu9hFy5bZKBYdk2zrYBDmzo7x8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IqAoh4dH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IqAoh4dH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EFCC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754757593;
	bh=qyUZ8MHz+icAjQPkxHWiqLdMxydjJAIXYtUaKk7x03o=;
	h=To:Subject:From:Date:From;
	b=IqAoh4dH5UnjoiKZKExJJXiixP0nZaO5duA70RXooUuNDMchmEqU78Lg5YCs1ZttB
	 ZD5j+OxLGBEM6IZTomLmfxBRY1oPalMlOMw2KbOpC9/bXKMdpSudKhYOUmoBaUN4Jm
	 NzRsSal+ujxFjUWnRdUo5YvhHYgt6GPClEOmOUoj8YUIQZ3TfcDBETQdCuFir7D5wk
	 cypAOPPE54sglV87ZHWs14LWqW33JhyFHDqxIvQZV1hm1F17cv1K+IICK0MmdTn96e
	 a9LQyraszekvfHWYkif2rOV57cc6Hmjq+BiVWvtMbq6e4P+ClX+TRJDPbNHCS2FIQ/
	 5BmHUVLuvdQlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92469C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175475759357.10578.2547443436243016895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cab2b1c05a8afb129093aae6f9c06c4d3383a75f3e2d2d437212510a08b32c08
Date: Sat, 09 Aug 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754757593
