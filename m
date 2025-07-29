Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B78D8F54
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753819194; cv=none; b=ToOUDQvSFQK279HhND3xFA+Myq0tSerFj2qgpa14dRJ87qpqgfanZb+bGE/dI/AMiZTH5TlxdsOhEPlCHuEUsQIs5PZD/5SwoyNZOn3DSb4RnECdH0IKrt8vCQY3Yq9cuCXTYXgigOSxj0HCOpCaBLsq2P+xAp2AwGHjN+i3h7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753819194; c=relaxed/simple;
	bh=Vau3lKjgEDl1VUllYxpcS7NM5EAspq3e7toAsiEsLYs=;
	h=To:Subject:From:Message-Id:Date; b=tC6s2JV2MxEvgY/rlkUWZsuZtKznj8mq9pHaT5fPQPjLhvJAw4C1aVO+gPilw7XOfn5yCjcqALyw5BUGhAO2Aw5ig4RPx+pOmPnUOMVHu6bDtgDCsNFIbLwczLJEq092+GKpHq2yF36VbEJD4f9pGNYOb2wfDbARH3BKHFYIf30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sa1xtrF4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sa1xtrF4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C68C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753819193;
	bh=Vau3lKjgEDl1VUllYxpcS7NM5EAspq3e7toAsiEsLYs=;
	h=To:Subject:From:Date:From;
	b=sa1xtrF4C2Xk1mfRP7kd81jTPYa2oHKP8eGc/xfKbChyMuxU6H9xsPqKrZBvSQBwj
	 terBVgxuY1kxMApwNJ0bzPQ0RL6IG0RONn7jxGZzuef1QQVmNrM2yBzvDIqtw64eHL
	 djqBCeqxuVrQM5XTWoAdPdgfbvQ36jSOUGDNdwnzXo1POBSh2cRf0DbR++T4/QsI/U
	 9FXV074a9Quy/2uSIwGq/Rh6WZTmAgpmHJ2dulq1SbOxIctZzskKbmMzHDgE2urSdt
	 b+ocvmsmDgBwSpYsWG6Apin2Htpnui62qJT4ssrFMhI/kSPnawka5k2DtmR+L/IQq1
	 xED0yXc6SSt7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF1EC87FCA
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175381919358.24606.3744735343943629832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08e5b8f37b62554a4fd1b6652de50e784b30ca5c242c60555b24fe3eb3ce0065
Date: Tue, 29 Jul 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753819193
