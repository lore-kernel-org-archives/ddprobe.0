Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F2515383A
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 13:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718719163; cv=none; b=pa9RpdN23kUiQUlHrgYKTAIUwGo8afInUsEaualwAj3/3mset1sbD7WEcotTrpa65q3PRMyd58IkEd7Lc9qGjNiG/QP9+CfYFXI+mvqOGZr/bPdeURMbDWT/SJKcnmpe+sHUFZULsIhd/yljjlMYubykElWbD75SAjeNT508Aco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718719163; c=relaxed/simple;
	bh=yIdl97yiPNt+86wPvHKz0nX0MZqFuJ/FykQRonlGT4M=;
	h=To:Subject:From:Message-Id:Date; b=LVCjWSphA+GclCiqXQ9eJu7zq9/4LWtUr+3KYV9+HnfbJkhQfs1DGqcS2ASXWIiGPOa13lvAgyk+puRB1VSGBuB552iD79+kFOtvzwUPYBCE7v1mj008GujbO9lWjUYdSAY7mRvbZME7lPv+qJ4AbZ/WXJYN2EbaAgAdC4d/HbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YNvIwTwA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YNvIwTwA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B8BC4AF4D
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 13:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718719162;
	bh=yIdl97yiPNt+86wPvHKz0nX0MZqFuJ/FykQRonlGT4M=;
	h=To:Subject:From:Date:From;
	b=YNvIwTwAbhdJl1HD8ZhNLBEwS4xo0bNEBROpEnwloX7uHKpSv6KahcAyytKOmPgiy
	 EuS2jvEc15F5EfAFcU5XYVK11gfQwKMPHKw2XvxUw+fgkvcYUJkxI0oyna0p4Cg4yl
	 HXCHawgUDPD9LsCNc1EgkK9yrI8P5sxxGyGgiDH9CMrjKnewk2l/O3dlPug0DJbhgu
	 beuFluhk5ljmkgjTZeDaDGWVakcu4CsPrTiinZOirj1I5AfDyp6MZzCwhwlDVFq3pX
	 XLW1AyEgA8qsY7o/JRDdnqAaeUKxYS37YWlk98VEqmgxsJGacK5uvshy/9Dxe1H9ya
	 fUiAV5HLOxwmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C21CCC2BA18
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 13:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171871916278.29291.15740548463986485047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06226e2395de0ee1888cdd786435fd94bcb6c65c0ba6f96d67ea1abc534b2b68
Date: Tue, 18 Jun 2024 13:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718719162
