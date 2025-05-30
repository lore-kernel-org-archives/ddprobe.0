Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECD921E0AA
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748597994; cv=none; b=WXjNddHuv8161sH5+4PQWRsXGkAy5BqVqjnIacADF+hfNPkgslDs2nf2JPeK0u+8lqMJiZzFVS60AC1HBBRnJElDqnvsUv2zv12NZpNF9pRjzBuSKorLA7k7TLfr+UTZfe5njE9UlRNWwYtXnIdujtucXBAYhxWkUKIskHEXOqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748597994; c=relaxed/simple;
	bh=MEYnWEqRIV+GNAyjWbuD8Dwu2uzwMIEmul0dUhGbxX8=;
	h=To:Subject:From:Message-Id:Date; b=nyvGzLvHAiCkyigz9EQZtCmVc1oDB09kK/G4yQjvu2zNdjNu1cRmJeefB389fcaOyrAVLvsEaKeLHrgq+VaAGn6+ru4NxMVZqefAob+fhI5GqGE0ScYrcBaTzfCNjqDLHoNtqPZKYTITBr3D7pGcINf6p1QxcjyxaAybdGQviXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WzqSYY2Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WzqSYY2Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F974C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748597993;
	bh=MEYnWEqRIV+GNAyjWbuD8Dwu2uzwMIEmul0dUhGbxX8=;
	h=To:Subject:From:Date:From;
	b=WzqSYY2Z9wTUN6sJCe68XgTUNHWb7VX5TgN1Y/VsGPfmmLqsINPapiWINVLd73J9N
	 fGn+Nxx5egmmnZPhWDCwQDL0n9qJQu3LECzbFbAzW6dwyBjyWXPzJxTz7C3T5lmq9G
	 8/wh3Wpej3IlZrWhYk5Lj2xoFWOrVftHgPqHYURgt9PbaqSEu2wXAsEjzUuCXsXGmC
	 v38SKbd8PN2XIyZvJ+E+csr8xWi4Kie8AxHTo92Xi6jknptkaGz6DAocn4qXBpdBbM
	 7W3+97UdbdhRPW7j8RPSpLtHqrmqpVSx5qRqC52LTrsYHCKLR9ptBCevYIMKS7JxCR
	 I9B746bRLK+jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9D2C5B555
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174859799357.16396.7842517772421046154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b57249d30cc74e2dce2f4d70159ae6fa7668ccf1c584e2d063591c23ec9f0441
Date: Fri, 30 May 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748597993
