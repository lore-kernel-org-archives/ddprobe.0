Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E13E309EE7
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758280194; cv=none; b=VYUF5mBMzb7uS/MTNFMVRazvG11WQo1F3sUZdvySgs+Mz94p26Gvz7CbdiGdQxfzYgzwmFk0MJQqtdBPWUWh3zVKyCes+M9Xoeh7N+m4/UCyCruXUGzHyPlBLHPJ4T2rMf2MnkQNVWCL9tJNycXWAg+FlbKSl3hPP8URHPe+Bhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758280194; c=relaxed/simple;
	bh=7SfdeKEpaTcyQ//H+km4Hn7Ehk1uI4oMSFgR7kpipCQ=;
	h=To:Subject:From:Message-Id:Date; b=YOktFolFvPpZZeBg+em11tmljdrDuRH4kixOm+Q6znAMkTZ40aG9kE3Rs0L3dSp7JakTyMz8pJV+qig2LR+pGZ3bcs7Mvdj9d7ORxrwjvg4liEkdkLRubP8ccWfy4tVSkYocol6wzu96O6CJ+W0R3h8m9WZM3ktoZf7iATVqgS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLxlOZoC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dLxlOZoC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E1CC4CEF9
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758280193;
	bh=7SfdeKEpaTcyQ//H+km4Hn7Ehk1uI4oMSFgR7kpipCQ=;
	h=To:Subject:From:Date:From;
	b=dLxlOZoCtp0Bs4UT09/ofxh3C3jSHD0JXwQarFeeOAmhMY6GUw8se3NlQFxWkISqQ
	 iNTcA+36O7nvFWmHNps10/7qON8mR1RllFxOmQ6Y2fpoZbaBV6/gygWN1cZ+ANKnhM
	 sPQXbKeYwq/8BCtU7y1veL92yCamQ3wItBixNW/8EVXUxdfQ1U52AbSnMiSLlp9Ffr
	 w3I0fAHlDHr1bISUqPkxaN1Da64x2voaY5tvC8Fi51nIxlJ0Q9maJz8CKGsKsZ2Bz9
	 kfvCQy3fDmOJaRgR6KU74zw8XGapoKTLcUnEiWKgfJMPPyQbrZ2MCebMrwHvE6n/0X
	 M8iRxnzVEgpeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4098CAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175828019362.15783.8918113228777397396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b1866834d63cf67df027e2373954f8fafdd451a4fd6f7886ac16da7ee657081
Date: Fri, 19 Sep 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758280193
