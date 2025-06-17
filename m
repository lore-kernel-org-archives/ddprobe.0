Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322EF4430
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750141194; cv=none; b=EUrC1pKnZiWjRIwEFhAAZqdrX5R7uvINMQOZO7yzfx9Ok+/N+mQPRIy77gxEksxFCmcX3N0TkxYj8x3x7dIk3lvXZaJeRytgEKcG6RTZQN7FrnSkWe3PNvf4QCYc+akp9ijSz0kZEk2NFp0cUtzyuIbOuYNLLbh2X5mYQ14Ojak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750141194; c=relaxed/simple;
	bh=wWIQjt4wkh3uJryE4PyhtrgcaBL0TM3+oOU+ylDBGOM=;
	h=To:Subject:From:Message-Id:Date; b=oIq6I/DHDe6VzqZVKDLGm3Krg7JxjopNSUy3yBzto1Yh30btwcdQ6ismHezhEP2m82N9QUF13H0iAJQGmRn0nEnolM83pbUe0KU7mJqz8aMnBtFKChlx1PiMiL3PcoQbhD+O5BzWg0yZR/KpCLmDYRDRzFXVOLpEuyMwPs+f0vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AXyjj/Cg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AXyjj/Cg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6327C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750141193;
	bh=wWIQjt4wkh3uJryE4PyhtrgcaBL0TM3+oOU+ylDBGOM=;
	h=To:Subject:From:Date:From;
	b=AXyjj/CgO9OYWs2bBz28FS8+G3o4ZWWzheL3ETn4rLEel36KK/B2gCWzBfTSzQBJ0
	 TKYL0NBdVyU5er8vIOFuijY8DJfpNhbxAYkVCchwb2y5mge0GJlJaTQDVKxaPpFlpN
	 DuKeukIPwbylFwExhRbxnLaKlMzmWQ3Fs//OI1yXImhdy0M1Vro+Mw8aTLBlG2Ebvm
	 NJk3IDEv7TDcemaE15GD/x6yYdVmz5LwaTL1JNeSTdIT8vkdKoOMXLLM/+eF6wKYNf
	 luL+3bV0dneVCRPU1eDcrVWQrqdg4d8F3rXo1GVDDQYUXuqTf81BxwDYrGzOO0/YFg
	 FzdDjXQ3r0T1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95973C71155
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175014119357.10878.5097646508418630504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 108737e5487ab30f701cc2b6af1778e2d55a8df6d194baad6556d51bbfc92843
Date: Tue, 17 Jun 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750141193
