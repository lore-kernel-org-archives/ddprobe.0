Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A19126F447
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747737594; cv=none; b=Q7mNMpyAlbWa/oZ/d+U7jTaE0Hk66iMuJtoYogM5TSTcszIv6T8OrXfnqIIVYJFwHvvbQbPOwjq1zCLR/dE1u3FN1RJfjrXDRLmZBEeEInaww3ScFkA4c1y65ik/VxycArZfKO078wWs7PEy/cEvQfoWL5uZ2pDndFeHdMoGQOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747737594; c=relaxed/simple;
	bh=ChCavBujSVVoEswbY9E0WKAydPS0JoZemYlmzJ6QLJc=;
	h=To:Subject:From:Message-Id:Date; b=CBrYqMTXNYq2RKIOgH9dc3KMcuLBb3RhLwdcBU6kEq2sGZXlUGRKAzcjiP4YGZfSWJWGHAeQz/CJglI5KpRHms7IDchMNNW2UEYWjKNdML3/aY9VCNmva6fAowlrtPig4yjq6FWIIpS+a50plbzz/LP58RV/8Z8pOosg/706mKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKGZidAs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKGZidAs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E346C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747737593;
	bh=ChCavBujSVVoEswbY9E0WKAydPS0JoZemYlmzJ6QLJc=;
	h=To:Subject:From:Date:From;
	b=RKGZidAsc/y6HwbxSmYn366av/qht82s5MOUL6RnaxiMAYRuouWv70E0e1Yu8BSBL
	 9LtL7rilHx3Q/Ak8IvwASAbotC3e9ageKNQDi3dv3brxZ0zoxXurBiYtanPNe5X4sa
	 r2xW07gpxcE0GmFWO3DHVVqXrv83rXkJW6A35VSRG5QZpMNw8EQ9ECfefXi49TLZiJ
	 w5iqWgYP75cZCTBN1XaRzVLjMYIonhfUij6c0LRlxxLIrySS4dZQwSzyM49rCVx2X/
	 moNMUoy4a08/XOdUVjzPyBzObkWTyH3tbDnLsZtfHP8G6VYRxpc7lMQ/opyR24R20R
	 MJwsqxqE4CALw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E920C3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174773759357.17780.1009596604959763327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 636a4be206d1ec97f0819f8ba8b28cba22d105581255b87ce4d2b663f182d9fe
Date: Tue, 20 May 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747737593
