Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EBE12D7BF
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785295834; cv=none; b=sFo9ZryszMhnD4URfnANhCF9eH6OEFZgGrmsm7jjEoTXEG2Nd9ZcNbnE8WIGog0Xu2Y9IqGDSG9Nm5NqsMMZBsdmPJl5VYl7nJg70tDyOwmI8I2R207qfotgUzEIvOQhNzyVJNFUMl0oXPw0WZO41msHkG7OoqzinIllD4EReC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785295834; c=relaxed/simple;
	bh=lGx8nd1rAwTdLvg/QNAwuXg/Nnrn/tIoq7wKU7iy/4Q=;
	h=To:Subject:From:Message-Id:Date; b=WuSnbHqRpahdJpxkuIk9q8RiC/i9DCfsfyYrnZTgtRzVWitUtk1FLCaBuLNfg9amOtH/FtRD/uipB873wkOjPajHf0qExnVGGpVv8JMb0OHXmh4kTxN72yef7OFtt/2hOSylhhGf0swvE6aN6GFuJoQg34IxbogXvmVW4blWi4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tFkCbU+m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tFkCbU+m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC42CC2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785295833;
	bh=lGx8nd1rAwTdLvg/QNAwuXg/Nnrn/tIoq7wKU7iy/4Q=;
	h=To:Subject:From:Date:From;
	b=tFkCbU+mwN7y+H8YYeZhf/SFmHcqzeQijQ0YuqWwqXXjqS/30jRMuWp5oaZWd5VYm
	 d56g0QAzO3gF6KS6Pt9CCzVxaLT4pe+HLPG71Rb7fdaKq3duANqplp8xahZaHbw5BQ
	 sR+2bAj9j2zD66Yl50iuv+IPl/Mab99lpOskn1sXRbCjN9xZIyC+sYK7dvx1G+70u8
	 TmEAFS5OAwQXRQlL7YiA83jkkWKa3GRZqEmFRFDMrLE7tdzwTezDsfJ3y5ATTBO+gL
	 xWZASmJK3YQE+duTb0lndEHo7G+crVgoAbUzl5RZIGgVVJ5i5/uil8xGMmmZvkoohw
	 tTCqOxNL7CUaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9739C53219
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178529583368.18261.10860471324015095300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe70a32b4c1e889ab9375b3308ab79787c6a3300cd20a41029720a7a71b36c89
Date: Wed, 29 Jul 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785295833
