Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F9E2F0E2E
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750967994; cv=none; b=auqbgAjWu8UM8Er/M00IqKRc4800xMhdrbnyPoKMSgXJvMiSZboYhBoXW+ZhjlkVTA40jrGGEtx9g+ppw8UgKonNMucqKvabhVe619eYl93F0fVwjuKZFDRO4bnmpSU+YHNT0gNX7VTbXwQnim6+5hIr1G6Yq4pVakcffGWUQ0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750967994; c=relaxed/simple;
	bh=Kxw3v/bt73gkPa9+I3L1qmL8HRqS25UKsJdsuF/cwzA=;
	h=To:Subject:From:Message-Id:Date; b=mIjZ1JyPdcrlBv8B/IES9VrATYzmywmJ9hEKnksSQqmhBJPJVG91RJJghQ0FH8339Dru1kTN1WlhOJB8Bvj4RU+Zbl/h+kbJdTJw5X6uhoTTQjtSXU8fFNRvDnGxGHpCmxImyQQRnY0e46kCG+XrZ/eNR8OHhWtUS1HCTcxpSzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dSZUeJSg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dSZUeJSg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB524C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750967993;
	bh=Kxw3v/bt73gkPa9+I3L1qmL8HRqS25UKsJdsuF/cwzA=;
	h=To:Subject:From:Date:From;
	b=dSZUeJSghW+MnoijMvl8njOygQt6l4EEuTUIqWa9is9RfilKr+1Qh4QKrOT5L55ZG
	 VuV/IgVZ72wvgMCw0LId9f6WoVIyMG7ssz+UTaDmQvRCyUQudaU0UL2ybyu73JnHqy
	 8+V3zKoCUdB8y11LJVal3iD1/fM3s7kmf4p4JbEVDH0qZk4Q8GgWOvARN0gPAc2Wgs
	 ekwYiqRik9RfWvbCK8LVQlXBKVc4bk3s+WCebeNieK0KD2TxJi8U9n8gvq7sIH2TlK
	 vTffUxNbge1523EN0HJCppXzRDcXSCNFom6FbSv7O2FsiTHTzZkttQ/aAq1IV/53cf
	 FN5N/ahRnA4JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E5BC7EE33
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175096799361.12144.14519036204214164896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d2766dfa19da0a107a829020585e8cde77e66f88d26939c0827a45fa10e1df8
Date: Thu, 26 Jun 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750967993
