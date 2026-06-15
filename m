Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3352D63E5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 13:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781529994; cv=none; b=Wu5R4J2FeOHW1UCYciiG5RCm5DZhRPlOx9T/fBcDzxPkcVa/YByI6BhyYlHuJLB31O56/4QB63HJu7cIhC5D0UayWEQedgWcduv6oierww5iYD/6Ww4G22pJtLcRCUpoyYRqrdJcK4HMHa3iFfa0FLg3nLDudXsU2inc1D+RT2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781529994; c=relaxed/simple;
	bh=CVz3AQUS23jhA/2RQuctOEM0QwzjCXTuTtI25vi/2wE=;
	h=To:Subject:From:Message-Id:Date; b=BWeuusb4XpESJzGQEAaInE4P2/nqFJJsK4wbNms8coKd1t0LCQcejSTGqDLExRLd9dzpnPpZe4IrA11AJx7hm29oMshq1P68nyKPsYlUpX7geHQL88KYH/tjZZty5gdF9gNT4kSSaseYADENkDGURswW5/swvPFYOyMMiBeULDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=smzuo5Tz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="smzuo5Tz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF03C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 13:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781529993;
	bh=CVz3AQUS23jhA/2RQuctOEM0QwzjCXTuTtI25vi/2wE=;
	h=To:Subject:From:Date:From;
	b=smzuo5TzlYdsE8bHPfayks3uNW24jywjKEcynqCf/A/nwPYzlm4SSmU2+tiitXwWa
	 Ki/jiRx3pjMFmbVTqO6t3OutJ8pMf0eRn2v3vWKKPiLIgEQPn6fzaKyzcs63zA/dqz
	 /56KPsJX5t4O/djYG+/y+cnU4/uMTimlWw/dhmWaPEClGDjyn5diPR/nFVQZcb8iT0
	 IW99BX26brFOB2Evag8Y4jKFXXEfqIZq/CaH4stxZ+Cggw/c+pYBi7v7pWKFZFZBbx
	 jDVMxKd2s/FaHuesZDzIxoDnm1QaBrXgdZI4WOep/J8PvKbJ/BvXZLrLlGvwSLu+Xy
	 OC9nWQt1Uk2iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1EBCD98C5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 13:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178152999370.18040.2139338623704211406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac05a5d519a1884360b7697ee92926f8da63a4736203a0904fed88c84ec6ea70
Date: Mon, 15 Jun 2026 13:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781529993
