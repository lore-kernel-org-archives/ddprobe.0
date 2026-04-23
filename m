Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2148F7081E
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 00:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776903454; cv=none; b=Wf25thaE/5+vHjNMHKKJ0tsuj/CdDWK1XCXc09k3SGxOUmvSjMiT5p6rechp8+qZFf/WodxA7PproaN3iphsqP7K/TcWRX36TnQ7vC/Fd0X5rtkaEpDGdT3CkjIefEuDfkr1RNC62WpJTDA7cSyZRnJbKFrA1SMp21O1eCzgab4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776903454; c=relaxed/simple;
	bh=5TSJzMEyafrW6P/vyPnYmtnOv2cvTkhEdE3awWElpCU=;
	h=To:Subject:From:Message-Id:Date; b=iynpZ4jOKwFj/WHYAJi1NxO+jtw8WYxTT0n8CRbzlxNl/l1IuIFmB4YzKYYNDdiqRn/7FxpDH47oEMgWdLGDA/J3+0B3h6CpyFbf7HIRC2kwvt+ShcH0hWTI9RGH8prCWJR5VjKhnHlgmNkmloCNekf4htfQLtyVeK0R4luTK04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j721rbjM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j721rbjM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F0BC19425
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 00:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776903453;
	bh=5TSJzMEyafrW6P/vyPnYmtnOv2cvTkhEdE3awWElpCU=;
	h=To:Subject:From:Date:From;
	b=j721rbjMXd0H1zlnKuc/Exame3T/mBdRgcwcVJeEKyPwji2zNOT7EQeiDS7z8tOV5
	 9sTo5cg1x8KaKwd6QqdMRmeifC1igt9usd7EoMPsZa9gn9kfG9uxWstJQQPU1PZ2IH
	 MDfk8wDI6wAhyn3UiREi3iYILLZ0pHkh2i54ucXp0EhPbXue3mZ9AupKkU4MiCdlBK
	 elY7URvUcsFS+q6z1Q+M6es/1nvvS/HkBIWLYg0WljLHeChvt9799bRyT86G4GAIIK
	 DpjXKg/dFHMFo80ajh4v3Cb0dnRXy0HZlExG1l2dz3fmTFJz8YRBZnJJPh2WP/2DUi
	 ixuZpkzvBJHzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF327FAD3E2
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 00:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177690345368.26041.8330516875927946736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2afabae9da1fd70f5ecd90b25f34e2d2733ed2eab88eac48e1abeb4747fa1e1
Date: Thu, 23 Apr 2026 00:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776903453
