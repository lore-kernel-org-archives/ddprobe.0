Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437971ACEDC
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747435195; cv=none; b=ceVMH7moJJmFJaSea9RZBGmfZ/vF6XB37Trl5WPtvo2Tpup5Nyoz7afPQAn9QT63HWcGMqH9Ewvg34EgqhxGYQuDFWRGxcJD0G1L8lQzQ7E4f1HtKhLeHZ0dErOq8B9Dp+LOHdLjGP6mVDpZ2oDM7VX2bEvrdP5XPjbR0MOeFxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747435195; c=relaxed/simple;
	bh=C70xm+5nSVc9sVp00sYufTrbZwOZbG4iMgnAhANhQmI=;
	h=To:Subject:From:Message-Id:Date; b=eYAOxb4Wf05PL/tGXGNrPM1gyog22LZDv4b3MLg6v9QxyzXENZztBguB102+PBKgRw88/OQ3tJCLkhzYZ2QfmALcdrpQbBubWgAerev6wjWj+CqnUPPYYQw9AQugW9863ilBkpeUWMHi5JvOoekXNZ9AD7DeNSox72XtCLvkadg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gkNVWxop; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gkNVWxop"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0866C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747435193;
	bh=C70xm+5nSVc9sVp00sYufTrbZwOZbG4iMgnAhANhQmI=;
	h=To:Subject:From:Date:From;
	b=gkNVWxopd0ylVhHkhBuFGX/a12YRqtlTIVxY7VZnTtNCfg7QC3jWzw4wzO5e5HqMQ
	 GYSNypJS4p90D9RE9JSs57tHBkNA7C3pyc7HmIioWPxskpcljnVb3P6+MWF4Eo+3eJ
	 /HquDcOFuWbgfPG1eHbmPjQXyJwvaIPywata6p2fT/z54msprtfFNMVLj2EqQRww5c
	 foAeTLsyqSgL+0K/Zc0D2WqDy2/FYakTuwUIs4aSvUo6nSlm7l2A95cfgEM/MM5gJi
	 TXevkHK4hScnWQi2u68A4zEtLLVMj+rnWU/zuFhLW4yXBFbV8byVWFE0qCO5lA31qe
	 2Swq8B7eW1X/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E889C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174743519357.4189.2904360018697369089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3fbb9b2cf402d44daf34eaa6442dccfb624e616f432de268c9f5f5f9241c509
Date: Fri, 16 May 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747435193
