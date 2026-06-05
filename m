Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC27383326
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 05:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780637074; cv=none; b=W7fHc4kkoFk/u4imwnrzxdNcd5zMJ0vZJrVXqIgATq+TjqBA8WdPeY3+yS5rjXkV1AxTOWYoc+ilrwRKMIQJa/kL1dUTXnL7dIpcT3ZybO56rYIkwm8gUaNpAlmYgQo2YuiaSr4T4pV6sJhFQOjbHznX92Zv2oYZvgIHuv3QvQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780637074; c=relaxed/simple;
	bh=W7VUbeGd7I1Qo9LFqHPL6lzixq8CehEUPMTpFA5ajlo=;
	h=To:Subject:From:Message-Id:Date; b=QjanHsKom5bBqEeidui+z/+WAHLm49Cxtys+F2j0NC9kjKbxZ1kqRUf58C8jGg2WpsfVngKFmHrIcDNrcLot94IM1gsBV/Y34ZlfdU1U9LUgNyDGL68Y3GrvrK6ppvbnI8iSa1Tz2uMvt7T5YjxRa4XdLb8bm/tJ+dH+dr6VxkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W1lX/Qlv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W1lX/Qlv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2B37C2BCC6
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 05:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780637073;
	bh=W7VUbeGd7I1Qo9LFqHPL6lzixq8CehEUPMTpFA5ajlo=;
	h=To:Subject:From:Date:From;
	b=W1lX/Qlvk6IL0ivocCcowIzUA+0ACqgvpx9YYhThLFdY++Jivgn7xf+wk7al/VK2T
	 7XVxzLYo+VryyHsYA/eicsviUk4WAOimIhClMVqXmSkoPLpCPBUwcpAOZ/menV/jpa
	 NYFhh0CfvgJf0spvFRSMuxN/jdaFbULl+6mwMKVxp/wDwPjCShLdIeA6Viq7vG7UwS
	 4hTZ4W2payhFSlsVkm6gaKQDMot1q+xSN8Fu0dq+dlT5P3fEer+hs7GRktNkTmbmUg
	 zOAu4JxalTvjv7hkBGFToCiZ8op4cCxWHDnFAK/WPD5faxFmAgswPjaj6CTZu4Y3OR
	 hyafRLWyFlDTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2C5CD6E5D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 05:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178063707368.2889.1128448109670359577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 981d4e2324a8bdc7283585bfc327d0eb4c9783bf53035ef5d20a68ddb3fee3ab
Date: Fri, 05 Jun 2026 05:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780637073
