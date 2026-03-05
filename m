Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3B33B2A0
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772723694; cv=none; b=qp+lduwrBuheZVFgbTI7RCgtAsJZ2s+EsHvW0ln/kjgZ752l4x8aShveEf4MQwrxpTHOxJNjQCQk4f6opKAF4iVC4rNUWdBvuTjEmz16xBYfyUbLn66c6zlEQqtv/ndSF1UqZNy04q8agAAj1TBAWB3SGTQZndPPkPW/s/IUIEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772723694; c=relaxed/simple;
	bh=o3jcpvBHvdF48o5WacCYB54EMcgJuEOq6sKJFxFSink=;
	h=To:Subject:From:Message-Id:Date; b=UZZtkD8ivibs9lpJnvr4HcYYjXfvEeNo3YVnISB3tr7e0T31j8/9BznQG1XXJr3y94jDzmFuBZfWBy1ifzNwYQOudz5IiXn05/0n4I58gGAzXECikpiPDtAnpmWkPY9xxcWCapVI0skyN1BOZ1erio0UQuyfgRLO9MoPK7eZ3sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sgGfwnwB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sgGfwnwB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A35C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772723693;
	bh=o3jcpvBHvdF48o5WacCYB54EMcgJuEOq6sKJFxFSink=;
	h=To:Subject:From:Date:From;
	b=sgGfwnwBofk30wn8vkaoV8xJAGzbh5k3Nh5KnCuZeV6yX+jddNrwgZhc0ntEAMOyC
	 WEIYmJdUc36iWKWuoV+OIEBWd1f1fdX1Vm6B+hI/rEuj0YMgd2DFaTS5kJR5UTKd7c
	 1HjMekewh/jMoB5TwG/8iqvedm0hnSp4BbNNNNc/YHMuhjnqYRWCbZpymvPuyJ4HhQ
	 jpAt3iUSUEf8ooHC3RVFJQDqT0T8IEYlfYA6n4ZJvnwVQrCsvapscd3NkKbD2Cxw8T
	 Tz9knCmDcMYQwNztLw1TK3BvpvwYJETSvcpih0qZhiashX4XMI/rWu5lfJ2SDMFTn4
	 tiKDbwNP24tgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F16F33A89
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177272369358.7680.7064059514614969900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 945b31c1c62314da0ad863165d33e130042945b62371d1f7b6f72efd996914f5
Date: Thu, 05 Mar 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772723693
