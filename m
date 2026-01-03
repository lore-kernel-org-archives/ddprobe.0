Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C27220E31C
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767416034; cv=none; b=mIppPJuOWr/j6zrl9lMpOyjhjYGEHf9uO2/bPua5dUXtOmeAPYF1Zm5YKCndRy+QFvfI3liL15l5XIpD3XLkyVc4KlyrNAMZrPW6fJ3lMeWr2e2TAujoauyz/zDN9ZNrRvM9BOcjZPcfLIrHPg5aaUfCzqZBomeq6/0CFfhl2kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767416034; c=relaxed/simple;
	bh=Pp+fSsgNR0AX2eOXKGrGg3HEpz6OXjxXvOzfPDvX5/w=;
	h=To:Subject:From:Message-Id:Date; b=O0tFA/gaq+o0XPwgtw0qAnHTr4o3dcy9JXjy02mghE+1rN1PMI5n/jbJmDn/WrHTDp+CZNeKOnZ1Y6cEny6j9QUGqx4TEp89HRvpcNCfRT2imvtAx1d6U/+HLMedUb75tKzQNyYNRfJNCVYfExaslZ6xkIcvrZGq89rSUuo452o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JXJSr5/n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JXJSr5/n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65FDC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767416033;
	bh=Pp+fSsgNR0AX2eOXKGrGg3HEpz6OXjxXvOzfPDvX5/w=;
	h=To:Subject:From:Date:From;
	b=JXJSr5/nzSoMchndgi0WT13Ko4XQwBrw1/dI+Ge8MBsJG+OnDDiSIE7UHYPEJhgVR
	 BEvJZTHSMARO9+g+ZKll5htgKvkzod8JI9p+ppTo3s3c8W4YjmilD4oaQISKk2CKOX
	 5SyoyKxZNT42Lpl1+RwkZCXgIoFRYpIY2FcrOeD0MW8GIYeAH5FklIzITrVa6nk8y6
	 Zp3ii82c5Ol42zq4cdnzhAslCRECacYSkMce/eGYqlmcWaDOxMV+aYXws1mDNCkKYR
	 dATSGdlwA6619hOfZ/KF1QVSXNnIZXM4eMYVvbN/R5NX3t3+0c92Z7UM5MyOKDkwZb
	 4GtzauLDi7AEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95567FC6160
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176741603358.22267.11630100383814951743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 476c7063bbb76fea7f63a4da3f982267335b91a89f43b544c2208a5873f19260
Date: Sat, 03 Jan 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767416033
