Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297F91CF7DE
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730286954; cv=none; b=NHGp3TdhZGheQ7AEBhXgreOXmQDmmejEx567vEw5mDbXvyK6Uk4wA0RXF09fVBxxdlNqXe/rFm1WvoG2QPKFK0JxPQIMixkjTfy1PvK1SDuRc5HCzPnM9W7/fFfkuFsL7ahbcmYvItyNAawAJb5Tmu3GpFeJOWkVlgTmSqQzgYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730286954; c=relaxed/simple;
	bh=usQlVA6gNHDwN6eaKN+b+lVCEIBaixZACPtpVLxrRcE=;
	h=To:Subject:From:Message-Id:Date; b=HvfVtLMLehzuhWfhUfkNfHG2D7Rf0IWDqE/gICneHDxPtLBx02J84LOwmp5//GmybU9j9HLWesx/jDJdqaM8msd5Qe2atlGTWxAvLQP4YQJ/MG9+kjCqRmZuJCwfynoawV9ei03blSUMfiGpJuKwXh0Ph2cBG40xJlp3FJvoXis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KOyULs9b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KOyULs9b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBEAC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730286953;
	bh=usQlVA6gNHDwN6eaKN+b+lVCEIBaixZACPtpVLxrRcE=;
	h=To:Subject:From:Date:From;
	b=KOyULs9bpHpQ6VcLjT5UJyX5qcPh8ZggjB+UJI7aHAOiLUS/n90lwm26BnP+2W2P0
	 F4FYx68h24O3GfabSg5O/9e84FwzroIRRAMEPe2mI0G27i95dhyU4W7NbWQ9KMsyFF
	 bZnHUujP04LQc29u/69aplGdCGbZ5yud0ZYqTnf+CXsdNjlOHWj2/61eC9THDtJ9Y7
	 RJlqagb23Odkjox+nav9VncC1M4ZPmB+nD9O9I5VnvJKV5ilDQQ19Ejk/p7K+Rx99B
	 hBoDKfrjWca1vEpl+XWZMvZ5UpnITTFcamn6XTWbel+vpgtW2YhjlxMKYR98sT22FR
	 TfWsY+2RuEA+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96678D5CC94
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173028695360.31004.824101047508220637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d392652b7e6153b93d42f223fcea25b5bca406b5351b630fd006602a857e9ea7
Date: Wed, 30 Oct 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730286953
