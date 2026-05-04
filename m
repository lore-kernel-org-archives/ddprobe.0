Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2271C64A8D
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 01:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777857454; cv=none; b=hkjvpiC/+Y+M7lVMP31qZb0QA1jHdzr1gC0tDFOF81bPWjQZd+U+ZUsYctBc0hXx9iWpsq+bx7t+80dzCaeQn3KLlh7CY4mM0m+vmf6k0vVd/5UwoqabTTR4n6QN/uA1co0IA6IkJSONi3gWsqdr83KZfAxA76490jrpzHmMzl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777857454; c=relaxed/simple;
	bh=bZDWlrIWwWrMUoWsrmMnXn19WDNXreLwVC0NI7bgnEw=;
	h=To:Subject:From:Message-Id:Date; b=NMohP6dOz7eClQjluvvgeXCPVYrRFIvm+peBZjZ3fENYdTj94hRB8RUpOS0O+W3eUIxiva5TqpJgKkrM6uASkjvBEvVgSJ7ZPV2CGbAibsL7zQxSAfgJ3VWXzWVRZhgRsISci1cSxwOA24NzFHaqiGRsBwPIB6afW0g1xEUNxWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U9XVVt57; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9XVVt57"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0481C2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 01:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777857453;
	bh=bZDWlrIWwWrMUoWsrmMnXn19WDNXreLwVC0NI7bgnEw=;
	h=To:Subject:From:Date:From;
	b=U9XVVt57zgXSOlKVg21BRNkxLYKf29yJL0NTXJEqYaSch7BT1RfpX6QxpHFYFbVet
	 VVmE5uSsSO93mMpfA1AUsZvG1Oy1uxyUOiEVYUXyuN/jGt6Nu8suc5sjjRzkNUcYSw
	 Hp2k2FVlyoOn2TnpfoZAi705b/X05gA6FsT4ia//C+QraNZ/Km36OHUcw+N49BQHwk
	 VzRkqqaWkph/2vR9cXJeBlzclFyHssKzpO+069XnAj6y7I0Ng5p/TYsAR6uWxyhxxz
	 ll40orCYsnpHIfcZlCPniCYhTLWFDzXNnFKhlEHvtd6USfNbeG0ux3V8JexCkKJHbZ
	 zUNgOWplvFe+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9A3FF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 01:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177785745368.26621.17841591507447569415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14e8a5a85d1a980e703ad9084583d9eeab86691b7ae6227a00cfaba61a9b37f1
Date: Mon, 04 May 2026 01:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777857453
