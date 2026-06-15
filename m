Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D5A130AD0A
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 22:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781562994; cv=none; b=RQ0q4R6jodWO/Sn6bfmdKLS0nXYJnC4oFnIBLuBzv5hdeUzjkxsOsqbOrmoMElRtoOFnHuSy9i0W8SRG4HkO+Jou2oVbyaw68iZ/3uQkWKrtql6c5F2xHPoRD6fsVqUJ4qrvHUZgCSVWJ5fcsu0yvCoTIBN2RCAMNN4SHo6c6Go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781562994; c=relaxed/simple;
	bh=ku7SV6toL0z4Ioj5vaNINhAKoBDw3CM0pQolxSzgL24=;
	h=To:Subject:From:Message-Id:Date; b=MputDok6Ct4KgtWqszgY6wx5SCKJt2KiOJFZY3syrxvaGoLaZ51oGFvU3VotTxPCvdMdMLg15vUmOfMxw4GhPJ2QEMx/LESms5JW89Z4wlv6jbC6dLXesadt+TpFSBewJH9w3rwKlSCDdouRomwy/UD6gJriVGi4V96OyFEpjQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b1XXJvDF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b1XXJvDF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6839C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 22:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781562993;
	bh=ku7SV6toL0z4Ioj5vaNINhAKoBDw3CM0pQolxSzgL24=;
	h=To:Subject:From:Date:From;
	b=b1XXJvDFwnH5JGbvjcE+YqCw7s5czDzQ1Z9r3wRnHeqo1lJ6kVeDj1blWO7unltWo
	 AScze5f4vIZMPG0NjBAUXS3+E8haABdBQ4hjUwR7O+5qnMaQKmI5LctT0KACUTHYlk
	 TBgRbajqF/unphPWHHXv3LvorZfLMzo0uxpkGfueVRnO1XoVB2DHqZ2XJ19/h5Yhy3
	 Bhe/uVACBVa580AOZI6XRTHXR+M1gD4QssViY2F2QzQgay4gs0V6NwpLodAviwl2Se
	 oVpDZpy9wDg3AR6zawLLbQsgpbit8I2v6wXpnCSw+B48/IHwxed0a29MnMWP8xVSxh
	 ltzour1sXzsSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB708CD98DE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 22:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178156299369.2967.8209904731214787646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a30e28eb59c1b77449eb9a5bbb61dabd16976a7112c07399ef06be7ee6ec4e45
Date: Mon, 15 Jun 2026 22:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781562993
