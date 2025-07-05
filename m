Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D34585383
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751675993; cv=none; b=kEE0WEvgexShcTzg8+uvsWwRbZIETuuf3r/8E8LF1jxKb7PM5XkG/vY/qWcLap/jKTNFcnpvo6XYbQuxjZ31s645F1Y79s9dezWkb0UB+dyWqiODXuT7U15XbM1Jqvt5c+yXuLWVGM8/gX0dSpj9NzMZHNbi89xLTijvRoS9bp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751675993; c=relaxed/simple;
	bh=WiqE+nH9/gwucDpygDSCVqleZHWavovv0/mHFvQmp4A=;
	h=To:Subject:From:Message-Id:Date; b=KQ7oJ6KnqCOEHyuCwu3TVoVUG3gvbtLDGm2QNlBLjHdXEWB1ICLcoqqBO9SpURq+IpBqD9GDoLqqyLMKMzrrD9SI7WHz/RZGvM20UNaDplXBMigN9HEix4AZvWAY+ZghhH1hNQJSIpLh2HtXahXCaULsChR8v5L2t8nnyFYJ5Qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZUXjFTOm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZUXjFTOm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A08C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751675993;
	bh=WiqE+nH9/gwucDpygDSCVqleZHWavovv0/mHFvQmp4A=;
	h=To:Subject:From:Date:From;
	b=ZUXjFTOmlLcClSvr7hMn3dT3GT9dSwM2vc7gRQnMIRJQGsV1xka4bt0I2PquqlKYP
	 j0KG7hqC7j8xRACcElmPBHpwS06hPZELezZG+tqvs6P8ODoX0cOHggAOnmfWxPKmyv
	 3gC0hJ5pXMix3Ox0OVCVjzA/GYQ8BZiwh2wQ0rRQnZy2NAFVnDnx1BUs02P7vHoBds
	 GTZqPSAvwz88TYR9NfRnqyzP099TIrk7d4ipeh+m1BNc+f4v4Cyh2nWr8swhTfNYns
	 2nTtYTQtO8HFmK6MT565qYDIj0zAaWUgAAhRl6Hz2/xUqB8RvrbYPVOAy4yLnNYmHy
	 nObhsvSjr7ZJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92366C8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175167599357.22254.497754893646263999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b3d3798b7e01aa3bf1ebfd2c627cd02a7aa37d8d47431153f08d7091be47695
Date: Sat, 05 Jul 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751675993
