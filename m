Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B4A7342CB0
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786221034; cv=none; b=tJ/53Ot21Pr7rfUpYVmRbSXAfFxYaDtcdtAZfQllgNu/ltodftUbTphjovwbnXdDLvkn0/qB8cTW6q8BwyPf3asfEZA8zClboZzzBIbNSh5g1Emwvfo3gf6E7+cUfqbV1PmFqwGtfhtg/4qFshVILM54brr5tBOkkQbEnsFfiRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786221034; c=relaxed/simple;
	bh=lxhN0+wcU/mwZYOPPiGVHLMoBx6ET1eEIDgrNLlHrVE=;
	h=To:Subject:From:Message-Id:Date; b=m3nl6DEKxxfN0616WFU8J+ox7a+KpBzN7k6v6x6ASdOoo/qtt6SrGQwUEPlOg1DdBlBrID2X67zDZVXfuSEAdihpbh4UgiCpQELUEYlrHwRNje5A22CGXPn23QLgwDTC3LZUWnlQuF8xmW1wIsvpeeZ9P7KqKhsZubSEWMnZJw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iVrnPkfU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iVrnPkfU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC9AEC2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786221033;
	bh=lxhN0+wcU/mwZYOPPiGVHLMoBx6ET1eEIDgrNLlHrVE=;
	h=To:Subject:From:Date:From;
	b=iVrnPkfU9s1U9RJIQ4mFkane/ABhy/K0717tUreOFZrOkJFUVzaD32layzfmvoFNV
	 RxgVbskuZYwaBeDiLEG25VrDqNR5ui/dKRpo0nYgUaQQMmi91HZW06y1OVE5AdpqZP
	 JdX75yNzZZahmo5kiNJ/yzG6s+Sx23wYyd5RWGY4VVbzYCRijmGumE+ABlqAj4jF2I
	 2mZQ0oezokbnNrN1FsXllD4cX6DEgyO0v9jdaSsvWCi7owKvEl3t0hKAeUmp9S2PqC
	 AdPZqSFXIMsO2bq6mbjkjUVBC0FOZlrg/XrMlMgwRrFfFN7YbEbT19lyf0opC/KfqM
	 bLKH3yHnPMpoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B58A7C5AD4E
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178622103371.23289.9409086700895114667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46841eb96c6b781614c6193d9c638ba73070da2b93113d48901cd1fd2246cf54
Date: Sat, 08 Aug 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786221033
