Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138AB1EEA5F
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751486994; cv=none; b=ebpb1rmjxRg5jDAhRU/EH6eLMgXTwMjWxXLkqS2R1jCvVuI1T17PvKNwJIKaT5kziKGro9vnjcSpzrXinl2mW1Hys05wGRhH9awqIU+1675op+VM1Xp+ElPZzU9M20JV+KThtXTYNeiUpkvBvrtP5kMWBTCE3frmOcyD+2qnIJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751486994; c=relaxed/simple;
	bh=Whuhs8z/bXE1DMWKooyJeDHq/Txg3MgJ6x7LyL5rdC0=;
	h=To:Subject:From:Message-Id:Date; b=Q9MdpT7YJZNbVQjxGHbOJMX5Sr9LDGwzxYFg71yeQEnFavlpJS8euotIhUCAzxkIUT63ZcL3r1ZsdQ4dRVHYS0Sb3dC4FpCPH2zI5yYKmyN0e8bdT4c1Vg4mvwMlnqXDcVQKWtMtArxAZ1kykKNadE+dsGel/ND4jKKXZwPsCd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7ot+drW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7ot+drW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBFCC4CEEE
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751486993;
	bh=Whuhs8z/bXE1DMWKooyJeDHq/Txg3MgJ6x7LyL5rdC0=;
	h=To:Subject:From:Date:From;
	b=J7ot+drWrhm7x3f1pZ0vVpSaYzlDR+EuLxHFd9BmS8wnfeMcCY0BCfsaQ1dhHCRsf
	 xltLZcpa1+QS0ltOqPOFTlDP+2FYZ2rBViuwjG1i4OaUY2qop6swFLdhvDWPL+JsQG
	 H26xVHF8JTkhBuYYTtEi8FPJSN3ZLd0tWdbxUw0Qgoc7Jz9QmskT3en6JecJesPRqo
	 e643t02TH+7pBXx3J7L4AZ44SF+2NbECAPobQHcDH0qX5vqrgzyL8BFPaPjlImMV9+
	 K36DFJ+NepeG3yLn9vx5W3+tIeobplSyWITOGV3QJN1JjncbYu9c/fdDTvSP+ufT60
	 ayqFx1vMPjDjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9067DC83F03
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175148699358.427.16786984876258859153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acca224b091c7db286a7ffca4fc355555bd5b35b3cc5e036c49e94f6b6687809
Date: Wed, 02 Jul 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751486993
