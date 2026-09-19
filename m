Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C04B3FC5BE
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789818034; cv=none; b=K3DkO7KCqpKmGZtud8Uo/QZSBYVlx9YHWOZuWc3C6S0+pcHxHkdCiDAEXTDmnwl4KFmsLk4u8SS5NTlloq/QR66e6Qplszg8LbV64lkbhkgRsXQFc9l9sRBzk+qOnaxMme+9zb2ZQEhpNHxet2QbpNINNlufZ8JVI8OKHHju2cE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789818034; c=relaxed/simple;
	bh=QrtCAl/BUKR+iYZlgRn1rvg57LHxthjMyJXqqEsPsG4=;
	h=To:Subject:From:Message-Id:Date; b=XIL/Yf6a4WSfkxdteKGJ+wDN8k+6Ka6XcvjLF5ktEzRqcriuFeWtu90wf0q1kdhxspAVKpG3npGkPxDcqthRTDgONqe02p3Iwi34V1bHhfwCIFOi0PNzWzFW7Mys4ftL3yR08QO0TMGRWwgAimk5xiBdO1ab1C8jkIVe54TD/EM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tWrjzrgC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tWrjzrgC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1118C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789818033;
	bh=QrtCAl/BUKR+iYZlgRn1rvg57LHxthjMyJXqqEsPsG4=;
	h=To:Subject:From:Date:From;
	b=tWrjzrgCseYMKr82YPOS0zsj3K7d5VdX6MOH2QnDiJvmswq/5F9csFtXnOjVXUOhX
	 njphwscizUjJ6QTQNFkqnirdFNK5hQ86ke3coQTmnN6Id4RI9BGjHviLVu2+adjAJc
	 rNxfIeEyiog/S8puDEVe/d0MXfKhU+7+LpSYtbMDWoA3nB/3Eew1HppOfoe4roe8iA
	 lGWCAbhsmDqQGgEJwm4LAHusoCobAfcNserYysAHfRVtOJAdCm9q7lVdM3W6pVyWsy
	 udKM4gWHHG9lktR38erHsn0DdWcJdhwnQ28wyLHeSK4JChbsimdoDEIN3iCKWL5/wB
	 BACsIzq97A5Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC303C982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178981803368.30866.5031463675084134579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec22648eafff9117add685d3d880a7fc0c555c0ce3fe6c3077d59f6d4118f08d
Date: Sat, 19 Sep 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789818033
