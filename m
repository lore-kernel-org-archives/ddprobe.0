Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA45D243367
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 17:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763920313; cv=none; b=j/iKULLN/V8h4iNijgytsKzF3bO9nSCVQlwVpkJBIxEsWeA92SKzzM3DO7C8SrrS2QcEdRz5n39oWAe+vcXkKczshAigGlul8wGV0t7lN3A/mlQQMBha7CW9S25TBiXmBZZEncQyU1/t3cDxh9sWiVCikoiRUYtArhKHOe8kcfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763920313; c=relaxed/simple;
	bh=UrQ+4C1W/za7KCl0/7fGnWTkXAwDqGUSXdKBJHBQjtg=;
	h=To:Subject:From:Message-Id:Date; b=BvzeXhRqO1Hth+EKFTLjz88CmPEb9/qYV+HKV0adhlp+btcUhdqqqdy0EWG+7pQFImWlAA73ren8dJnKvIxGkx72v9MnkmEI7MspMoqNQ5lbwamR67O5ctc8sV15IctlMvI6OdqMq2rLvji/bdNZ56P5vnui9JBfLAC2h4aY34k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rx8M/Yr8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rx8M/Yr8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F00C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 17:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763920313;
	bh=UrQ+4C1W/za7KCl0/7fGnWTkXAwDqGUSXdKBJHBQjtg=;
	h=To:Subject:From:Date:From;
	b=Rx8M/Yr8r+i9e3zEHTrQuABfaLRFKWblZzetqi2AitDTzImxmXPcn1JAcykZCkgCy
	 9RXTbblv8ISODH+Z6ie2aEreWQiozk08j70acU1GvX9Ze8wWkfq6ygXZYzTvEKEG+t
	 M0CelJwCtNUkhTX2U94vt2VgKptGg0fAPM3knvDI+dGlaZ/wmwNPU1FUn6SFLvwmEN
	 caxc2OqMLYIWOLk5uDPYLyFVO60InEsTSBNbstG2fdPhcB39/gSWR3s993OVKH1JT6
	 wt39wK4sQ1Vm2KrZi46Xup/QYiySJtUn1YCHQxtby770gJDWl7I+JzE0p8plzwvc5j
	 Bb+8nGQ1haa5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9576ACFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 17:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176392031360.7751.17614646364625636813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef9439786c30a2bdc5b5cb1e9cbf0b8290916470767ad32c94889abe56369940
Date: Sun, 23 Nov 2025 17:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763920313
