Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DA61D6195
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758902394; cv=none; b=UYTAp82wtBjJCZ5Fpj6tvoBdICZWJWTqrZcIIMqhvRun/XV2UMnS+2oEz5PF/D2q7fwY46/fLyz3KA0tWXSrn2ShWqyPEcTwhYE8RepRWaGxKwnge/9cxLcZ+3U62gleFebJZR2n9+T4esQJIKglJUIaqqvi6AZ94FlvccR86CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758902394; c=relaxed/simple;
	bh=CEuqS1ZlajfSPbRKrGdx+MgTjAbhCAnjmMsW8dmwC/I=;
	h=To:Subject:From:Message-Id:Date; b=maQqQe/Lic1fOWSkqZrFW8myh8aiVjYSJG/5MMegxtj+eEq/qVS7r+NorJx7NNyHHmMHRyb1sVzsuJfjomc2wdPkJCyrtkhKLuwczelLHfvdIa495vMqQx5cwOsSSxQ9vEEY0HaDOHxvp2l1+2gSkVwLztxe43vMofjq6XS90Jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Go8oTZSW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Go8oTZSW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E59C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758902393;
	bh=CEuqS1ZlajfSPbRKrGdx+MgTjAbhCAnjmMsW8dmwC/I=;
	h=To:Subject:From:Date:From;
	b=Go8oTZSWkAL0BT1XKyg35YtUY+9ZVCkCLTFx6mZmal9uUyGacs/xTTpfVANsnecL7
	 SVax9tZbg/ijqDViPtJCoU4Q9sC8peMM7JDegxYx+vPhvhecPb6m2Rj1DGNB8nFR0l
	 jV6V0aN9dWmjVMaNkYl+gqOJex+HxYYMjfW7FfzXm3kpVYz+AwRSfGzQQF5SxcQWeY
	 6XD0EZOCD9yGNig+nE+7GWDOyoXlefI1dLT+2ZTlvbTsOBXGEf1Qp/xTsYDLjVX8nu
	 N8Ze1popPHDeChieV6/lIpxGk4GDgeDBEvmjU+p1DUeO5qwII3gwiPrca3QTp2ehKu
	 M96W151dbTZaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937C8CAC5B9
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175890239359.20573.15896775563630641746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87775d3ac416b9ece6d8e8099e8babdb3f31d4842a3b6f658eca28f4097705c2
Date: Fri, 26 Sep 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758902393
