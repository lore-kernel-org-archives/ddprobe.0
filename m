Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21517354AEA
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760853594; cv=none; b=BYkMk3aTPxtSl7MP1J5TY9eDCS1XZpKcVI4hCeR4tOo/vR/jlmO0acetgwVRwOX+hh8kw5t8VRE4xXk4yDAuxnrmdxzlmpUb6+y0TX/RN4ZnXX9KvOvGGDS/SiX+E6cuCt6P/QrG0ldgo1OEYk7IMTAUBLo8ksc3aM/GZ/9UZ1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760853594; c=relaxed/simple;
	bh=1b/lG/vrBLC6DR/t/yodERtk2m3io9yGUR8e7fynU+A=;
	h=To:Subject:From:Message-Id:Date; b=JFUJlW5lx1lxNhNxedwivpy5q3+LWEbVXB5d6DOzdHGkLRjgbRmXv3nIgGsxPc+ZKiaLLGPYPj0Daop7ZIKJIx6vsGJ6RXZ89BeDYQDTX2Se+wVmgyxMRpTsNUpNnb/aUejDxzWy2HGQBfZUGBQ3AO2S7zP2Usd4XyidWythg6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e2hUZ76o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e2hUZ76o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8816C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760853593;
	bh=1b/lG/vrBLC6DR/t/yodERtk2m3io9yGUR8e7fynU+A=;
	h=To:Subject:From:Date:From;
	b=e2hUZ76opHsvqsQeIbuItyLlhVr8ri7eDQJAwWZDcbdsT+bSgA2plsyE9KIlB3OuJ
	 yKuXtZFZdlimwWluMdgc//FZnxvnwM+IgutOVWncCP3eRft18+lPlpi6eWdZM23dsA
	 iHZrFCBmIUUBdmeCmVcZEqtJ2O9giURw5OqyusezKqJr3gjrOKW5nXB1PQDE6BkRUn
	 tVT+RNAC7cn0c4QUAAs4xHCh8lsyDaQDxs4i0HkNGauX0Zi8HY3bRoy8+ZBCd42Jg6
	 tqoGJouqTvQVb2kyV9JbTGL6YBhRarPZt1bRan7SB1ULd+2vSaQmSJSR2R8zWPWGvk
	 1ziyee4gaJQxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945F8CCD1A5
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176085359357.30856.14312937007678149129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b6126b295ab81b0359c4841e2f1a159854ea23f0c7e124a6e4926c43e411855
Date: Sun, 19 Oct 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760853593
