Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297E41A3142
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756594194; cv=none; b=BZZwydTppcYTiImb6HxYYbIPSwEM8Pb7ACHJ0D5QmVqY7f8NNqaSu1GI0aIJdSHW70ohBg8sm5lnNIqLh54IKDBd4DZmJExhoeAkcWnMqjQVshzJNPekXiAx7jOsxPQrR6VICpPzq1RlW29tjZhljtyk9+VrQZBcEizzVEJ0ASc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756594194; c=relaxed/simple;
	bh=q9sicK7Hjlos9o7aWrOUcNEy5RqeLL90ZxGRcMcE3OM=;
	h=To:Subject:From:Message-Id:Date; b=aLh0U3MyxEnHZkQAeXLNMFz6v4pG7dldva4YjzS5fTStCOOKROBrgDlCXLUwmiPPzkRRSX8d5iTxgYktQZPVUoOFjfNoc/P8ALjMBPK9oix2fyomaIxQO80MHLR2FvXzICFc2At8F+Nl7regw74RABa9IMGalUfHjGvutjHfBcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQ8L+Ufm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQ8L+Ufm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09AEC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756594193;
	bh=q9sicK7Hjlos9o7aWrOUcNEy5RqeLL90ZxGRcMcE3OM=;
	h=To:Subject:From:Date:From;
	b=MQ8L+UfmQ5s8Jkgvoty0ooj4uEiF3wplQrwIu62f+rO+ewrzFLWE0hRdFBzmZ5h+V
	 lb9+K5ZqgxuiC5qpBiTneldTWf3Xdaov8yYoCDKEehdIfjepxQ+HnR9+O5xsAaQKAE
	 u3qi1veLimWQj3qoxCIMUM/xtWDP7l/CdX5vEdcXX8fzKLYMD9pq/cObr8J9Ye0x4T
	 V9iCK9wqM2lTKkLO+3RsBg8E29T56o7/h106ScKZN5sTTZsIEFcvaDLHFfrm0E5Uwh
	 3ERqIGGvQVQ6Pi/t0g02beEKXRR0Xhbrfl1uCmYva5lTCjbbV1415R8kvhRVRkzJe9
	 AY0aS/ZPs6+ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE41CA0FFD
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175659419357.14415.2688205390833851495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87511916cf4d7400a3206104ed868468f931ed52a66c613fc2943e1fb9e1094b
Date: Sat, 30 Aug 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756594193
