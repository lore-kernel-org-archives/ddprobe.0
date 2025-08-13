Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1453D302769
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755124194; cv=none; b=m8VEr9vqAZ4VHWGfg2OhWpFMyahMst4oOhoY3cIIs9AveTDSxOMrrNJChIUX9m5D8ITbSpODsxe6a/Sf9Mez2/7qV18pqd0Lb+dSJSwkIXn5kV+hEf83tqejAKPb8yWmdGkBkYM68uuRDpmeGMVm1yKk7peNKhXvIdcLMCE1kUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755124194; c=relaxed/simple;
	bh=YCo1gb2n5FhtSir01yAyJh4zePPAxx2wCmj2/vcT4g8=;
	h=To:Subject:From:Message-Id:Date; b=ZflRrJi1qXK0xpgKch+ddWkG4ize4z0zQ1WriFvZaDLwCR7PMfgsI7mRErGhaa7aocS7/CJ+i/nLCxdSe++u2vGzED55zGE8lW0XTno+8kdCvF62f0nKzSuUttW0fiAmLhr6DMnySUXgI54mtKkl7HWML9tVl0aHshnGTWPbE4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kGwWInCW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kGwWInCW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05D4C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755124193;
	bh=YCo1gb2n5FhtSir01yAyJh4zePPAxx2wCmj2/vcT4g8=;
	h=To:Subject:From:Date:From;
	b=kGwWInCWgS2IDr5+g5Vz9ifTq4vB+Syfrh/mAI50Y52ic9yKjuHqPZw9F2XjIgfTE
	 zbqkvx+GKbg7MPAxhn/JmBjT/CGkHQXH30Wvnb7t7gx9BPoQPWT+iI8QmqDj2iHdBA
	 gkWv0BKcpXcG9ufLb/4pjscLYJVaXNRm1D40Bbm78k+PZpCMpSz/1j2q0ZBvi8uvDD
	 9Vax2QzBr08+odL7Z+2p+ukgIVEyvOaHt1SLgPOkbhmC/86Kbr0CgLj7ycFcA2eY8k
	 RUV5xYbhKiT/aXi0uM31xG8r0UrhS38dmPBzTqO/6RZS8FHRdH2T0NDC6zTkFhxMR0
	 YR1lzqRJh2XKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9161AC87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175512419358.2223.9970025623042916775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78f2f7f215f9a035ec2c3085369d339b83ef7808aae2175cdc4c85de01cb1d4f
Date: Wed, 13 Aug 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755124193
