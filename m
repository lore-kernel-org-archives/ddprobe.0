Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F825242D79
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761458995; cv=none; b=VCfboJ9mClagllvwJIrg/6oHw33g9I54Txe4j0W4X1cSIoJY4PiYzAhFfjNhcSiK8nbxB2ul0UUJsav6148N4wUiGnbd//9w8W56dew7KH2AGScoaZDjSmsMmReSK1GXk+tVi6EuJvNcpDJAvyw1EOoLpa6u5mdACZaXfjKL7hI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761458995; c=relaxed/simple;
	bh=ZrOwD2FoOlzW8SRw5b65J6E4pqx4vqTpHVx06ibQSM8=;
	h=To:Subject:From:Message-Id:Date; b=nisBUws7kAyX0Mo5WWXgx1O1XXd5HOh7+yb0J4lw4fAKwaKOTK7l6D8eDOptu08dVfvgPJN5H3MGpxaazaffHuxbJWfJmFGc2yXz+7vhcRE4e3dCxw5/gPdrR5ktJKClPKgwaxDDu0yxAqiUFwbAU5EuAaojlF3hy8NSfjWAvwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=exufqAl7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="exufqAl7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9650C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761458993;
	bh=ZrOwD2FoOlzW8SRw5b65J6E4pqx4vqTpHVx06ibQSM8=;
	h=To:Subject:From:Date:From;
	b=exufqAl7qgzBNkmGSegahmFlCYhX+hysCPQitBeB5qIUpDyq0ddipcpd7uhnyiXJ8
	 lSq9jofKBMAkS9qGWVyfMbvO+lF9p3MehKscYnBM0rFK/u/o4BYxJbeXlJslfJR/ng
	 cPuc+1rwdWh6DLJa+MWeU5NV9ZwdQNJHXokLYN/mmDTmVzJIvifl0f8ZkWT/QUj5i1
	 wLdK4640EktIOT+IQYwhMYjFsvBzZcxve3FjjPkAtLp9mLwxKsXOU9JXDXS1jV9NcX
	 68R+yyMLNKcMZdJvbIObCxfjFa0BrKsG5dR/BQXVoRp5KMG7/eKuJgjjsNRFLL9SAz
	 c/3Cq7kI6ESNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925D0CCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176145899357.2242.15467574505524065925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28c1b6d8868c28fa17071a8f36c58e8e353ecd63ecf704691d84f121840c40a6
Date: Sun, 26 Oct 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761458993
