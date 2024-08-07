Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47DF41C689B
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723029954; cv=none; b=aZpv+p/fUPtKNn26rilHiX7j9rG5uMppoADDMQjtwQc1ZIzIhv2qeyUraGSNS3YhSZGE4PwaUsvu9HdwgFyLDLkb+PhpsooT8YMAgtz8RR7KiaKf7zVu3nMFCoBv+/TGw7NPqpSEhBaTTLoIrjcUn6tn0jHRdLU8Yw600fVk0fM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723029954; c=relaxed/simple;
	bh=NnJEoNnbPFp2457kkWir+/XCdM4dwm/wuUM0FGEyntI=;
	h=To:Subject:From:Message-Id:Date; b=TvaSwpWFzH1lgqJh4dZYqa8M7LqTY9pburK25wasG+XoIalnnPyoYIW19Smtq9ba4WILlRWT7E+PipQ0C4WxQ3KO0c3L41LuMfXOc5/DH4PwMlDC4f0svdsFMV9aq+0h6sBb3K5QV6nLT3fav8NQt5jvSHyaknOZSYRJWoiCvSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=roDgBb/G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="roDgBb/G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5D4CC32782
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723029953;
	bh=NnJEoNnbPFp2457kkWir+/XCdM4dwm/wuUM0FGEyntI=;
	h=To:Subject:From:Date:From;
	b=roDgBb/GK3ZWPQlXy2WUaiNwQxj3tzICy3utM15nxH2WuFm5wQ8KsZJl/pNwl9n5/
	 h/SR7oACiCptzWpDaXGb2HswC617tmxV1/4Ngw2kwriFaEzgcyZaHcaB93Ah9fEllv
	 jrSMK7V2FmG8MnJn3iiH7dEz6MNNmWRo78aXe5FO1hwfJ+U+myBXfBoi+AlgDICxZP
	 eI+U814kTaQuQN4ZE4F+DvhHticy5oZNyKNC0NH5PlRqw90Vl4gAgvEvrPFxD53W1u
	 hQ/oytyMJmb7+DDVVYIqCwtiUHU5oHuCwoBO8XQDkGnSpQbbfvNVI2z7Rhq+yb8GHt
	 z/6MR2azdCx1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1141C52D73
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172302995365.2670.3243166536920802567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d6f0a043d4843a7fbe964e1bb01bae0767bcb7ecaee7feeedae73f8a45f9477
Date: Wed, 07 Aug 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723029953
