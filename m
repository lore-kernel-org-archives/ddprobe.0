Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1136D282EE
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730688954; cv=none; b=hV+sZORH08OZXhBS3NUYUodpQ6rn44yLsupIPtcm7QpU0bd0CXZR6IQLduA8Q1z6XjlqgewCUO7Um95hsgdtDv3RUiLyLRHl9OWsjqdVKAbvI/kTnaiiYOjjc9944byI34ZtdokNociru5pd/LFhYY2RVMjfeXxdvuNWy0ICN2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730688954; c=relaxed/simple;
	bh=8mlk1hyNzFbEvIG4J+lG8BJvwhgBkkrOGhU/7vKMr6Q=;
	h=To:Subject:From:Message-Id:Date; b=Rkf7iSWLft2qZufukQ4jmr27jnRKuEy5UopCEvCNGJCH4fv5OAuhkjeGndK103DKMy4mWiRAHPBcVmIU8tfTI/yuddwHEsW7LQ6D2KEncTb7b/yxxnP3pwPTIWPmiGEWP358eyrW3sNOsY+ZH2HpJg0vRekNoBgW4hX6g6/oxtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Da84TOky; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Da84TOky"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CA4C4CECD
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730688953;
	bh=8mlk1hyNzFbEvIG4J+lG8BJvwhgBkkrOGhU/7vKMr6Q=;
	h=To:Subject:From:Date:From;
	b=Da84TOkyqHYoHohtzsBc1ogB3ylE7YkJNbHrNQumykpMikAgruijhbYzZDWeRyED6
	 nIBp50DRdfTxUbK8r55q+GZo40hvigbo2nW3GsRRMixBA1KcQAM5NnTQ7+cnfVgefR
	 DhsLW+Pa0LPHDgfEBkwJo1D2dl/n/eNYNzMY3TKGheLlUhT7mpLdYUfu/HslJMsfTd
	 Zw9ep59uH7zWfZ423Ks4dbiLhKUtrgo6uAcBKaoCnem5L42dcl/7G/0HP4o3+xIJNk
	 dY7HKzdI3b9jVG6scWhEbS2m20meqt9LrsTlkvk51aX9pKyr0bNM0+279zD2k3pivp
	 0eSP/vq17etCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B41D1119F
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173068895359.11352.14999244101558851279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ba95762bbb62de3ef674a480f1145cbcd4f9470c592e391d6313c9257580d7d
Date: Mon, 04 Nov 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730688953
