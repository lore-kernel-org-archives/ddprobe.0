Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F5F566A
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 05:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720417583; cv=none; b=XOhytftiu3auzIBFhFCqJ7Uiym4gnaMNqJDC8yJyI0rqQPFmJhR3oaiCOFi+lFIeCZpo9LJc6FaiL9VqhZQzBGYekypzjVR59T+oWPPwryz6j+7vD3Oe91VuCJmiGjhekM5w38s58U9BTHMahKbN8BRGlsEUrfeT4lvIlB1f/S8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720417583; c=relaxed/simple;
	bh=upQa+iXK+x5gWuOjJymcQt1JNcxG/bRvSc1QtQoHs+s=;
	h=To:Subject:From:Message-Id:Date; b=Kj8v62ZmE3CkF0FGLrmNlfMu3Ha0niWtpdgytYyMAca9ge0m5TYxlPWNj4AsHywRocGqDYAyu0j9KqArRNAzj7nBSXFG2UlLXSGWld2DaAa+OUDdAVn42OZs9AzrlcqEF6njomWevzwVaRqIePh8fbisCEB8OH86t7rHpUsWbIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CSdN/quj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CSdN/quj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1572C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 05:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720417582;
	bh=upQa+iXK+x5gWuOjJymcQt1JNcxG/bRvSc1QtQoHs+s=;
	h=To:Subject:From:Date:From;
	b=CSdN/quj8gmCb5EqrWIjDkHTzsi4JLaNxJYJDaQvlBLgJawrgozTbumDl7xTOHH4i
	 z4jmWgvSNeWTfpXT8WcpLiobJamvoaYJXYeWOrFMWeWdDLdMWzphJi81Chjj+MWOBp
	 8fl4e5RiR/q1wod0NoAQlv3xuWBmZ3RWOEPKh85n1RFIzOaJlaK8yhcIrKPvfbyF6b
	 Yvad8ILUOy/6AjBvuG5uI4RmtJUYUGRXrvWsewKX+oVXoCZTAchO+AQwsxFcQtxa9e
	 dWDDTVRUTkYWu4By9UflCuAWLUgXWt7GZW2mkvs/Insw6V5JFV4Ei4Ft++qKb1fWCf
	 45VSjGCruSq6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCE1BC3DA42
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 05:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172041758276.2656.6642666546123115331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 632bf902690fa7a6ef42c3ab268ee8f5e19b4e44169f8d31b5c16573bb0a308e
Date: Mon, 08 Jul 2024 05:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720417582
