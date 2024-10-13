Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282E613AD0F
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728821154; cv=none; b=JX+HaXSnISmgu66GN9swh/ijCEHy3I+YD92PkAKxC5YG6s3qVGqmbp6JFWU8nKmv5DEg8+k9zs60HXIPFcgZO0K+UPCdfYrIuxmiMVEcYC4YXJ8VIvCcBfUrZDd5mRxYEY/y3ptRCQA3LUR3DCfuQPLFMC6Sy8OcX//wgwiVHmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728821154; c=relaxed/simple;
	bh=BhLSkyxzHCWj0l7zM+BavwsAtGhSbRnRMHw4BvGsen0=;
	h=To:Subject:From:Message-Id:Date; b=WDVc8juftYQbMlsOOp88BxzDadbIneZwZewFkJrm5KzaMg3wqyp8G39Qc1m/dusVCAIfhFbyPCXKzoX6uDs/JRgHb3WkTKxWy3rHX/KmBOzALDhqs7dh85f3LHek2Cd+HAUCn6GGV0D/FL5aOXv5t6JEqMob188tsnRM/GyTmus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hyqPQ8sp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hyqPQ8sp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2884C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728821153;
	bh=BhLSkyxzHCWj0l7zM+BavwsAtGhSbRnRMHw4BvGsen0=;
	h=To:Subject:From:Date:From;
	b=hyqPQ8spuTW5ohxmySYDrTxESKckGOAZzJIJBNJDH1oVveqgs2kW+N0gPiMtLFIAA
	 qIAfPhTBzos+PUD9p7U5HVjryUQxz85ObrVZimNxQT9yviM1b8r63TzSoAbxUOlguC
	 nNcYd3PYe2f4rGEurSrNZL0BF5JIyVBA/TQcBQOxx2ZP+j15t7SWNPXTsu0VP2ye1I
	 xSMIHXx/6gP2DuQAwzvBCIgTcW4UpRevF+YIsoEkoACk8nfzEh7AdLhlHc/4YxwVPV
	 JQ21KLhwVAXxy3WB6a00icUzuP/EHSmLS4UhMsv7uPU0ko9LDTny0q354+n6B97kd+
	 UST+5DlYq0Jfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C579CF2576
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172882115361.29846.15842518226842943926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a45c3ed0486e3e59ba47ead53c05a3a12e5834747f2bf8425e1f031105df6b96
Date: Sun, 13 Oct 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728821153
