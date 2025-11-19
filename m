Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB5412E7F3E
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 13:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763559114; cv=none; b=Mbs+SKdTm9WL7FUemt4fw9UUKJMkt8+J5Woy4qxV587nJ+Rnr3JVik1SKbYoooEtGSk9H7iksxNs2Bzmpb9Kx/GyQaCK/oPBBpGTxhJdAB1PTlF/TxMu4y3evkLDN1cZmlSPt6Dl0FDzYcPccYfjFU78Gx/JhJaLfs7TsodQblM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763559114; c=relaxed/simple;
	bh=kt5XcF8sWVBR7km79bkte2qrjjGQe96KxUguy3U6Pis=;
	h=To:Subject:From:Message-Id:Date; b=p+7ycEtW+usumTCpDfOkf1sO1icip7Gq89/cuWrGCQXxEn2EffS0tB9QUXHVlcxwriT9huMpzPJuiBFlo8K6ww4g4QYQkNrc/A8SOS9d/b/deNFwyjK3Mapti2z4K63wraVAh7mKeW8UP7u+opzSE2bq8o/DvCmFmz0snlxGqrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LFWZ1w1Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LFWZ1w1Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C703AC2BC9E
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 13:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763559113;
	bh=kt5XcF8sWVBR7km79bkte2qrjjGQe96KxUguy3U6Pis=;
	h=To:Subject:From:Date:From;
	b=LFWZ1w1ZjkeQHjLzF0jldQfwJUCScWX13zYog+jhmSZTKQo6JU42jIGqD8G38D4DK
	 R+2K/72YaxwKJCKdZBS4wj5KdHw/rrG6XXXghgR9+gmmRSoUgi31W8tz56YWnLwHeH
	 HlyqJJ87molci5cH/oUJBKEudsBeg3aV2XC9CwpQcho4XECrjwzpkBlVX+WNsXhnMw
	 ObebGl3C3AhCqh+LqI5Lpw2DNPbShjb27yMJUf3M3d2X3r8xClKfBUYGqA//DZBvUD
	 QHzf815MXyrejGWd6PsbxObXap3+N1R3R1sCGtfeizgxK8AZaspy5liUKqVub88Vo8
	 JlwTppMzSlyXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E4FBCF34AD
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 13:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176355911363.32534.3824406463610112581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5deaac0a16e7e7bc09b518c9c921a4a136d01ba0bb5407b719d68d00746a5d30
Date: Wed, 19 Nov 2025 13:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763559113
