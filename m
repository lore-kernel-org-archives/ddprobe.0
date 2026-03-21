Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F092FE56F
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774074894; cv=none; b=jAp1U6R+bKG0i6isp2lBTts2vMqEZ/0PxwEkUAdtguECqrf4tQ/stSa1GkN8TffaduK/CSUTopvzpmh+F7Q9tKZaW5sULFVXs6Sxdrhnz+JCtSxIcV4n7hVOfRhUJk/g5PVgHeEJ5Ae3E+bcf7fOEONfCpoit/Ud8QudQE39gm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774074894; c=relaxed/simple;
	bh=Bjlni+eDKk/5Mq3eBwqZ1hRBvGzlAPBPx8uj1mZryes=;
	h=To:Subject:From:Message-Id:Date; b=mcPvEKWyDmQCl5enPgLzjSfhy/MbKbSjNs/yvXCTtbYaOBhH5v/jDDmHqDNP0Ylf7u3sCZlT+dSNWKL9XW/rSqlgKGOBYAFJPOhhVMZl02/ycPzFocpvfrHsERS5Kr+wy5uOq17KqBRXlSkrQGf5KTXkbJrbhm/3y6ItoW+lvtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=allOMfIJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="allOMfIJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B9EC19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774074893;
	bh=Bjlni+eDKk/5Mq3eBwqZ1hRBvGzlAPBPx8uj1mZryes=;
	h=To:Subject:From:Date:From;
	b=allOMfIJ+c3d7QQmjF43m5MpdcWEfrR6TquedvYe6wDPRa/bSdLWzFhh+qCZVpo2N
	 crSB0axLaLu3MlDb3P30XjmmZJ5GuG/84T7zfc8CZgUOVOPBXqiNoO/zP3WnDULMc/
	 BOQH6VqBJ8+nSZ8afBK2un0bvCsS+S+7RbKbCsmyaczgW/VSnQEyVE4VlruST4w+gY
	 eixAF3vGuOPdsU0HEO5jXKk/CO6aVPeBnD1M59k4am4SpIcikla45buoUQwcK1PVws
	 rMkhFi4VbPB7d62gAtzHIZsjXYXCUlPUzNkdq6jYzXvzQ3jwrzBkx3SSggITpoV53t
	 RBOOJ3oSiGF6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9206E1093170
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177407489357.5030.17933385741302786015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1782caaa81ebe29c09385cb52d5b4fa90600562f262725c76b95b8e887b6b17a
Date: Sat, 21 Mar 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774074893
