Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4525C55C336
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 15:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790091634; cv=none; b=SByOV7zNwHAq9dr7kyDrB5WN7s5le1tvTbj8KZcvfKfl/zWidj5teNrJDqNYYbVF6hOp5kE6c2xc3G91xustpMESG1T6kQuoBL0jELtyr1Bo3zqOSVuntq1PIrgZgWo9IH+tRTUaSv5+8paHvId2pu9ovdGGs/hcpVLmufNLq94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790091634; c=relaxed/simple;
	bh=wXehYKpDJb7DT7SSHNgQlUVROfdk7uZu1bLP/ar4+Zs=;
	h=To:Subject:From:Message-Id:Date; b=POiIdntUGX50MsGmL+u8rNwmPQpJrLzVMaRWDETYhifMKEemXnxkK+bAFpxjh4q6PbvS3EbMBtY1y2HTyw6VZ6OAx4+G1baUJC+aEk93jXi6rTay/WrXY8/eQIPtoff0Krm0AKEFWwNkHKBy5/F/RoDzbSZ8eoFh5KVNuHwgtl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JWJwMuI6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JWJwMuI6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4005C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790091633;
	bh=wXehYKpDJb7DT7SSHNgQlUVROfdk7uZu1bLP/ar4+Zs=;
	h=To:Subject:From:Date:From;
	b=JWJwMuI6o+0l0BuPquOH0tBxeteRJmkOOEMJooUfjc1r+LyLn1u9QmFv/RqIcoLoI
	 bgNyDph7KJfjEJBhkqjvtqVoGK9qM2uVD6JzJVP1UTcPyGv7gH7eAR2gEuTp9Y/GRB
	 vDFq+mu+c5Oa0JW5HkuY9xZjEGlMIwjSRhu7iqAiEcFUM7meocvnGUmRvlu7N3YYvc
	 hIigvaVqCv6MF4PJBFN0SRDb5HFS29S7SMDQ4MSNhWq0/KBhE0d6nmQCGnDJrgUD7H
	 vDQucFxWJcCCf7ANA4DajvxN19IIsy7Oo3GTxa1gLgZrfmwdDqAxuZeHVL6JLlJx4E
	 Xt0+DMrn4gO6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03A8C982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179009163371.24345.3559016632479447564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9be07495459fcd61852fddc900fe031bdad65750a834243fd2c6ca0ce4781b6a
Date: Tue, 22 Sep 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790091633
