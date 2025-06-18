Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344DD2F5313
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750217994; cv=none; b=W4iOnCb7sWH2fEe49FvLFyVQURY1bUpHpXcyQ5lFE7suyYjwXZPZkyr551oSePMFQvZjWKZS+CzqY9PPytrjSnrU+6pfATB7ZSFIb+465bglbmP9GiJajSuQL8Xwixrspl+gQYPfuhntivdm8ypr+HVuQ6Ovu7xmb9bYRbZ2Fq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750217994; c=relaxed/simple;
	bh=aWKGnRFbjiPjs4YglkTs1u4kIaVLIR3BAnoH+zJmhzQ=;
	h=To:Subject:From:Message-Id:Date; b=gNBjJYNH7EcY8Ue72Vt3C6zggThhMrF8HVA4bTuR/03SrccUX+I+L62BN5SpnEYjIQI3sc8aO3AhMBzYGsPdQvi/1reqEzF5BfR6TSy02ygStmLWRYMtROB2T8HEcV9qiCUwsf4Fq1H6JG/bpqGmNYZ8oF1M+yd7ChZx6UTyZ90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tDPbu1ok; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDPbu1ok"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C1CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750217993;
	bh=aWKGnRFbjiPjs4YglkTs1u4kIaVLIR3BAnoH+zJmhzQ=;
	h=To:Subject:From:Date:From;
	b=tDPbu1okdyrZGQnFXmUv7rc7VSatCVdw0X8yJgTkWetgKNXp2KI0DgglxS6ZEo8lB
	 5nXiPUJuzS55QEL4SuqMklExEdP0Ww6NFTg8WBmUJ8wGrdLLbPlYczyZzlVFgRBto2
	 NvftFCsMhAsS+1plc2+H5R8lUn3Ob1li4l53RPwMyKVmtt/7at2oQP8azWsVTjkVU3
	 5fSQVwYXGQvzlaYrtEUQtG3kiXzYW2vXizF6+/gjkOi+vlIyVhS8w1Meh+1QSmpUzD
	 YikBVwDKPo/haGxUJHfmJOHZytffNFjiv3HXblLq8bQP0owOdaONPYp0OYy7KQUYwy
	 qCfEu5VumnUDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90ABCC7115B
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175021799357.11771.5894781012579324170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3747742f40ed51024207aa50ec4b9628ec6caaf9a0cb1a5788ae9c55b1bc8958
Date: Wed, 18 Jun 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750217993
