Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A98A3C1F
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770602634; cv=none; b=pfQb9sry8LYJeI+pQqWPT3qDfqNNnqWaS4tjq1Z4hKNHS4UzMlnnQqHovLDS0GOzpnqm8kMwVqthSCZSjM4y81gh7mmpX2MfdjJ3J7GFwTsTx3VATr8Aln/UUxpi2ffm4So1EfTKYRfrfo+m8gaMo5oMeziXK7ekJgPrdaPadYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770602634; c=relaxed/simple;
	bh=Sf45Da8IMqpAYzL9YuZC4NWKotsa1I98xtxbx4Sfzrw=;
	h=To:Subject:From:Message-Id:Date; b=BFy/+WFwdtFTRSiw0fc0xr2FRMbHwVkv281lbu5gCuXFIruk56jfISdhiGn7TjXZ7bLJ7c3Tu6r8X0kskeY84JvPwO+AbrQjsFhC3gUJQn61JWJhxqt/boBknW+E3LX+h9Q2HkGvnDWwUMDD+rL7gbDeTo62jpheP1KD3tRmeSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NvYqv5HM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NvYqv5HM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B705AC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770602633;
	bh=Sf45Da8IMqpAYzL9YuZC4NWKotsa1I98xtxbx4Sfzrw=;
	h=To:Subject:From:Date:From;
	b=NvYqv5HMZnw9/Yp3yGtTY6ayqw/MjCtgPZ7H/82MTg6Da5X1ypbY9Q0K0J/HPFWoh
	 hdnX0UpnVJJri09EwiDiSwEMwdkVvZyeeGAV05SdEfwpG/j4nb+oEIq3gqyVwaGlNB
	 /ofN3ynuX8Wp4JEIaLoYevPlKlei73IRbkBN6Z/WAehk+sCdH0zdYpb4BawdBaLP0A
	 b6ZAz49TsPF5gJXnFvu3dg2k+cJ23mMTRwgKWVPi2Ru1PjMbK/43clxUJOqVixHMPm
	 XDCb45KgUFe8UZUJq0KHgpXxGrVmBh89Zgb95jP2bajX3ikLZByC4il6RzR8fMYT9n
	 hMzpD92VN3Myw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A079FEF06EE
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177060263364.20265.10742759412717712304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d2518bc5275b50d0d2b4c0c440afb15c103ffe5445990c10529b6c3a3c02aff
Date: Mon, 09 Feb 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770602633
