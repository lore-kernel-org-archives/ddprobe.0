Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F148D26ED35
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773274494; cv=none; b=t8ff2SSpJanQczPL/8Jv43WF6mcZQSguidfa8A1Prve+JSVJCkRwPMvol4ZGXWkAHNT8UlS63pCgArfHIGbhKDeHYRyiP+VLu528ZW5DFfNWoPGnZmiM2PTUF5QXwggmXmdaSroOq7IKo+QMJaZz9rW2QghgCeHAHfmdfX8Ty3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773274494; c=relaxed/simple;
	bh=dy4Irbv3wI34T4gAf5hyzdgizKtE5SjYvx9MTZVidj8=;
	h=To:Subject:From:Message-Id:Date; b=VSaDBcPmcI18nTp7KnH4DdUHs7ywGWk04cZvH2gHHZM7EZeiLbFTE2VmFDo1PpTSHemEQ/slVg7lZWt4eagFys/fVcqaGxsYejF2CFxbhhI4kESC3mT7TSmn6fUjWZKeq0zv5G7Kqhq1pKrcnB14u38wS7buk/mwX9OIIKpq5bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rAvifZnO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rAvifZnO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A345BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773274493;
	bh=dy4Irbv3wI34T4gAf5hyzdgizKtE5SjYvx9MTZVidj8=;
	h=To:Subject:From:Date:From;
	b=rAvifZnOiQJ1zvy4OCdq0Bv1eSD4PKRyEC5wjKN01Neoi8JvXdobRaQstfsRN4COI
	 fbhbQslOUDSpuTAlK2RmRPJAJ6Umf2Wzd64pSuEXWzv7vPVam+NlfdcGkYOuY0putG
	 YFR1ljYWFSC+7R56kl1cazPo40m/i0IqQQUmPL0uYB2aTHQR/67L61yvC0nCoRGYfj
	 6DPCVbigFGyN34+aIFGrUNnYoMivTW1iNncyd2he8/su7aVSSn/ptY1yG9B0SZfUUa
	 ntrqBIFl1F2REwAMJ9MvYJ43+4MZ0lUKWkdV+vI9WUWpSVHjmF8mzRvQIw4E3UNNoj
	 ni/t3hoZH5tig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908B9103E2F5
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177327449358.8306.4871133054861564938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4148393d4754a3ea3a8b594bc14c1e7658dcc390ab2ac2b7b70b133b3e0d4bd
Date: Thu, 12 Mar 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773274493
