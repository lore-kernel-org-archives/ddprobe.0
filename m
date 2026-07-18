Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4744638837B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 08:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784363914; cv=none; b=nZ54OtMdZsnRXS/xeDk1XBmyMfDrtXO4mENwwYOTVe5pu6lqexUMatLjwJi3A22OHKs1LKi1a66vuLpIgulPR/VC0zyhueBiozmWeoPlOPu31tizoghbnn+kvpp5ewaabHbgilt7k9kyrbPQx2pF5esfGuUpOz0n0OlF/W0/NQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784363914; c=relaxed/simple;
	bh=+FwQkddsqve1MXhXHc2VLnJSLKeyozucgSgK89nIJqU=;
	h=To:Subject:From:Message-Id:Date; b=HSIB/pV8AcaJfmDpkqNR7T/gRMqlAwJtmXmEY8A1o//VhnZucISA2+3sCy6z8Cp9quQ/DVighkLBFQrTbEle1Sr7DJK3bvDScC/oHnwOlLWnRjzuuQTqhdEGVC61C2+TPx6hCz0jCFpZ2hWiCC/GGoKjHPJRK/Tk8UQB6S9uV0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q3fV230+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q3fV230+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF758C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 08:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784363913;
	bh=+FwQkddsqve1MXhXHc2VLnJSLKeyozucgSgK89nIJqU=;
	h=To:Subject:From:Date:From;
	b=q3fV230+r+U3FJPv0TIWF6Y2J2qEFcUdcim8QqHdL+eb2nt15p3UiBXaaDWAPmC7W
	 Fxk5/sYFNGVDbp/pbnUNINYssDy5JxUonNcmKma7R59zmargaVrF5nGQYPKKuKPBBc
	 DfgfVxAjkEmBGjBFE90TT6QK2WUMDegZFHteSFohoHGwKL2rx9eSYohg2kehDNlc4a
	 v1Fhcz0sqIaJQtmz/nF+F1/6r1fR3wjlOXusTVH7tG0Enr/5iLuWArcxcwjw5u/eIe
	 UwgOlBO5kWfScOYt3coDFNdO8XA9lbBR300Y80u0dQEKM8VMvt45+UdxQpO0q3QFna
	 oIKfnZDDVNWig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3F1C4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 08:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178436391370.1884.2640164929493064120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea7a09b01d294128a9be47a69df645fd116846096c1b1e945558db3cfdbc3e6b
Date: Sat, 18 Jul 2026 08:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784363913
