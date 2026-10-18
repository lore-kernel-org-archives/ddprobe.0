Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5234D3DB65A
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792331434; cv=none; b=EEGcwNOvLfT/y5Rwwe5JAYBrBj7ZP6iFGT7MtbPbQx+Vaz60mJCizC7h6mQ4e07ua+vOpNg3uO5hNeD0Y7pyH+BHJHNJOUenz+JTtud9f53t3LYanXL9iClnjqYiBjZfogt/sZOcLN1s3u21UfB4lSw+oj0NNhtMgcLRs9hhP04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792331434; c=relaxed/simple;
	bh=/PzOPReuDPmZ0Gn41HatWjLlcQhiAFAPNcKXsYiGgnA=;
	h=To:Subject:From:Message-Id:Date; b=QsVcqtOQBdgnO1Idb4rEKLC1jkRYIbefFW1CIh7GVWbx5qDMPk16E4ueJav9LtKhjl8jTlcxEDwrbLQSIsry4rP7IDgLyxbnhhdTnK/bfXaeKIQyD7YmeHvY7Zo9Rn5Efr4bz/wElZMZydPOebjh7PQCVdH36oqfW2cmv0oqNuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2/9EBwV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2/9EBwV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC99EC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792331433;
	bh=/PzOPReuDPmZ0Gn41HatWjLlcQhiAFAPNcKXsYiGgnA=;
	h=To:Subject:From:Date:From;
	b=l2/9EBwV5cLUNLewvp2MxACUFbA0ewSgUCRFsJk4xjqKYxZ/6d2ur/4wIXfF83RqR
	 5cPM3N1JrdPNFFh3C1E/rDKrPsTx03451SN7JarHK5rprUBARJr01fvEsRP5K8o5a8
	 4BHuYGj3Gze9FNbiPr+kTXWq0hCmAHcAXBwxde1wFZJf13DBJgX5wb6MZmLmJyud24
	 cSUwKWI/+rfjhp9pFBoGT2FYLePU45npV8f95tj+TWJNapirFix6d+nG1Bkykxc87f
	 QQ87qwf+12o5mmw7Z3GsGFSvB+fHT+JO2NCj32eF5gDVOBA4YR6P2YAXSpsd5Rpm9T
	 5ZICMWh3+SWRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6C9CCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179233143368.2214.4100709628392628678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea418e4c05205ff6ae26992d3dec9cd804ff68cd9e0c50b61b8fa09a55c4cd2a
Date: Sun, 18 Oct 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792331433
