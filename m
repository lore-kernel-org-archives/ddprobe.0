Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D38A42CB1C
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789228234; cv=none; b=Sb4Q7vNBDz14zv1u/DK0woA9JAdk9HfXQXKo1yoRw0ih4rQIVTpmRdkMKABMGzMew5QvDLONnPGm7kH4HE2UnOw7zY9kjE/vKVQnhGZA+lJni1YEg++ApeYEs6sYOet9jWnyCAT79+6GpcFVVTFL+VUbMpTGeDsGrLNjV2xxo78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789228234; c=relaxed/simple;
	bh=FhmpMB1YZ6DAdgmf7H7Kxt0lBQxOVtBgY2+NZJmzmtQ=;
	h=To:Subject:From:Message-Id:Date; b=rRhpFb/xtvZtU3ai1VUX/PldVvC1qqr+AwQqg0/6mwLAqqw4eJgPZQcLqRuSkntfECnMldAGADKXOfa/B+RhsfGSFYhwoTJfMBBQnrhyT5tnNQ2KKZX1NAMkhSlziL/uDGvu6/CX8uAiK09nSJI68zA2i1q8j+a9GeiKiMXW6qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ooH0iL2K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ooH0iL2K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB49C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789228233;
	bh=FhmpMB1YZ6DAdgmf7H7Kxt0lBQxOVtBgY2+NZJmzmtQ=;
	h=To:Subject:From:Date:From;
	b=ooH0iL2KtbJGi4M/8r5VbtcjfI97Z7hqhjxGAnrOV7+CugqW6gl8VsasDiq6fHOhu
	 piireOk7K1qalY3vNoUKbbp1kUap+bPpcm+NR/mcte7DKVdhLCE79eZKKsb89rAigi
	 DgK13LsL+2IwFsHdnIz3feCjlp+i9btqSWlghOgQwwA7gQlSVNaU4jIyxv+kJe10L5
	 YKF3MZkfIqJI74GuNjIZB5ZOrVcqQT9UwlB3RwyL4UE6BXW9UziXSjPMQRWdTMAsZT
	 v06ye9MY+ubVZXmHdia/th4E1584hlSulKfnrQSKBuWXu2ewuKjJH0jmceFZb335vZ
	 r7qLcnt71a86Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BF6C88E56
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178922823368.19482.17766272285907764373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8579b496ef27ba42d5a68cbc3110df7ba25c12be32de2d0c53d304cc3cb02f7
Date: Sat, 12 Sep 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789228233
