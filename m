Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4172DCBF4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 13:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781877394; cv=none; b=mEXi1Urpp9OISw/QAJlDsbS65IpOvJXxPZ+IBRjTHBJNWWsNRWlt9P6FCt05N/YFUQ18D/ngzmVgUYHwu0MTEhjN43CITIEZgDZJpyszW9V/gpABji0kdGPIJFJeDUa8qVlmD06mvSLCylVqdZOeJbus/AxE1uYY6zvX0vRH2xI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781877394; c=relaxed/simple;
	bh=I1IHubBblv8MjfKeEWkXWgWuUs8swEFEPd4Ceyk3lvA=;
	h=To:Subject:From:Message-Id:Date; b=KPz8q2+hc+7gt2OjpqqQejpywbxZSWE0GmD88b8wl6YzdJ7lT+P8UCECsCXin7INlxv0G8iDMwS+yA61Vpzp+jR3BkEcSfOCFjA+X2mSIadHGtlmmw6+cKpL4UTEZkzkFcF/LhBwKfnRXJOvxvpYzvrZ96m5vhhKHYbSZJBTL5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J4r5zScB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J4r5zScB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6E53C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 13:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781877393;
	bh=I1IHubBblv8MjfKeEWkXWgWuUs8swEFEPd4Ceyk3lvA=;
	h=To:Subject:From:Date:From;
	b=J4r5zScBo/OyJ1N9L3WIwk6nJjUeO+NVVn57EMqWTu4KtOUUqgYomNAQZBbzi/I1e
	 3THogBcmP0hr0kv86zvEbKx+RtfDiKG5P1Vs3zuCbD93vqKORnmvWMWskTNarcKfEn
	 3xqRFyn3VgftmnwJ/C9JnKr7XMIMID/FWA9PiCofmgL8WMW2B2XS9J2XfMlFHOitGy
	 o8vU2PDnwtk6SEq8XaFOQOU4ELM2/9EsH83icrDXjvXWLrACq//BuE2l02VjgMRMv6
	 UWmPc2zc7XG8pCUSsiVRznLE53qtIMiIdfcUZea3pZNvJKdMXMD466xspUhf55LXBl
	 YDNnXiARNtEIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5E2CD98F2
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 13:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178187739369.22216.2643168492635067046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b82bbc4da96498164fe76277a3b225d5ac439249802f3c372ea2c34d918021e
Date: Fri, 19 Jun 2026 13:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781877393
