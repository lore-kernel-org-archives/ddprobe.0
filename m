Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEBB244677
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761938994; cv=none; b=f7CBGlrcQVDqz5+N4EywAsda2vPUpZ632/oXdIy2UikSDy2wz1DzUNxKjMUcAA3i46Wm5+J5VC1nIYK3MlP+f8sk9B6c57E+bUmDj9lBgdRCuUOKzfIiMkRHvayUtsNOki1LSOUFtzd3JKi90zZun0qj3rYXDA/x3m1t+gCzppE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761938994; c=relaxed/simple;
	bh=KEpulgHtwPPL77muBZHbvVj4qP+1AZz2v7iHAMnCQKI=;
	h=To:Subject:From:Message-Id:Date; b=Y+j1rq2KTM1qyBIIWLbwXDoslXX7l88U/8x750R/BdJOpaOQMDX9jli49aufKKo2juQzcUxqFF2X3j1nTF2UGe9ThUOX/Xw463uiCZWVMU3RF+ViAM7VEdKOR1lGQQ0QmBton8BSb41/kqCNae5ocxvMLViamRVZNat+lKZ503E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iOZTfAj6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iOZTfAj6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B701EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761938993;
	bh=KEpulgHtwPPL77muBZHbvVj4qP+1AZz2v7iHAMnCQKI=;
	h=To:Subject:From:Date:From;
	b=iOZTfAj6qmRyVXuf3pQF2lx339sF9VQ4mxZlJ1an23mSGQjCqkNJKKDmIIJCNKJRB
	 PllVT6Eq7mx9DHjD81n77+e9mWNDp3Dg4QTGq5WDTsR0wPF9ptFTuWlm8guqHHqQdn
	 cFlNL2JvWbX/7sH70+HB+b9i8vYqXGI4UfOAM99TmmfGzxEnmy2jHk5ph8Zejur0u2
	 1kM2HmpfUGvgi6nxV9jugDQEU+IZUIn9YbUv+b8IrP0l2otx4TDxLHog0mjkfGWJwf
	 7jfKeRUTXmAMdCc1MyMYcfklHSRzLyOx/9j99Yr1tkbr6toa4KaQLnXc4VSpfTuNc6
	 EnZSYjHuIafvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A254CCCFA02
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176193899365.28516.16424396726159147935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf3b7d03d73cebfbfeb9c3813042eee63505ccf79b42fecbb288de1dec670fe2
Date: Fri, 31 Oct 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761938993
