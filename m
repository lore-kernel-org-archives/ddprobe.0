Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F41193419
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727717754; cv=none; b=OdE/LvzpJT6O9QGkSqoHXk4HPpTWWOyFEo02XBqYYu8MNqaYx5Hphkw+P/7HJcChqBboEtzDumjk81Rc+qrXi72j5Jgp9yqqrfyPc/LJs6oD1XQHxnyH6PD/V52BcLdG4qPzFP3iaxDhw36BePnDS0fz6OV+PKd9JlUtfNkp+SI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727717754; c=relaxed/simple;
	bh=1ZhnrSXep4woAtPAw120iqGtzcoYmz4yHYBI8tMCp3g=;
	h=To:Subject:From:Message-Id:Date; b=VIswO20IfKRcNkEqho1cJItHsaaw+MyylLuGA2dLJdVUiQ5ycR+P5cMqQCQfnedUokUM7PDjOKsEDpOOvnbhVuOoLn7nECIez01AL5BfBKqL664ca9OnaZPx3oU3Dnhl6ItUQ07unphMTsF15hTq1A+a7xprpgCU3kdVCkQOBtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WA7hyCia; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WA7hyCia"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59F9C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727717753;
	bh=1ZhnrSXep4woAtPAw120iqGtzcoYmz4yHYBI8tMCp3g=;
	h=To:Subject:From:Date:From;
	b=WA7hyCia4O9gjvqVG5wjxhanqbcG8UrzpYGBh0x8Y9sdVzue5AOO+r1l3f053v+i7
	 sEgSOtxEwAJymdrMeTc93BBlhacBsfnZUHlcc6ijuwYIferAJPFiC4g6l7S2EBE9bx
	 8kPHw3bq0XdXQFpIIHaeXkp0Mf2jhsyeW9Bp5Drrb1rRNJPznJTPmMBi1OKeQYraXH
	 4OkYw7FFpmPmpcYFVr8T/Jl/Z3QVHbxvrkjEoNJBUfC5ug5RzA7RdXzBNAQxIwjei/
	 gQqUKfg0UltgxcIB0tQ0xZp4edRhUZQTnZkPNOYK3W0Je83sLw37W82CaJuaVF+2oy
	 v2hoQ5umsHBww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93407CE8379
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172771775359.22584.3016901341367413110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b935bb46ff633629781a36adda6088f5f5f3e0edeed848fe35c4965723b4ea86
Date: Mon, 30 Sep 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727717753
