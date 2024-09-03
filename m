Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442CD433B6
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725329754; cv=none; b=R0zkU73quMBnFC44cgQG1nnFAKTwLMJW4EUAos1WgM9Ms1X4nc9abOEzDCw3zYXhAExivF8L0Yh1BYQj+TX+Bhvt6/W3JKOTPCStZ195U4ELhvggV3YHTkfFsYtZ1Vj6noReXT7ebe9hJj8XivmjrU0Dd4eLuBDZErvFux29Nsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725329754; c=relaxed/simple;
	bh=MeSUk6YD9vN9t00IXYp8KzNpsvGv+GymqhMnkVFRTfo=;
	h=To:Subject:From:Message-Id:Date; b=NhvKuMurLFzdlb75Di84boK88yh2OX7bMixmrJqiCBeD2VnZ4xM6E3sIfXy0flP2mgoPi9uhRwFH8FcCNvtfkYaXeYG6fcJjheTlBL2Ko/mdYF5YdGIvx91FafnlcHCByp4FGxxZfj10CpK3PMKg2IILHwZxnglqkH0U6yidKxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VACuBte8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VACuBte8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0E4C4CEC2
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725329753;
	bh=MeSUk6YD9vN9t00IXYp8KzNpsvGv+GymqhMnkVFRTfo=;
	h=To:Subject:From:Date:From;
	b=VACuBte830W5yuEQjZaQK5pdNLe59Nrthrr22bUkxUYnaAVFUV1WdlTMdhUtorCfY
	 DRIZlGvkbv3PZVw/qXc+ojnNJL3lpR4Trb+Fps8k+Qk8nvzG4QETa+b63r4pba0/ec
	 p87jDiwainbZQp16A5C2ZWNkA1tMl6ifVYyMWmLrwl2oWPf263HCzL47Lqy1N1meuZ
	 NW7hqFNAbhFvx2tjVRKpD2xscgH/W2haaICtlKqEZYUD5L2g1jjjTrm/47xADo6YMc
	 oseRSkd7srQsyuIUwj8vl6JXBTA11JGzXmOTrMK/F/VYBtIUqXRt+v7E3/Szn215W3
	 Mz8DjidGz5N2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A0CCA0ED3
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172532975358.21806.12561368989879857107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3df4009918f7b1a632fc481ef6fcf58d7ad68ea89f1c362897c146d30bc3017
Date: Tue, 03 Sep 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725329753
