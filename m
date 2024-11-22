Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C463C2F
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732236954; cv=none; b=nOo9JDxGyFhqXvLinZLyb/C37+zPnUiop59sDoWQUu+RKOfyTRgsJ4jmZVuYpljAAOpjYCg2Uh5JpM6j/3t52FBSBzXiog0Sd6lmNO5HaC8Mj72r/F0nzr27v2Xyx3Qb+n2iW/4/uAPygiT9Sj/Wlq2gZl9XdfLzl754CgsXpPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732236954; c=relaxed/simple;
	bh=F6W5c2gf4cdVKb1NrnM3giarOlrAa54ci0tcLPq4Gos=;
	h=To:Subject:From:Message-Id:Date; b=jgHXHNdx/l/Aeu9HxnnAHXb/VgMJFX5yI1cCImrsbF3siYelUM3yqbUFawNDwJg6HWLEaIsgTllnOlz8iuzv2ttYDTBxF/aTJaR/OBAse3ShoTywvQFzzUK6tGmsAbrpRhfAJpT/nxi+aL+HwP7Pd8dlC9bcoqaXPpc0ONe+IoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TudTNTBR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TudTNTBR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66EDC4CECC
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732236953;
	bh=F6W5c2gf4cdVKb1NrnM3giarOlrAa54ci0tcLPq4Gos=;
	h=To:Subject:From:Date:From;
	b=TudTNTBRyuolJ9Hsi7ymHhlMIBMCkSZUfi0LwZ2Ayi0F2PAGt2dTFxKOsARnQpHmU
	 TaNhWDP8skvkq1E3LEUAslksZPb7WsQmCmuRKKn6zDlXsHLLfqn/VClnB07ALs3Xzj
	 Ws4YAis91Ais1jOHANgbJatSEpwOBeqHP3zX8mw7ZliJVnue2eQ7KVc+mny6g7/Exd
	 36eu+42SuhDdUu/2UZq5BMUVcnC/sTzEHd0YMJLG279FjG5I5TB9dSwlHLc0o9MtUz
	 EnZxY55/BsdFJx0eYHIDyJCaCM1kkiNPhefGDkfq1IplwuQsB7Teiie7JO9oeV+cuc
	 3aRKjHP0He2Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96932E65D0A
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173223695360.20763.9744009982985769115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b9b4ae080bff9f341eb4408567fedd7ceb09e324c81d2c8bf690fd08cc72ec8
Date: Fri, 22 Nov 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732236953
