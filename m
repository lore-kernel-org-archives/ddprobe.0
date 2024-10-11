Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1399E20ADF4
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728655554; cv=none; b=g/jp1RVwvTyE7Tqz+7crIOGiMoxC5hdI4EVRzlyY6Oto3mnPTlhuVJVO64FF5LfQBjqZiRTaANQ3spx/TMd8sCQqII6x0HXXcbjKPHg6moElE/sd9eorOAonhEwcuPiGEdXIZNL/uH1R0UT71LVNayfd8rX+eSR/ahKElrgNSu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728655554; c=relaxed/simple;
	bh=mf4r+RBTy0OHPIF35euRZR0TqJNd73AyPj0UT8YiCIk=;
	h=To:Subject:From:Message-Id:Date; b=cbs8ZnoffyLlRRz4UqbTZdbnPEMOhwKTjUqDEzzC/2F0OA79vkW75RzGDABhbvRpqvevckr1p2f3wA4Gl6o0El6tZiRtAW74CsFvpBhJa00ddAfaCe+UQ7GMMydVLg2kMXmkviQ26foRBSZk8j7Wvs8kH1Gr0m4hHcljxWnAl8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NDczIEsT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NDczIEsT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D87C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728655553;
	bh=mf4r+RBTy0OHPIF35euRZR0TqJNd73AyPj0UT8YiCIk=;
	h=To:Subject:From:Date:From;
	b=NDczIEsTrF4uV061pimUrqA9Ce9vxT0I8WWqleSoaXZD6u6Yv06fTMp7FG+/sUPKY
	 eNKZkKone8+/SLg0i6oQ8zI41hzvG+u0BT8WgE9yLg6rGDSOuytLy2I6oZ/NZMdO+R
	 +0gDoCCXDsahJcjPT76iukqrURVhJLkh4EoK2Ejo4Mdz4j9mxUJ/a3CcqILlAl7ef+
	 feb07Rm9g9KpGT7PivCgYRxAWFLXdPzfWkC4gHKoB1xxXiAPmimGWoy/gHE5oemeaz
	 xR9pfqtlpmsKeSrtARNQ88rFYbwYPppt8DHvFcEK1no6Rb/C3tsf7gm6zopGC3+F1w
	 S71aR5gqo1dcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B0DD0D791
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172865555359.23074.10190892541190917476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a1d8d3fefa6c64124dab089143733e448f5e950ca950cd7d41e2847455c7fdd
Date: Fri, 11 Oct 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728655553
