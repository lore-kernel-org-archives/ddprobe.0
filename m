Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CBD93E5A1F
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790184034; cv=none; b=rZ3IN+trZRc6KtpS+E9ZKE3s7jVWegovYioz4WMX1xWx9znqYY019Jg9Fr3Eipv/XKxWgnh6YwY5MNZjfKAed9wpHB5zGV94a8LdHx3+TEeik6/0oRx9fJcaHL5j/6P4+yVimvDYxNMEmNkKlrynINimOhGS7WeQ9ulKyneluYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790184034; c=relaxed/simple;
	bh=/+ah8jVeXvnptI5V+xXUw+fhKaUNDLkbc2G/wTqDeiY=;
	h=To:Subject:From:Message-Id:Date; b=p7hlmlz/JiSnKcoH99m0eVv4JRKyXgvBzcbn3r9Yr+6xqEioMvjuHr900RL+NYJaX9GOYNCWKDuThlgCb4X8/R8V8YxXh4DfXG6yvzB73Tgp+hFcj1NH/csBTrNqnzBRmb/1BR8arFQV/e1ai0QDKowbWhm6MQqqBNRnt1IY4Xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCJyTyCB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCJyTyCB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D533CC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790184033;
	bh=/+ah8jVeXvnptI5V+xXUw+fhKaUNDLkbc2G/wTqDeiY=;
	h=To:Subject:From:Date:From;
	b=DCJyTyCBiavzRYfJM5tnXA7PXLmo9jH43Dmbm01rXjcm8SmP7zdjofbwHeGl81trB
	 N49TWi/8wwqDQu6Up9WizgiIipDojuM1m6zVp+IRdDT6Wbd4pqFrRDG/fPM2SpeyBw
	 KAugaNoKm5eukWG6h6ybGBsbh6jDOOaOqytuoZPYElu1CD7ICqZsbkIJ+52YCsPK5z
	 pevKLjLU4BU05IS1h4FyCxqGSRe5hl+ST8Q15OxkzdKTHXAnfTGXnah1T15XiVFVZh
	 b3FvoEDJ7JLd+FPitH7lhYzfUhjLLAbyNZgPNAdyVe7ZsuECyL4UvUSM6YYXiePM6B
	 H8c066Qa9Wyow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E87C98302
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179018403371.1573.5589929819326730661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc7f5e00a4754742ad5da0047327bc0c46b8e30f27e0a30bbd7dc15015f85e05
Date: Wed, 23 Sep 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790184033
