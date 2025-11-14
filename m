Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB7B21C9E1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763090994; cv=none; b=Kq3Nnr7Y29iiSYcDS2wig4klzs1yQVANDo50KFEbwUmyEynpb28pzzFZZqCVvycMJOJWuxthN5UoQLFFR3+owmlv0KSGHQQSfd8L+H16nYyhTbmxDxDvu975GQib5T/zrO38lnMRams3QwgfUfchiqImUhASLirpOZ0v1fHkBvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763090994; c=relaxed/simple;
	bh=1O0WIpWhKaOxDLEs/CCL0EiZA1BDpKpR1fuDa9iGytE=;
	h=To:Subject:From:Message-Id:Date; b=NEJXQFPvFcOnnKR3fsXOQ/wbhMsoBTHyw6A2Uxjk1ZR6J+24ozgPyYfk84FQD96h3As72+8jHBNZ6YBaDGOhJqvamzPFOIXRzZyVblyORCUlYiSH33riTTvN+Cuh7S1wiwjbvY9JXcKKyDCYnzRDMIGBx9NgSSD0LLL8g/NQEM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pffrv3vF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pffrv3vF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2E07C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763090993;
	bh=1O0WIpWhKaOxDLEs/CCL0EiZA1BDpKpR1fuDa9iGytE=;
	h=To:Subject:From:Date:From;
	b=pffrv3vFFPTLgzaKWEFIyOkz85XhONSU4UBTctceuxpH1/Ij8JXcanuL+akNBOMQz
	 fibLZMhJ3PR5EuE3E9JNbOGLfm5S/mV2sUsD4E7ox4cstGOpSYPsgo9R24pmIgj0xf
	 d1TBh37uPDcSXQUfoL9lRYObTc0VpC2tqeF2h+9VSCNu/SNXWlbtBAZlCo5mf8UGg3
	 LGOXgzV7chfJOMb4+NdTrAZC1j7/6+aV4pzhTgMuFItUqdWmquV6BhG4PrbP+tYpuy
	 sBvZxA3PrKHBAmklN0dqUg9/Gp66rX0X0NL3VierFKleLCK1Rs64HGOUWSa4W4B2F4
	 1fOGmgU8F2Lww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1E75CDB47D
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176309099362.6527.1577907156112518440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3237e0452b7683601aff1a76276255a21bdab5bbea1b402392992a2e20beddb
Date: Fri, 14 Nov 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763090993
