Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0670814534D
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 23:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708039097; cv=none; b=KwUkCMhyV9BMDfkKUc0nMzzQP2etLDjvWFSD/z7TyjHPP/WBnL2x2vzVreRiLGDW/T+V4MAdF5KgJrFixeTW8g/b2tT7hhfgELQiq1nFZTqmVUsZ0LcqF3tgHLYAp0ZFNWxSSH16oHZdqiDzpM/Yo1FxzpSHZz0QzJeizTv9leE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708039097; c=relaxed/simple;
	bh=DPI6DulyebjgvSCQeL6HGV3nPfuVgk7mQUjy051e+eE=;
	h=To:Subject:From:Message-Id:Date; b=SO5sNBhvNnx+HJ3OPoJ3j8VXrGQfXB01OxbIaxFaHLH6+zzmKp66Ig2Dl4/z42IzpLGscxCuZ+9x2x0/A3AYsUTV8399Z+I4xS+xWcOX19LnLBat9JhjbvMabMmHA93Y6OVKpaDz2gJWVel52/417Ivp7/+/a7+5Mk7c7lfDtRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A7fsukS1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A7fsukS1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78A58C433F1
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708039096;
	bh=DPI6DulyebjgvSCQeL6HGV3nPfuVgk7mQUjy051e+eE=;
	h=To:Subject:From:Date:From;
	b=A7fsukS1Egr8nFQxCPaaA0Pl0QYLP1AYpzgCilkvfPG7Wi6hVvgKYdQkAkJw+knxw
	 +XWi1vjVyVDTtw2AlCPsMrYjQNim0DVluvufYDrAv4TP0pPYJfLMkQDYbxHMdR/vNm
	 ZaZirOZ4dd4nZIm/XERVGaFb7B4y/QRx1b6i4ZF9owbWGpL0OpDmwgIQc+VCAJgS74
	 hurjXnwO9PS3/RWRj6xyX0EntaaPo6uoMugf8Xe1mjaqiHRVVDFjK7gouKlCBtCP0X
	 NkiwcVpw29pH38POuV3+QFCJYd+q7xKQO5CMYvgJOS27CPg5CFdWxzyZNnlz6y8tpz
	 di8AHcBvANKdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61D62C48BC4
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 23:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170803909639.3790.4866720007962385300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f294ebb6c9a4320f43626d306734767286da8887df9bd0c8eee820018ec1877a
Date: Thu, 15 Feb 2024 23:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708039096
