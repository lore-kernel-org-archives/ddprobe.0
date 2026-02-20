Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB3F243968
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771554894; cv=none; b=QNzoWiaaL4w12vTo69+cAxjd8xfrr0Ms1K2T+wbUns9UIVU/z9LIQH6pbgNE1n3TWpoAvQaw/NxAi6rGrzSfMnxmBuWS45hT/sZa6Vz00FQVjmJFt3D3AGD85Z3Ae2hK9zPA1X/PhXGFPVYFtBYZnOBdh+HQSRbTeu+Ry53dB3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771554894; c=relaxed/simple;
	bh=x8kKDFoOHEkpcfju7KBEDenlih4T61BcP9/cSlewFkY=;
	h=To:Subject:From:Message-Id:Date; b=CzdQja34vowLQL0A0eByVGpIvh+TMYqgzzsfqKb7Z4YtA/VpEfXXH3dNI+n7hXxeq6+zMrWDKzNBvFnfI9NXmSTKpbfmA3MFdzhdW0Xr8Zn4ygVziV3XhRWRJ8poHYUeSVyLuBJeM6TwnAUwiB1dO5v0ymww2tYB7E+irUGVZeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BpON89Nd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BpON89Nd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B559CC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771554893;
	bh=x8kKDFoOHEkpcfju7KBEDenlih4T61BcP9/cSlewFkY=;
	h=To:Subject:From:Date:From;
	b=BpON89NdSCsXlV5CJsOnvUDB0lX/E0LCoMhzveIHm/ULUpOtQBAA/Z9a8FvyRirjL
	 YCo0zh6143Q0n9CSg9D4mTUxkcCFaTrearJ0DXLauIxKJ+LMF/tP2IIQIUEl4Gf5kq
	 PNv4B7B/3ElEckA5n1FCuRCBLgtUAJTk8LlQcxcdAyhUjFMUmRODAS9oKOi50hz7IH
	 gyko9WDVArToVYEgwcfFK2AUWwBSJ8LJp47bzBOYgyi+NTscGpVrXq0xZvJQB21kUQ
	 XVa1iMAin3yYsUyW1hcCf3XUa/979DR++sjY4drnIBYvgzboc7HDfH6biyXQwNF/gF
	 t+60gmav3/HMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCB4C531F8
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177155489359.15463.8460309281341015192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f45290050f61836b34491c09876f2300678c943524b031e104d3e1ad68c5dc49
Date: Fri, 20 Feb 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771554893
