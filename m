Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B3582E7F0A
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 14:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781792794; cv=none; b=AfKSFehqqs5N9Yr2g0lb1pvzQcSyqeqov+ujODv60m415zipQ6+h2IfOu6ZxoorZDEIyrpf84kVn7V3E1DW1TEEC7XmIrkrvQ3YJvr4eTcDchh6iL56LsjqL9V//QAiWy0lAfHylt77625NIIlmJB7fLFQ3F2Pxh8y8HbarCUEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781792794; c=relaxed/simple;
	bh=tOLTMSxGArA81dyn6PLMraN+JM4fYoe11vBF0lMen2k=;
	h=To:Subject:From:Message-Id:Date; b=Qjpnq4dOIuyooPybOfnpkLzvJZOACJznlzmxZowFo2gLwWXY38dgdYS5U+8uiR70rEdd0+rUdnEpu+bPbOIvFOcF05RWCC3CUUfmQ5Y6VGCi6ZBjD802LoxwGI2+uvzfe8zrpOpUYAG3ZmD3QcEERyDwApk5KfWT2IpF9f5k6YE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NwlJodqC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NwlJodqC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA790C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 14:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781792793;
	bh=tOLTMSxGArA81dyn6PLMraN+JM4fYoe11vBF0lMen2k=;
	h=To:Subject:From:Date:From;
	b=NwlJodqCeuvwnjBd5SYpWnkgxttmmD9pXT1YbON0iOaHVJH7y5PIBP+46GDnbBx3R
	 O7sR/Vnz9xuQ+oClBRuMl/owFDkGWwW0yoYbdkkOqTbZNvpiZUVzqUtD5GZd8OK0sz
	 SznxLvNHghlkN39kT9gLz4jurtOrF7PotGXuvRKRz+1Bgissz5avc/6CwSMoGGjG+Y
	 kz07I0EYLE2jeIMRdIAEflXh/KqSYgt+Hqv+0/lxT6pGzgmlSCznkrjXwzMRH5mnq7
	 0dT/6enrAvBE/iO8LIpW8cjEpfQPdog35chZr5A0EgrOMNHSByB3nZM0g2FcDTKQph
	 yGb8UQjmjRFVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C08CD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 14:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178179279371.23576.11458313270893361884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af6daab6bf2664ade34bb43f11e66928e676b0e6f03a4e0a96de46a991a23067
Date: Thu, 18 Jun 2026 14:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781792793
