Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3825B54769
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749347994; cv=none; b=Dva46jsGO44sX8BYhws9wZHSOCwjt5J3Q3AE9gmLvGl3GjYAQFhtfWLAqE/q7yO/tZoEt0h2nXDzYyrljoo7gKPtbKNlB91gkDL8unVccd1eakTMzwlljHYBUKk65IxQ9ebPgIAj7mJxgUr3EFZzRCqb4kRXyp2CWqGBvhtgIPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749347994; c=relaxed/simple;
	bh=MgfVFu6GmWUAv0Lc2wr14lURW2VrD297gGlMdToNimo=;
	h=To:Subject:From:Message-Id:Date; b=O2hieuVWlzy0Tj4Id/aseYPlidFWYUDHpqWnCIbwIOXmxS1tmXJU4jCbkrhNeYgzhLDZL45AMbrjgjs0ssOv5Jh9HHclivRWsfqR8ULhI1l9GaLAHKHlX4xW/t++HIchwpZ8VSqXnLwfr7fwjVBbR3oEhvDaO6hJaojLByUsb4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etwZpxJa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etwZpxJa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F12C4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749347993;
	bh=MgfVFu6GmWUAv0Lc2wr14lURW2VrD297gGlMdToNimo=;
	h=To:Subject:From:Date:From;
	b=etwZpxJaeYrseDgWd/RLSXFljUgchae1Eh6H/n1+kjXA8Z2dD1oLfgFHTt0HdQ+Gz
	 f0XRbvv9vqyOXiZ9gmlyBEPh5xMQ7TsgbnOcsdTO5PuYSqtYFvWEFCijoPcGeM+5Ha
	 /iC78djUW/ARfVQTUd3e/4YnqbnvFSg5ks+ZafStxc+kTlE4RRSlHEWN2bjFL7xsxt
	 0NtuE81d4+NOGwRxsnGMGVcCfmO6cuowQ25DZhpo8vuGLNZkfTeD10WThWt34V4l19
	 oomTxEiklzYD1W4UPkvDaP3RfNWUFNBeKMkp2K0b6oLKKcDesjfeKvkrbvIKhvU6fU
	 SAHBJrAq7DYUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AC7C5B543
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174934799357.18163.8928094716061035581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a6805236fe1fcdb7d866829d57a22829619a2773c57d6feb24a49a8f8b9900a
Date: Sun, 08 Jun 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749347993
