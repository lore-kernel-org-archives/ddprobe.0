Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B5134404F
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773212694; cv=none; b=BLlHTkCt+n3LzoPJtLsW8CGSqc2u7f96LaauFkRiKPb8RdwiV6UR3bp6cjnkvh3minX3lPE9+UqYLP3nEPXqPrYW+UwbzTFvgUStCDjRTvTRq3VSm1L0x3ESz+ktOGnsacCfeMmrI5pjdqLVanodHvhsExLPKwz5xPS3NhIz7Ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773212694; c=relaxed/simple;
	bh=XYIN/89mJBrDEgpK9nl8BqvAJKQ3Vv2dYml03IMyRiA=;
	h=To:Subject:From:Message-Id:Date; b=G6gn7EPQazMBt4QmcP6LaYAVRaG10PkQdkOEEhRHSbdp/EpJsBqZ7vjxZdHy4+dPqUOA67w8A2l1YpQo9jx8wqwKRIOvOHYUFJLQUrmmOW4/p6eaVtr4ve0lUTfIODjV17RBJ3TOnTFNgXOefCghi5rgWuH2MRBv3fQ4uqdQVBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eclatjQZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eclatjQZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8687C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773212693;
	bh=XYIN/89mJBrDEgpK9nl8BqvAJKQ3Vv2dYml03IMyRiA=;
	h=To:Subject:From:Date:From;
	b=eclatjQZdnUHJBr9LxK0bk6BErRGE5VaUtge4UihLf8Az6E6f33Od7TebqjyZmrdn
	 fISOkWbghMuu2vTzdnVrYiLWa04l9j7n+zvCeXE5mLnIEFInSFjZDPEXk3H3eLOnik
	 VtxGqPj1RCSmpE47JUPXFUd6L2saI8rUd9YlsG24mlS/9E2UkN8gVFjtXy1xiCAZPr
	 OzVJkpuwbKMCFoW2qbbwoWqJGDNkjF+Sc6kyiz8j6nziyxkxCyuOZHoAdbLVYBeE4Q
	 6C8n+v8K6M8hbLO4xLW7u5vvU5IlPFXWHO+5FS146THKtiYcet3090ZgnHQs3HHExe
	 UEObxF6gC9SvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98567FD063E
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177321269361.1890.15031054688403940691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1068abd24aabd92db4df77985c9f43a40b6fc710f30cc3a9172da0c78f5bc6bc
Date: Wed, 11 Mar 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773212693
