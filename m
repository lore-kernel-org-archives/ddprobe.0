Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1383E27B353
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761620994; cv=none; b=OkiQ5o7XR1mY5YjUdCOelJXEqqQ/7YmGK3ApkI35PxdNU7lSU5IC2zMg2YjchOe4dlqLBIFsf6F5KiR573JuAn7K99gPodN0f+j4lzv2m4QIWKu76nzQlyJ0VMnncaXcLMiRL2Kzv3asE0PzZweFBYZVMt041kAdEfuVXMOCU6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761620994; c=relaxed/simple;
	bh=fKUTiHS3iVIo/KLN/6KepenuH8sIsVQH4OoU2eVPJHE=;
	h=To:Subject:From:Message-Id:Date; b=lW3L6KtcxnspvPAhnsIo+WDAWXOD7H1/E3BK89yanr7ULuLt42NlbRCKB4TSwOFPQeqYFiyjJ3QjzyMXgEYMATezQz3mmGJ/iUiv/3+1t4eWWfSb8R6+md2E3D/R/JnW4Mu58A2zvWg9I+hs/D4N381yGEOdmBVZX4qWGvI7SHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iD3mhSkx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iD3mhSkx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30AAC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761620993;
	bh=fKUTiHS3iVIo/KLN/6KepenuH8sIsVQH4OoU2eVPJHE=;
	h=To:Subject:From:Date:From;
	b=iD3mhSkxNyDJdVzKNwBakLDZod0u9S9LQNCLOPqD2hVUGsD7ht1yzk0WXA2Us07Lc
	 oUnQMD9bvsZ85aap32OoA683bsrN4teEYUVgePvviI5rDVBtquFJrqUCbPq+E8wOeb
	 SiphLV34fr9uPG61Vdijv2wBdCzWsakIZD0CqaFK8Vn5/KPsh/bAipW7D0AywaRbA9
	 5FwZ+t5xpJTVMbeeWi+Xcz3smWoARgYId2R0Zvzdnu6swJhizvB4ZwxwiPOMAN/RdK
	 P5LLM5SLkZC0sX5EIW9gD+ChcNw5pQcGyXE+qczBDq1N/s7wrr7Z5VEuBIH773/Itt
	 HqAd7zD1Fk1+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91386CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176162099357.11203.298402350228527680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e78a25500d65f8cab6fe24796f4628b647cfd783fb9a95028cbe1b873e108c0
Date: Tue, 28 Oct 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761620993
