Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CAC516F27F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 18:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778179654; cv=none; b=pJ90zzZT6PR3nEULAosRXTYm1Tjgn7M2R8M37Siv7m9Et/yHdWjriCbUNHxOCQURam4peVP6uZTSTagUb6AWXVcEp2sQYsC2r3kPgCCJiz2VcNaCOd8Ao8jIQ/CyE+f/kq2X5ejZH/mjkG0JAdP3WPjlXXyI72s32KRrIkblaGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778179654; c=relaxed/simple;
	bh=VCiLln/iSpGdzt5/QWSOpCeav4p4XiWAmiFdSNTsquE=;
	h=To:Subject:From:Message-Id:Date; b=amG/6wOOaXj3GsaFNqTSOb77BiFKkMyj3ptUxvVIxDWF5g35WIGAOsKDSehIDP/Duq3M+AzEuwXll7m+iqJDPMXHRIXNQUFrciXmWYlHSQeAiE3XMq/uQkHdraH/AJta4Hm4YGT9pEzdvH7gPxxLTYmpTa9FHBxjxBAVbnx3N3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bXCZyiw9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bXCZyiw9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAFF8C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 18:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778179653;
	bh=VCiLln/iSpGdzt5/QWSOpCeav4p4XiWAmiFdSNTsquE=;
	h=To:Subject:From:Date:From;
	b=bXCZyiw9+apaP6kljfORsZQeyg3BgYEwn1GQ5ZmbSM5Ah2tMD0T9o1+iao7EvKNri
	 +yNH6EkeJs2yYX38gSmrD7UE4JHeQrAo6gdNOqWHuhXxuWPOFZDKrnZWBCIXewVzAb
	 7hFqmH6RZdbtJzdHRlufgDri1Kfjp7xl2uGDYPDwjyanOCOtOSRvwKFA5IzXHhheeH
	 gEJqqm/nTvRKBm9ryp3/Ybzuh1a2w8PF4qVoina3fIEvx7erdy+QSgV0x+NNRUq4wD
	 3sCEcnJB7H4AnRhwlHPRBuWDS+z7WqXOErZwZ6XY8mmFIusJsTmISd7kB7+tNWIoxD
	 ngO0+2cO0ZMEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB476CD3442
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 18:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177817965369.19412.11346177144802650331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a87f7cdf82b240eea119d99c3d7b98ebe122bc9e5895c2f4e4a45cb5199de54
Date: Thu, 07 May 2026 18:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778179653
