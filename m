Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F3A024DD17
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787791234; cv=none; b=V1lP1DbtlV90oF5kNdb3fS+jONqJll+Fav1FJt5Bzh5d1ua7AhTPk+tmodI85gDpJ/bpE9qQBplyjT4as9OXDHJlMDakdnrAliUv6JAbUCjpoVP2GCW5AaOy87id4tlSBmlhx+H6Jjk1fbC7Lc0DWWapD9AGSaDiqpovgF0xVw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787791234; c=relaxed/simple;
	bh=WGkYG2Wgt8dw0auYtdxsNPTVhlNWNOEUVRfSmz/O8ZM=;
	h=To:Subject:From:Message-Id:Date; b=q8V+bCNn11GkRlPMK8Z9v34PjzBYIG3D60rC58d5pM+qWVULpFWikC3esROkIas8UJUy1O8RB0OcNYFcZIT/8pYQsSUN9Uq0LdvduImAOAdmDucRv5T/TZhYypgAl/moqDPmVb58P+REOcjaYxbbfi3j36uMtr4/ZlNYNr7+rZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h0S/f5ni; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h0S/f5ni"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D735FC2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787791233;
	bh=WGkYG2Wgt8dw0auYtdxsNPTVhlNWNOEUVRfSmz/O8ZM=;
	h=To:Subject:From:Date:From;
	b=h0S/f5nirmoIDYwCH6GSjHazerPVJ7LnWGFDqitQ7Ghzi0Lxym7MH7IsXv7k6yD7f
	 D06ToIDLUFoHV9YV/j+B/2Jz6WuwZULwrRnaZimXR+Q5k3C9IhUkeovzRahCRyOK22
	 o0R7sca5qna1jKPOBLwlkpW6oxIvCWAHqdtas/Z+V8GK2HLC2ndU6r8Fuxuktb06g9
	 7a00CkJ1uuaq9ta+wL+dimSV1vKTwaN4O+0tcy7dCGXM7ANqjHUxuw2Ve/+1wJLXcn
	 BLiI4uNYIiDigB0ejLxfnNyZ4la/iB/nZzCIVbWZyUcHr/sT49mduEOnzfvRpXcp7a
	 1yJGfljSBr9xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD77FC5DF97
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178779123368.10419.2052502402824913505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fa55f20980c10dc379aa9a13930a91fda6cb7e1e5dd6cd5534db7421764d670
Date: Thu, 27 Aug 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787791233
