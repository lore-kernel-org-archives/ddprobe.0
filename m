Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0DE1C5D72
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791115234; cv=none; b=KglBV0oG5f7gWUvt4ytbAyKVTbSJzmbPkLsACyNRvU0Csj/RR4dhEokxa3XQ8kYhvxU+h+s+vKapNbqJOAhutIP/1/IWOmV+r40qjh4IuxYo3fw7d4QWXiGmLK91zgJsDyQo0nEkDS6dARto8jlaNYRuvEssMKINEYs+VGDarLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791115234; c=relaxed/simple;
	bh=C98C0BP4x+2wuFoFIeJqh3HMrpuMsqmqFEZI6Z0Ux2k=;
	h=To:Subject:From:Message-Id:Date; b=Qnws9lUe6BJt9a/rnnZ55gT1XkSt0J70hp4vCsh+Ld8cqEcrhi+iB9WfLrwMSw8vxa4gjRIgEQc7x7Qo7jrmFt/O1ura8DEnYwA2afvz3LeVhiMto5ttcrT/hmpUqYHsyWEDSULWUV6fpcB3BjtIbUdIMkHExswkznesN3BoJw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWrveRRu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWrveRRu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2511C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791115233;
	bh=C98C0BP4x+2wuFoFIeJqh3HMrpuMsqmqFEZI6Z0Ux2k=;
	h=To:Subject:From:Date:From;
	b=VWrveRRubkWtAHkVDZgszTSNzecOTVYWnO5TIUNer+RnPf0rkO/R0zi6IF6Wwnrw0
	 Nsmvyaj87LOeaL4C30fMsIZCkpip3sqb6sjUyIBASc0TBKNgeDj6iUq/7AdkZQvl9b
	 rW2e97CNfXAlgRxqEQbwa0cMhGL61ymtYkdWJt+rNgH/jmwDpx7eaaA2/xIvg4s49z
	 Lv+UAWw4aB/CGWN6b4lVW+DRA3HDJgV94MF7tJepQJ8TJd/JZ7VKK6G5w52PdDpIAp
	 9E3Ht/gOpU+sDRaBUPOILTxs+HEKQWkMRicz9sSBXPSDVvI3yKjE/g9vQ6FEjoQZd9
	 gHj7S4kOS2c/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDABCA5FE6
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179111523368.13784.11834198892464778656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f0c90fff48ad0b84903f91396759790ab30231616f30e910897f7e6589d3e4f
Date: Sun, 04 Oct 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791115233
