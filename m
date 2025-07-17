Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183ED15A864
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752712794; cv=none; b=Kfr6aNwUrTojymV57zWaYReXbQCj8o6BhxFlxw1VJeF5rdI+CDugczJPovicJzYOViDLGBiCg0KQxucCL1S1SYijrak9MMwqOTnqspdH9r2XEgyvQTDgHcRNc8aLC72Z9SVF/hkIPql2Z6Al2rH8TjPESX0g+1XaggA0/fUURbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752712794; c=relaxed/simple;
	bh=RDZ4j7Eo2qlOsUBnYPO452GI4sbS53e2/2uZdc3WpKI=;
	h=To:Subject:From:Message-Id:Date; b=R3bJ6Rc6O6EjUlGni/QX046TU6Z3xlhW3TR72f12js0+YmPC55b2vuWvi2CF1yCVMxINTAxWGyV2mXqVnvvbp7jaqW4NXCLVWbb8CABQaXBb7Yz8i3DNQHxdb4cFDMzS2nBEns2YB1VnXsuG+Y9AvPZBjqvX7A1ptPsx207Hoc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vD07C8qx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vD07C8qx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E14C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752712793;
	bh=RDZ4j7Eo2qlOsUBnYPO452GI4sbS53e2/2uZdc3WpKI=;
	h=To:Subject:From:Date:From;
	b=vD07C8qxbtqNh8bAA3Igl3y7r9hbuJa8/5G07L2SRuIB2brjSyUTa55qxU5lf6+hH
	 uWoU0c62/3eeWeMfO1ph0wHkmtusG3hd369qpRiIE+fyTjZkOXdLuCw7VkfzTF9o+j
	 keGXv89pQXWG7wRrZfGS4Ga9742VFI82YsiICMtCHBAkDwFzzkiSIUo4seM8xWPkQ5
	 UWDabHenagMOkHu/sck/bo3q7BslkmOHjr23oeWmfC0r3Aa+/knXbBurtf3x/BVzPw
	 +7XqThvwtJ30LEDJwCW7c88e4tlSdDRwEvhkXGvf5qeuGhw+/K0ONtF8Q6G4N54Tjv
	 eTEWvOWPSXBZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926DDC83F22
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175271279357.10592.1243391965764693032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb8dae34e20cdb8df04b3f0baa745d58ad00e7be1fd352e2f450f1d1233f3658
Date: Thu, 17 Jul 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752712793
