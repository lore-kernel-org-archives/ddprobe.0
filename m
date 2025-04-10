Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E071DDC0F
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744283994; cv=none; b=lpv/3aK6hVTV5QUdrvNIGGpoN8mituCaqYaKuzTFyT8p3hdC4D2SP/7v4sNEXOIaLuHjtENIwROlLPValsGJtBaSslf12OYAfzYE9rUMs4S/Z2UF3GZ4V9I8rph5wj2PfssZAfDP/DLcBbKUHKrRxjifKsMLn25WBXAdHgDcDoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744283994; c=relaxed/simple;
	bh=Gvy5glC8iAfw5gesTm1A0jNo8oLRn1yEB/xGGLeE91w=;
	h=To:Subject:From:Message-Id:Date; b=XOcx9seM6qcfJlff9p1E+SbrSVqE83Q7iQQIvIXXV4wcz1abiMBjt3fdYkctlYNOm2eC/oNOrN7GjXzOtfrXNSg4LBSr/HouAtezDQ9i6Kx/hgh+4L2aXSLsGaqA73P03bP7I+fwDcUgxwrGSnRFIUnppg/3vG0qrtd60Gl8hKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qeuTs2ma; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qeuTs2ma"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF9EC4CEE9
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744283993;
	bh=Gvy5glC8iAfw5gesTm1A0jNo8oLRn1yEB/xGGLeE91w=;
	h=To:Subject:From:Date:From;
	b=qeuTs2mahDtQbY0R/TIJDfbc+ww5qtFzUuTcLL6QLTqc50yUltXuiuyoc/nyGh1bT
	 duIVdq1qNHuEHz5Zh1Xa2RDNzIN5GsArLRR74C901DmmJhahlIUWvFbPYbMrzyzsgg
	 J2HJ9rA0Q1ybcgF3CGHLxPECw11TntLyPCl+GdJDPagnj+8yHejq1P7a1t0AaHQWeR
	 05qm527TQa0RY8cwH/zWDPySe9iXAPyXS4y1AG2D5S05o6/krciHd5/kbL2ZiuPlqY
	 Yp5BTDBdARGIay0/BTWoKR1s92cQf2dtt0zBb68xvYYW0HwUVxAFFdtpH3CGKxX05H
	 uFjudAarbxHrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94227C369A6
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174428399359.29703.12407790821599550047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dac762e7e320e84c174f7eea635e77ea6404fd7dff3d0a18076736aeadda6080
Date: Thu, 10 Apr 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744283993
