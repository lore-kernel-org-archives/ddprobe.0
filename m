Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339ED2AEE4
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 00:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778285854; cv=none; b=CXpabvxKysL7LxAC/xcDpFkqVbh+M+I/ZDdiEP6K7xlAITZMv87XhYmyrKz1VToLi/lV/PCn1e+0FMRIV4RuXut+XqgZrYrCpJE51cFDlQtffHy6FVK+h9Y8iAM+N8w9lkyd+9BcnOF1ac+ucCmnIc8tfDdL8/nRPY9DXk+FrUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778285854; c=relaxed/simple;
	bh=MGmPdahHKwh4KBkCkvb7ZqJcbgZVjUfuMyMxqPLPgig=;
	h=To:Subject:From:Message-Id:Date; b=B0AECD7xCZwNrSgPavk96lC0rJHZHdvh74MLzMIhFFqV+HUrDTp3hQo5xHe3Y4ndBWXdhuYoqrSeiM+xyYcpdOfqTPM/CTN0cA0n1GL5TA0AUDQrdABJHHOi29Fqwjpqld80G49TyfCd7N8g9hUxtmUWcrf0UvEiT0NYGaDTy6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R2MqpZH7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R2MqpZH7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1923C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 00:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778285853;
	bh=MGmPdahHKwh4KBkCkvb7ZqJcbgZVjUfuMyMxqPLPgig=;
	h=To:Subject:From:Date:From;
	b=R2MqpZH7oRUY4hhoOhLinc9HeYGesYiIleluiruCGgSFtCGrsIDYsSlZsv1Njabpi
	 AcHeXAC83wuV0FhT0MdWjpzV1Auz8FXi3fNVydjZEd8wlAm1mJPB87VaApV6G3ge7W
	 wWB8YigF95y+s6xbMZGol3tUasNJ9KcuZzF8Ibg19Y6CN+HmXxWBhfkma1YN83yZwd
	 N+rAQpzEdVpSl33ESgEwTkY0P4dLsc8ntzbw5O9lqShZoCiSai6nkmHLpl/gnSaVfA
	 fiSJ3N7GN6+DV+HgRctm3uf4DyEVcAouvOaBj8kf/xsHSf3NBLBEREjAuEcnUY0/mP
	 wpb2YVdnligig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02F1CD37AC
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 00:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177828585368.22065.17011463471915498313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a4227aaf2693fc232e448f32df8834fc65d974a2aab51d7945f536134414e88
Date: Sat, 09 May 2026 00:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778285853
