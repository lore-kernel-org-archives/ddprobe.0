Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3742927A124
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756825194; cv=none; b=icAZ9TY4/eQlc+guGwyROKZqwZqSBGwM1U2H2afSQA1UrGQymlsnWB8tMrWeduj4QcV2D1dc53N725qkbAgoYvkVZncI3zR51SGYcaL9l+5bawdP1s0zWA52zxlItNTrAyHhJy7ZCWJnz8AV/Cl7+paaTnrhlP7thZsMejj8OmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756825194; c=relaxed/simple;
	bh=8M+kTPpCKu9giRUSY5J+wooZ+J+B3gBl4SU8MFXOmdM=;
	h=To:Subject:From:Message-Id:Date; b=E1iDbzBzgeARNGo+hM2lBWbY04F3AehIxF+7l6zKXr+WNoqQJ/c6E1ya94J+qqev8Um9MPaLskQ8cSO4FzgKT4k8t1hFAGMJPIZENJMiZltO1EyZKpRj7aVbDpi1u6hqs3iChIqq0O3enEM1qWvjQ1vCxyytCOVzs6DcvNUX66k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pQLPndnx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pQLPndnx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A75C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756825193;
	bh=8M+kTPpCKu9giRUSY5J+wooZ+J+B3gBl4SU8MFXOmdM=;
	h=To:Subject:From:Date:From;
	b=pQLPndnxy1jroVXQmE7z7KmFL4ak3hXgh+IY0Nl8dFj5P4ebzTMezV/QG4rpDZ42u
	 4xLTrjA6/bHNV7aEfeRjF6lvmJ49V2aga+ERDUH+jma9hWGqH7WsZ2UWywp0pR835R
	 hLeHkilfQnthC3XWugVoheFA4B5P0rwqBvYLpZ2kN5cn//rfzlLH7dfXS3QuyTNdK3
	 Lespua2INPM6Rinm58dPkQZ9EpIPrjmaYIv23F6viFloGvqt2IBhvUDVJjVMwARDX1
	 MgJ4BgYMIAekJTEim332B02tlm4GDd12R/BZZiPbv8cZnVDzW1FY3FHacbH692Xa2M
	 /WLyIF0az9sbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEECCA0FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175682519357.19937.2895032139985531317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95885e8911eb00e050adcf0f98937a6d13f0c91192f69addf188dfd41609ed6c
Date: Tue, 02 Sep 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756825193
