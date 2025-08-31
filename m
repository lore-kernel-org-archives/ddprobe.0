Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2895A1FDE31
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756608594; cv=none; b=JbAxkvlyP3Ru1R1/TJZ4GCC/rg3QhaQUIKwTaiD5eu8vaa5nmHrGVVry95dmAe6DLi6nPEy+tQpZ8kf3Iq6H4UsqsddtRnyI/RH2SQn0q/0sbrVeewSSeKeyn9HQsB4/M3rr9DF3AoqQEoEz0YfjJ4G7eqVS7fDyaE0FZszBqqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756608594; c=relaxed/simple;
	bh=WcLoQyje/c6PZ55gtChA6fzIVzJPpIohNQK9zV4Ngxw=;
	h=To:Subject:From:Message-Id:Date; b=cZKSdGf7GijDrx32dljLcXQXE/d1Rt04cZ1itlG5tkO4uu00RPNPOgdSce6McfsGT1Tcg5fbc54MawKOF8JlpO04Wb9q74LVQ1q1U0ViLlW85hphC8RplNhRDdsY4zgK8V3GhTyhLUmDTKiy/Hg/CI60mzuEwnYU5sB1S1lIMkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qCgRWrUD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qCgRWrUD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5511C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756608593;
	bh=WcLoQyje/c6PZ55gtChA6fzIVzJPpIohNQK9zV4Ngxw=;
	h=To:Subject:From:Date:From;
	b=qCgRWrUDGOvqN5b9lU/cFf/ILAm0CDbnxbiIXV+zgdVG7DMgprC0XHqOlZSbDIE/D
	 rRZ0GeGtJc6LEymFXNgQoanqaRwHl9K0Yza2tdtAeD9w0kNRc+uh0A4811OFcWGMam
	 +agoKBMdARDcvZzMXTU4dr7gC4zJiIwLPQFfb42m6nAmiGimkij16BLueFX0iMlOql
	 vBkkK3Dn12Ykipau6guXlnX0RFJUh742tqAtqO63yy/zPB+DjhLkHTdngA/Hd0YuT6
	 +lo7sys7G1eNSKKXKYjUBIHf2rBLFUbamVBI/iAKQROm/FiZhhBGpWU+euT0B0UFxP
	 IH6G3mKw5TW1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EFDCA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175660859357.27317.18031751266435994948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf28f4e71a3e94929e17b771824f90711bb3b2e1154da3a107017a3cff64ace7
Date: Sun, 31 Aug 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756608593
