Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 602B1128369
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 12:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720614983; cv=none; b=BjJDJeJjcXsk/dzd3TtX5c4D/iRxJqvxs0Ot94VRlKOG69lLGYA0X1bW7YSwcmwU7qWsJ2mRL0zov0ZUmPtdT2vjw1ZY6v1VAL6TaRjMslDeAN76k5DkzoW4Ciwi49Jq3M6gK+nU9gCEwxTe5GIWdKhlmKQWWVCwPkG81myJA5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720614983; c=relaxed/simple;
	bh=arNqoeLbr8FLATzExd1GC/oaisD2esRZTYdHbY6LItw=;
	h=To:Subject:From:Message-Id:Date; b=XwYFgt4e/7TNeMQXyWU8QnvuNT9ra44qAq3mVoiEOloz0CmLibB/BBfB9pSFuLX68792BwlvFspqbHGRyZS+XOlrfHv8CVKeJfR6llK9H5WOLpx5Ac/6Q17boDoDaond6HSVeInLhfRUcbG0VvwPvwPWNzOEHnZFBdH+NxLEGrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iQ4jjnmS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iQ4jjnmS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC4E7C32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 12:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720614982;
	bh=arNqoeLbr8FLATzExd1GC/oaisD2esRZTYdHbY6LItw=;
	h=To:Subject:From:Date:From;
	b=iQ4jjnmS0GncfRZ0YCLYQlEJBS2O/k4R4AybrAadOkeEeTv1LFGtt/s0bOfEdVyLM
	 lHa1+0e6iVso5ZQb0SYASfr7H4P7/R2hb1NDGyKk9iM1VRiFagf+S/7MWWD+50dvlG
	 eSAMcKYqsb9kTPJAMnANuznDlQhOi4ndaMpRRDpu7awQgqRS7vknkKaKbT/ZYfgX+T
	 scZT1jd1m0uAvfv+xgNtV05mXgbJOCNL6oOzJ19gulavslk29Y0ZKnWcUHW7+wbUKS
	 nIjbGmgVyzrrJliypulEJqWIAHsqnZOd0stR1ALoficyods1xPE0//eL91ijOSD3TI
	 odZyrsVbvkYLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8123C3DA42
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 12:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172061498280.16791.11135106062330237147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb68d57a3c0a6daea9c669e31163e5a372b7ff3832b726136b867c9dc2976fae
Date: Wed, 10 Jul 2024 12:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720614982
