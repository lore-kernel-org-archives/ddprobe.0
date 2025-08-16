Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CFE1A83F7
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755313794; cv=none; b=tlvebKmKGQjaY9MoaGvDJaOlWbQIUZ3ouUt6DN3xT12VVLdc8im7WPCk3ZbV9WBMQnf85UHrq4jbnRUddQndHfRsyn2mlomlUGjYSwfYifpmqpOJsvWSkBDjMwd4kd4CCFG4cl6WDMpc7YrSco7YXzqGuTTYebrBDxT4imtrJ+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755313794; c=relaxed/simple;
	bh=PI6COT1fubmX3Et/mRkpaBoq6M+bszaiNP694+Zh+b8=;
	h=To:Subject:From:Message-Id:Date; b=rP4yB9raEzl2gFXZN51Y2mGrkHe70yCv9Th77KFgscacCdo8vMA1i0710WZYrawDg0vjhjpO51akdDcEXbCz0OCZAWyK1Rlstbyt7WhtOG+5+oPul1hvRrNFzZPgyx20BMaRF9rOll+F1uxfGGy36IKUcvmwSc+1qgbGWhKJzSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WZiUuxzv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WZiUuxzv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A433BC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755313793;
	bh=PI6COT1fubmX3Et/mRkpaBoq6M+bszaiNP694+Zh+b8=;
	h=To:Subject:From:Date:From;
	b=WZiUuxzvNqfMN9UcYKH/mcujsVmvXClUJBtXAtm2cL8Dd2raWSbt7MI4fou0KGHR6
	 tRgirFJBXIZc9CyPAylqw0dV+QRzIWPk9FeWs9NqnBL6rXoB2bqzvURBDXpQc08SJZ
	 mN6Fgo78diIVhcCAiWHBP4q+TZdSXiEWbcHizq8aQ5uz4SNXO3oFKYnxBjE1S/VWuU
	 bes+v6QWVEVC4R5ODw8bqwZj6baRyZkfUTWFDv7HN8sXYMBE9hNPQfGya6VsISWksn
	 xf1p/egrdudwIGBbazQoaTUv+VRGYYmirmRtmN04iLaWyzDiphCOhoSItyMyROLdu+
	 /9kKHQbNI5yIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910D1CA0ED1
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175531379357.12810.2877414164146842715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f150e7f007eef9a519d80e549cf22db4028011bc4fd69f0b943566d62cf0a80
Date: Sat, 16 Aug 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755313793
