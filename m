Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CED9E32D0EE
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 18:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764094373; cv=none; b=MUaNiCpsHExBKEHMH3xuXHmrF03zy3p7QfJlCSNsovzyvwuLdbKoNYhgAR1Qxx+ZJSjG+EI71zM4f1SW8rCnfBeMRU0X88vokSM3adR/FOlUIOORaCt+M+8G9F5e1dQ3VXEVOL81z6qMFqS40bqiyg2h1PZ9BQc9DVXQ7mHQw7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764094373; c=relaxed/simple;
	bh=UxKky6VCGpTdBLauiLpvRAs0bliV2MMHRqplyPW0qEU=;
	h=To:Subject:From:Message-Id:Date; b=IHaGROATcFYENtPCZ0IZUqHqrd2Tf6WLI+UQIrRAAdItJ2y4OyLl9d693z0iNkSVYqihkubK7wW+sUzv15ydWUH6fgoImFb2J0yInO9+s1Qw2t5B1UQ2iGKKo+wx9jHBAZXxeW9SkJ87tzQnTJMjeyZ0znwI80jXOqdGE6NJ8mA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O6q2ceKi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O6q2ceKi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10E8C116B1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 18:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764094373;
	bh=UxKky6VCGpTdBLauiLpvRAs0bliV2MMHRqplyPW0qEU=;
	h=To:Subject:From:Date:From;
	b=O6q2ceKiE56TYRhmvZBWZCAcZeFF1zds1zfAEMM83RjBVufIaKgMDciuU6TKiN8+P
	 WJgYb5F8MWaXF7qoJVr419ln6OyMMW39Q3a2ORuavfnf4cbP5Y/yo+chXqFuLi2wti
	 cr9wF75hJowUF7KjZOhvvclAksaO4WfVdEFaISEEqbTZVAhWim9P4Lh9Xuq8C18hyy
	 wuYQWaBZh8oqCon34UKSCXXNVtheedjiVncAt4ggV3Kwed099LKrxxscqrCIf9xGrV
	 rSJNXTNZI2tFiymTX7DjJsE85DzrTNspTnAdGoOsNIw1adDlkbHF+rHEWZP1tLG45L
	 yD91836DfOW6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92198D0EE13
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 18:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176409437358.32100.8397202945700883817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c24f76fd04175676db6d74ef4ff40be58474cbfea847b1836713aa53a81f055e
Date: Tue, 25 Nov 2025 18:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764094373
