Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6910C13247D
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 10:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717496723; cv=none; b=GjEQdolkAts10BcF5cW05hAIyC6RK3sd9alOLVqgTpTO5jQArocgnt7acCWi4CgQWHUT4C2kiuQzmGjz7p5d3FeXS/PAc3ELQwuRDrNU/nj7Z7nSqcbiGsTHXHDKFGAe048cLQzv3zPcmRgT7BVw4Bg2E8YV6ODgu0WyXsjnXUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717496723; c=relaxed/simple;
	bh=TTDG1Iaiof5mlj8LHg/KHLqbIeRCkYx8gHYEk4b/2L4=;
	h=To:Subject:From:Message-Id:Date; b=V53f7rBT3Uc3nIp5qRrSy2v1eCva6jhV76jzSr3edYJxXfj3esuyzWonWJJWoxl1XdOwFAnkqSMFZyjHFTL6TBYBfcI9SlJ3N6KpMyVzAwSMEqE825/rObBd0hvi8hlIg1UFN6GrnqLMVmEFt3769G1ndX9v5SCaA3nDEP4q3nI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivZsU2ft; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ivZsU2ft"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C6DC4AF07
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 10:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717496722;
	bh=TTDG1Iaiof5mlj8LHg/KHLqbIeRCkYx8gHYEk4b/2L4=;
	h=To:Subject:From:Date:From;
	b=ivZsU2ftfpCiRqfrLHJsGY3ZixGNGo40fw3VSEuE1nEMm8+V8XSASj2FRTwxmgvk+
	 iZbesMFX0Za9P5HZp4bgdwUbeBICyKTS7f6mJrpUtjjRzGGc70rsL3O93u/tI5vOP0
	 mfqjFo3zERs2qgOIrNaBTs6k4p0PCaQtABxfNCoPxgawocgxxOe7I6FwvVlcashCyb
	 CMR9PG0EUp6Zy/BT4HM2F7ZJQvBbyjspVZPqrFJiKi6OnJd9hT/oAGLaiSXPIIsfhH
	 uaMJDozIzEa19Vdabb6Ta7+x+nXhaM7zBHSRDryPKNPtpk1b8FmWp7NNM1R1hfJlHV
	 dZYevhlilIynQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2780C25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 10:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171749672278.16609.11459182431145034093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fdf3f1d26d4c22d361798d485e9fb1fba632d254498d09be41415b5531386d9
Date: Tue, 04 Jun 2024 10:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717496722
