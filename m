Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC6C3148D8
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 16:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781888194; cv=none; b=mMxUDGRJBcksdx+9912/gx+EenAFGDSvw70002U6Vp8kAXMKzxV6DCM1TGI51cUwCIIwL1WAtWAd+byxJCBgC5dikKtH9q+KrgpOb8ikqSiN45QAuM7bOrYep8uKf2UNStHs53SMG5eWajy5CyuSUjtdWbifcrsQsTyHXWgdJVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781888194; c=relaxed/simple;
	bh=JqRywgbFILIiWcx3jZ0lVXRWPliQ0Bq9IeRuzl42lXA=;
	h=To:Subject:From:Message-Id:Date; b=NqcqIOAHMLznIXzL8cDd4PXRI2YV+RQk+ONhni/jdmK5LlKHabV5gc4kKBIoyoc4f8jzFqbQqO2tVOXxMKjNyNN6Dnllh6kzdhurlt5jiDa3V+n4F7HozXPUPa2ppWNQWUIA08JbLjwnEqbVLh6r6VaSruglJ7gpJjzvbDiyi10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ERmrH9eN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ERmrH9eN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5517C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 16:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781888193;
	bh=JqRywgbFILIiWcx3jZ0lVXRWPliQ0Bq9IeRuzl42lXA=;
	h=To:Subject:From:Date:From;
	b=ERmrH9eNBJgtjAJWJbkWZeydLRsk7KB2H2TKM65jE4RO7UUKXN6dyxXxqEeOKVyTa
	 0sJsnjyR0iwY96rprgnlrIJlkBpfIH1rcTjFotaxcbOJyGTFxiwK3CiDyIHcynZG0V
	 AEf5cabg7uyfeXIpmJqFuMJuwTLwFLYTbU58/6R//9M6Q6eBR174TndUuPh7RrBEod
	 0nodch9ppfLszcTcX+HFUumJOkDWNc7LnMCpOoyecJytecIX6iMCCVfxGEHoXObciO
	 Q6dYr+nflq1nPXnOV4V6+1Hw9vKqLEB+5Xum7ZTJyCGl06zi1adTtq4sxMJslUO8gP
	 HsdjVyLmSg/WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6CF1CD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 16:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178188819373.21576.15579531221014615690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01b86d011b7fe9f0abc048bf109b9b44b4cdd772a638383ab334852b751fdbf6
Date: Fri, 19 Jun 2026 16:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781888193
