Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9D6257AED
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746619194; cv=none; b=bFZLtpCswRb3tJsCz1vn7G3B7NcweSJ27pyqiIuE7whP1w3O3ICjJRU/qfadgnqACvko3qWKYqZUI8JaPwFh8ESY3d6eFczIHlA7f2ZG8UtDcYCHqiKgD43LztpkhtVhRGDgDOhF+IheQiUV99cb84M1luW13HMHfc2iVAT3ozk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746619194; c=relaxed/simple;
	bh=k169DAbAJdjz24pVDLXP9xlqUaU62fpwqyLSPEhHAY4=;
	h=To:Subject:From:Message-Id:Date; b=JbTfEO4ZqCWOH0FwqB/aUO7EE+xndOdJCIAEvsFtROsLrvkfasCSSv0SwSkOysV1ArNhk1gmZGeDA1B7mOyGAuX64PDUhxNdJDt3D57uck2GJmmjnXUfDd/FhfjaJaAQTnD/s3F1Gc8DM3GNPjresXV1VohRUlg/rizPZ2gCmws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ej7HpnT5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ej7HpnT5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F728C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746619193;
	bh=k169DAbAJdjz24pVDLXP9xlqUaU62fpwqyLSPEhHAY4=;
	h=To:Subject:From:Date:From;
	b=ej7HpnT5Uyqlasy2IeUDxVea4WMIzOaeRTdPM+fJXrrlMf6BFBs4HhEctDgRvowmz
	 fr5xRr2+cU3A2yQEB1d82m3KpIFmlgnDxXxuZob+vb/eXdwk0whTCSkAoO94VLiW/A
	 cMKRlWrt/AyufRumKuVKtQhPfAtVSceKtVyn5pT3/EDQvycEOXR31P+JRm5plYm9kt
	 v6p+71nNvXNmKGgdhSYdbv9kSw2LCMYLtDOzL92uCeGdFIu/d4oMeVhJ5AH2awe38r
	 4R7B148xOmDv7ccN4nq/tnzVxcGjAeYhifKfJODT75Y6pIJs7UdPpHIpkVa9IJvY0f
	 eCpEs0ySDfDow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7BAC3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174661919357.31861.15364363758957752498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f07469a026b9d1dd87ee463e5f09a46af403dcba5bcedc8e384bf40070763f19
Date: Wed, 07 May 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746619193
