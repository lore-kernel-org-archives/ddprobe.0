Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E76C2BEC31
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747153194; cv=none; b=Q6TW1Zl6zo2L51kAWm0vRBt62gsDKMnCM+G8z5FZlnJM/VYGrR6uDspkBVl4dnt519VZ6tcFUWxFVoITmdctcNepo+i1hIcpAgaJN8Alw9LFM5Xnj8c66VQqhP7rOmS1ylB3QC2on8jYoMwvbYcJLaDcStUjwysl1rzwbTE5Iro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747153194; c=relaxed/simple;
	bh=hkgUbJip7dY+aX6iXWmzbAyrX+3RcEO6Hi3e4iTI3hI=;
	h=To:Subject:From:Message-Id:Date; b=khnrU4er2ncmqUaqKTgdcxr0ffulWDLeYXa+aaRwVvY1lGqX4sJz+bKUmQaDL7VAGvEAeWDaKukm4sK0/oHHUQ35kAzztlFURUslqF++cvLGwQukRlRaDXs7D3DHNNFq+GdGzidBNPNhBwNJrgw6SSuz4rw3PIRJrhcYF928LdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pq+LPFCr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pq+LPFCr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1538C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747153193;
	bh=hkgUbJip7dY+aX6iXWmzbAyrX+3RcEO6Hi3e4iTI3hI=;
	h=To:Subject:From:Date:From;
	b=Pq+LPFCrDE3A2p4DsYaL0BHKYMfiC2Qcpnx2lRXDvt5faGMuaHAw3276T7ygHD2rT
	 NgDKHq4nCHl8sxamhIM49N9LtcADOIEg84eKJ0ExodQqY7+TrM5/FhT/qnzSoS+9H/
	 aKtPC1mWtiGv4G05FzI2GNMozbn1oPQGQp8aC0TnKx6Su+riCBeno5ILUM/Z4IjOJ1
	 HmMIr7NmuVR/osj/JPZpOlnfolaTKj61hJwt99XAEhqsIIIbvdBh76IVmMxfDhQP46
	 0YA4RiivWhulgNwr1kCTuAttJFOs4GDmuzz95zItP92ifUB/y09xHsKLo0Ff5C7k9u
	 IWFsiqj9Hub2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903B9C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174715319358.9593.18026683351070469610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d443f73278b124364ac6e18d00132339cc7137a15440c760c7e6a2668ae990c
Date: Tue, 13 May 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747153193
