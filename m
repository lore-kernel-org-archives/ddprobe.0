Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2701EAD5A
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733047554; cv=none; b=NbLMhNdl9n0UYQaKPZq+c3YifswCzZX/5SZ6c9CWon/8uHYKF8sBeDv4+itdHsUVrs6y69Ug5rDoOa21Tst3QW+SQJ4urduSdeqPXUCZB+PT/RgMZjGFcBsD9TLWX3egTHn/yT/ip+f4K0agH1p/m4EAHKBt7k3s1H7yoSzhURE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733047554; c=relaxed/simple;
	bh=7Rt+QHZ+eVtdz9UNltkHF2A/RBcc5uNtwv3zZ4y6934=;
	h=To:Subject:From:Message-Id:Date; b=nbVbfrYa7QrNtjFMDXQOIXDgp+UllNwt5wfQERY10/kVr+wppAoTqQ+ocdXXwoNe9y50fsovkYZAsYI6XsjTt9h8xozUIQlGvRtACiSWc4tR7puirb1VPMLAt7BnwSxEzkjSIJzu9D94dn5IVbJ7SLdgtUacfWHHl/LPookeqXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pWvBp+2X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pWvBp+2X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC21C4CEDA
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733047553;
	bh=7Rt+QHZ+eVtdz9UNltkHF2A/RBcc5uNtwv3zZ4y6934=;
	h=To:Subject:From:Date:From;
	b=pWvBp+2XFp+MBv6Z1gEP41J5lDC9krI1ZMLUFxIdBPg6os7AlJn8NEngbZgc80GKQ
	 7IFU1z+Y/xxt5fftyIYAgkHt3TZLPyZM7TC+9PEMfz6PVKVj9SUHoTEU41robaswf+
	 YE1LkvWF4KfOmUeiAzkkBxPd62uGlVEmXfOdAWt6n+duIL9kPlTmhbJiew/NBizlLQ
	 6cNn/CanrumaJTGcdFA64c8O4ciqFNGVLArU7P5OyPamiWV8e5Fad2RsyXm5pdvb0i
	 za1S/Vyr1S3p4MzwPLhZ8YDdc2akGcoONkAegHGkSTPV752XU+DrUZlUt70nvVptot
	 He3klLswYNfUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C59D7360C
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173304755358.10845.9014567008550522728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72b2a5f0f353e8e6fff7c6afc83e9daef2d525afe3ff505f9e553555e815631b
Date: Sun, 01 Dec 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733047553
