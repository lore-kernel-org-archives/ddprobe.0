Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D0A20013A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 20:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719951323; cv=none; b=M/DrJRWKJqpRwS90UAkLlsjFZ4+LV50js/O7kJ+JI9XsLfIQoAAjlFLkz9i7naPqGxCwwk6PcOcSb8mcdw+RktsmQjHCoyAKMni/uRVk2/7IS3fvMp72cNPQVs4yHC0Ms4hg/TJ0lukxmurw2lmk5WOtxr7ygrFYuwj4YDj8oTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719951323; c=relaxed/simple;
	bh=ATbxhX91xcKaE2MlRCC0n52aHwkFkOaUWOvS+/yDQhs=;
	h=To:Subject:From:Message-Id:Date; b=dB8wohVooE0/+aiE8fReLZL/lm3am7vmRQIitH6DvcbxBRvSQGtLKvJkQreJGaga3E+wTKeiSxD+xNO1c3WpIRn4Jpep4U2GK/R1WG7uauurd6w6LMT0SwhMl2o32g8Aa3g8fdF350K88Nkmkx3vF+vHbi9asn+BLhogJZj0T2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/7TACst; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/7TACst"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF400C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 20:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719951322;
	bh=ATbxhX91xcKaE2MlRCC0n52aHwkFkOaUWOvS+/yDQhs=;
	h=To:Subject:From:Date:From;
	b=j/7TACstIj0MB5mWXbn68NPjItnIYBD1N1cRZTnJXcdCdIkuntxyP8UcXBX3JXG12
	 +Qa+ygkE4WQPD9COeOFXtYjjNZbv5LYApQDkxUIFMjxLBEGvXoVDbtF+bfXEGGam2q
	 0QpOnei+uqYy748k/rnWTssnXUqj7QdS4jbyLJ4du4II0FcmaKqnq/teoJp2zWhOUW
	 u8WqcNJHfp3Bga3Z3MnwWVN/SUrvQqJi8m4mue/mHPjkZ05MURMLYSs+y3KsY4LJw0
	 XrhZo028Yx4Je2BDuZfn78IrKr1n5YcQ6uj2wwOIVni95qPj5AK3q7PWFTli4R+Ufv
	 3+iJnDBzc/jxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD013C30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 20:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171995132276.15001.6361431145370632674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5844d0d9fa0b421a5749c3707298a06731cb14ca38c34908511463f794f6dddb
Date: Tue, 02 Jul 2024 20:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719951322
