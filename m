Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7C0CA52
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747873794; cv=none; b=C+A9SAx8YDaFmZE7oMVen9muppKvxcs/4XPE2+ly0El2MMePJBGG2GtwkVrFUSZQaPY9FZXmtR9GRpmbpqLfcOwmKSc4uspKW6G5Pyg/0AMkEUuMgeBBhX+5sqIxkJcX7N0va2aympJIgPVKNXGKZ2IlEaehMZnFCBgQzLavYSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747873794; c=relaxed/simple;
	bh=QhblVmdFlhWToOz/sGaCvSWd7+t2jdEqiQ74MC3U/+w=;
	h=To:Subject:From:Message-Id:Date; b=Xie/lxWcFnDXgvelclGBrMlQev99+lrSm/MOLSaIaF8c9fMnpfx5T+pNdjOclyJm+qFTh9lHMPNlJQ39UwxjQNN1xMIkaDe2eySYbYJQQuFvFkVLeISoZCX25pofBnWZrr+yNSdyCLLRccUMzDG1ELa0ZWGKy637FCyBP3OUgGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f1Iqod5d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f1Iqod5d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1262C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747873793;
	bh=QhblVmdFlhWToOz/sGaCvSWd7+t2jdEqiQ74MC3U/+w=;
	h=To:Subject:From:Date:From;
	b=f1Iqod5dd5f/Moa7cpLKAkhpMOH9Svmj9hb2FZ9zuFkKBHteOMytf6fhAHLmlF5Ib
	 h+pDa8CNaTH+VXHkPohIASys3BKbZm+cf8EzDKT+9Bw44u2aL+dazbhsGn23YKyjVN
	 0uS8LvtFTWOAs/+z98mny3OJcb0gwl/8huhjjI0YINKqf7Q/DP+9TmOMvX1/9N4jrj
	 p8kAnMwDE87zFAj9mX5Wpu14Olcwj7o1OH3tzdBaXaVuH1J6bJ0wB6f+XFKZRXCxv6
	 YAo2D74vh9SrPDc28kLxCNTJyqtgNiNelbvGWW9y29II+zoAusxkEJ/x8tfoj6+Vi9
	 t70aTs2AwswWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2CCC54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174787379357.7148.16225994996966997344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 657529665c2e57678fe483e6a630d42ae63fdefefdc183bbd7d14e87b316e9cb
Date: Thu, 22 May 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747873793
