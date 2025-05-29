Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF471DFDA1
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748495994; cv=none; b=VQmm8e3NsNZiV7LEmfx+fcbYadZkNpkU/cwdEUhEVU+yqgzPrX5b/RugSfKJXDynJwNcbj+8DR3Zi3sz6lSPLic+dRog5IsDjewH8CsdYUJJjvVFgx5hHLrkXferTyWvxg+zHbZPHWztJW/b/8jxV8wCsn9v0cl20auHQ4WGcjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748495994; c=relaxed/simple;
	bh=Iz6uIg7tyQYCs2yUPuRS2NAAtnd/UsMbohXdmpj6OnI=;
	h=To:Subject:From:Message-Id:Date; b=POk1g9Wool/1gaY9bgeYA9GTVOmVXOMCNAQfLGs2YM00f3qoMICdVVEq4IHuZuHRKZLM5olm60fLOq1iMVSqBI34xogI4dnIqf3E1fXRK8g5koVwXUtoKrxIYeCJZqreaSz5S55ReT0KBqix+1SBMGj9zqyolnixTK9IGFw3jzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EKHNTFap; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EKHNTFap"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2037C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748495993;
	bh=Iz6uIg7tyQYCs2yUPuRS2NAAtnd/UsMbohXdmpj6OnI=;
	h=To:Subject:From:Date:From;
	b=EKHNTFapy6j9jZ03JYDZfwhfNFAUJaRdS7kbUdfML1FHiqXumDOGmuZJcuBm5Ijp3
	 lCKQEacElxhYvIiSxgrwERr0iYQnWAOPADJ/q9NrqiaO26AJSOaa0HATOyJH2FLeQ1
	 6q5fumnMeJDFG/2idfpn8CyYIMSpqeZWHuOSACpI42/IaQ2aATQNQXYIXX9AuMyBw3
	 0oBF27Jc+3EiM61gKASpr5HtRb3uRO78ddcWdPPB9e99h8yyWTdCfuWvMtCjpzSG/k
	 MEqd4MQKG5egoL6drBqOFEJ5FggiN2ebLUNlLngY3DNFXvy0pKlSAT30ouWCGGc1D1
	 RpaEHonXZshuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9B0C5AE59
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174849599357.7493.7220948986981423686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d79ea5ef4357fb944e58544e412d14197c5fae7c3e75238d6b6afc7b8e3bd079
Date: Thu, 29 May 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748495993
