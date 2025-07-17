Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC702AD14
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752738594; cv=none; b=gj/9jnC0kFES+ikzcbrje00Z8XdYiov51pAxvY4GqRsiHghhI1dH/604i3G6Jq+Gw38ggKcQbOKfyNozXR/iSNyjR7GtdK3qOn+hcQhlsO51tD3WMyYw1Se0JXJZKQUeTkNX4TYL/WuAACic00aZA9mb2HLhRWzA7JX2I0BGOQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752738594; c=relaxed/simple;
	bh=txJ7VrdmGBzNzEp1c4Q8ZBdTgdF6tUvLk+tGspm9vHw=;
	h=To:Subject:From:Message-Id:Date; b=aL3sMqx6omQhkx5gYgY3CRRhmxZYsXZOB4cECRL1o0lyMVp3dyW5MoS0RI+sD0u7Ekjvl0McxbA46qnWC0PFSOZZIiaIQPC2TpfFaP+L8YCK3puc0J2WEkwS/aEenr8DCvEmuYYO1i2raNrV/tj0kBJFiRdC4bn+JIbIPdc8kZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hTzz7isg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hTzz7isg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2748C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752738593;
	bh=txJ7VrdmGBzNzEp1c4Q8ZBdTgdF6tUvLk+tGspm9vHw=;
	h=To:Subject:From:Date:From;
	b=hTzz7isgKcRjbMISKXV8hNpYan0yzaWsIb9fRK6a9Z90xJsKFyJN3BlUZWFwGO6O+
	 zaJ1NnmzD+0qLUUnXJMk1dsjPndA8Fwr/z/FMjCFFcafCIZ0tn7yPN7KDOoS5W/OkR
	 m+raoxSdumBOVm73raEPs0ROq6E7y36y25rZ3dZK0udqC9hvNKiDkMbobel/Oz4Mw2
	 ipTfKEs1ZGEKHpCl/a8LTJhZoK4rnug0xeSKDmX2DO73LorGhAWJP5uBa24N/2QgIX
	 uRe6by4fvV8bVXq2uBQYie+OkOsTi2g3s33Mopc5AGVwIdPmSOGqiZzq1Zlju/frh2
	 iRcYmi8FioBvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9815EC83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175273859361.19783.4004472777344513231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c95347952deb69dd9f6565127f9b2e0432d476121ddcafa0c4fbf74b72b8c20
Date: Thu, 17 Jul 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752738593
