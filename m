Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398733594A
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770077634; cv=none; b=ijnGef25NEhrhmoynADjiEVL47SElhOQ2/+xUfNXMpJ1ViOGoWU9HQ8ud8v+Xg+7WzIG2PxW7/ETX64hDwGI4sTL6G99Gaow6tIdXyHWYGRlSbra7m8FZPOjp+Gp+hjK7Bewll6H0lU+c4zOuVnuuKokXE/GuKxwkakgSDaLAF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770077634; c=relaxed/simple;
	bh=ojwmkyV6/+cHVR3viNm/+jrzWDqE1Ska7wkWnhBU9Wk=;
	h=To:Subject:From:Message-Id:Date; b=kMVsah/DgcnTJ8UEnVeB5oULcuebmHMReR55TfXy2+x1wYnIfNRo/+2Gey0adDWYjxomdLl53duJam3+t1z7uCxzyOomrvqar4k3W8C3zbcOluaW8d/F0pzeHmTkNH+EeW97QTb44g7WVtGQwlWLUnlyoXP8pq3OwFz/gIMFK04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lly1Kc3u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lly1Kc3u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB363C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770077633;
	bh=ojwmkyV6/+cHVR3viNm/+jrzWDqE1Ska7wkWnhBU9Wk=;
	h=To:Subject:From:Date:From;
	b=Lly1Kc3u96bqoR+PWzl81PzUG85V//eWj2HNrgWuS38Kp7uMEXfPo3ECnMWlmCkVN
	 HHdiDkkgTVJCFBh3GJoCSyF67qXQqUJKf11GFxMs5HlhKcXEC2tOtdhauZM0Pwu/lp
	 3lMIxR74rVw1WFjQmDOLnWfqMiaa9E8iG8pBZY5Q3vzpPIgc9+5fr+a8JDLAdBsaCN
	 hHDyvtroHVIc/cLGnlkSg1ucSnGf/95zOC6RK6brTa9xM8/hFRCLFutH7PDqYJXzi0
	 ttjexN19Y34h8hWW0JRHGpBKoDQHJXH1hrKOsm3NTnP6ZLoyvc7JH0ikWhhW/l/KoV
	 SwIPoexglDWhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A56B2E7FDE0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177007763365.20573.13768801375463418741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 356e50bb3e845261426c44a69eef16921aa6fb95ecab236161352e94dcfd1024
Date: Tue, 03 Feb 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770077633
