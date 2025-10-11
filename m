Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3570423A99F
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760171394; cv=none; b=BVJavbWND8HCkEsmZwtQ6QdVbMvXEMqSsddIyoBbUbOb2tdoGblaknCWC8H1LM5ZIf4S1uWBxqup6mqCXlIg/Ac+LXe/3hiQzmBa3KgphvAUMcJE+O0P4a59Jg0tg9V3rOgs0KM2z9kGNG8ZRCsb/QxLngaBAKRtSZBTX4rN6Ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760171394; c=relaxed/simple;
	bh=O9o3pycrjKm1ej65vuE2XZ7xyZAHI+CrE7dwz4okjFM=;
	h=To:Subject:From:Message-Id:Date; b=lLH6atySwyG+Dm2m4PrjMU6YX7aVcmC18Tt3ZICulYRdzVtENzKuxxlBzWPQZ3LCwfgNfSpfO6EXLgOXeOZ5clrzYK4wADxpMjyT8qKsQwDBgx0BImQ2sL2x+ohi6yYBxCAKXbKWCdFbagyqQtoHzXDSAtus3XhVnOi4of4Zp88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TOAbcwsU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TOAbcwsU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41C1C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760171393;
	bh=O9o3pycrjKm1ej65vuE2XZ7xyZAHI+CrE7dwz4okjFM=;
	h=To:Subject:From:Date:From;
	b=TOAbcwsUexA1hf6ROOdS10poHuciXddFI6tFHLIHyVVDQDqrCA1nFeT5/L4DmuCSz
	 tWep9SvQ1r23zgPGf86NG4w2a7CDhB2FrsuOCMhM4f9Khbd6JkOucQHF6/jcUqQmQT
	 T0XBjb7u+PeNBLoxaFLyQKdyJbtGVkJ1ytnTagYews1eBvQu96TLEpbkj9uSGdWDBD
	 q5T0dpgD3yCwzukwim5rTjnPgFWwW6eyF3GxFsCuK1OEImjcsfKAEfTDnybee5ePD7
	 rSr13ZksWRUNnvt0RbrjecsiVePaM14VrvQRgGW3xUlXL5wbnHE+IocbAVcGF3kK/T
	 AfVrax5bhuSJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9266BCCD183
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176017139357.5734.221991631156962466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13c95483bab685fb8f5052d293dbe7a799aaca7abe290259b50ce745299b3c3e
Date: Sat, 11 Oct 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760171393
