Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FD23659EE
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770565434; cv=none; b=j7uPXOachOzyM8N4doZo/C+bGZyVjNAR0m6wjGyJaGztJNzOMh0LhaUzHqxMkMK2N/YsDO8Vyl+Rzgle3WAS9i2d0aksfjlZd8MZ1qV9at/on2O/0EMpg/uC8av9bdRfhrLamuvZvt0cF6naGP62AI0vNk7iTcOpjtcNzngFNYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770565434; c=relaxed/simple;
	bh=fZuz2Fzl89+IgDyKjOjstnbC6tyv8A+n6N1RZGz+gpE=;
	h=To:Subject:From:Message-Id:Date; b=OLkrbxAWFqg+E+7fjKLYcBonXPnbsrMVpQJzqZFvG2c8W1ibJccuN97Is7rrQWTl6zDHLPN8jOYEGPRN0WifKhhxeCery8pFXYClxgsNPKcpJQK5b23hUM6p52d4nE/ZYgE+1UJN0tvw9AMIoOPUFMGsA9msXzhI0jFoHUshlkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QxnCA8sj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QxnCA8sj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7AAC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770565433;
	bh=fZuz2Fzl89+IgDyKjOjstnbC6tyv8A+n6N1RZGz+gpE=;
	h=To:Subject:From:Date:From;
	b=QxnCA8sjVhHTSRHsoZwOVzs03RAlhSFeRJyUEe0lsrD14ZObDC/2NvKEtXi12Ewq/
	 BAx2xe+Kc+z2FZ0yuNgXhrxkd3HPuC9VmO4C5/2jpcwsJbPHwRPDbx+WDbzId9i1ev
	 UNY8Q1d7+S2fEMTVWDmlAp77X6XjH/Z9bi+TJe5Q/Fwwgdd7jk4yUqtEXm+M/uOSyo
	 Pk6NQysivszxRzYdnxjQZQ83QmA9mcDvUk03cnNcd2RJQx5mEO0AjY2qnSXx1lixpI
	 gmEKl1LXIVScFNPz+95QZyNKnI9s1bXONZJN1OZmrSGHQtviNQ7y3RHH0Jgi+vYTMa
	 pfU7ke/ur1rAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975BBEF06E2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177056543358.24875.5176919833899270339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f512e50cbe3ee74fa4c73f53fc9a6922d1014a945d3a2c6f96b9e3aff72fcf76
Date: Sun, 08 Feb 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770565433
