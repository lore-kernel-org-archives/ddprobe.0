Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2ED23A6
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728363954; cv=none; b=RDfTgvZ0wtdno32iE7XPmsWoy/mE/hnio09N2uTX0/9dOup4kKppZS33xCEr63oCOxXg7UOZFjIw9fjhCeyRDxUATiW3lNX9YeEeIZA46C6pfzDCoC24J8VedZ39RxHuJYqOPvbEUPVcTUqxY3BMeLiokyjtcHk3iqo1xOM8SdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728363954; c=relaxed/simple;
	bh=QhY47YvsRfXwDFZMPT2MPw89CFZiAcuOvU/xExHpD9I=;
	h=To:Subject:From:Message-Id:Date; b=nci76G0eOSnbKXaN1ocx6T3k0bFvA5z9rRv6ow+qYTno0n0VAiP1TDJN7+z8FmJQ/l2+3V3izh+MKqpL5igE6UqFm0OwG6kGXgZEAYiygaS4Tve6XccHekhuQmD2w42c3yvMpbQQdY7RZTobcSHMbA0k+gGNHXWhGmsrxOdolcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pkr0uY0y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pkr0uY0y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4999C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728363953;
	bh=QhY47YvsRfXwDFZMPT2MPw89CFZiAcuOvU/xExHpD9I=;
	h=To:Subject:From:Date:From;
	b=pkr0uY0yRi7YaKRvC6nDV1kpblyVyi5WioH3Agsv3WW4Kplufzs78BtZiYWvqCmE8
	 nz1Wi9ohd8Ns2RsS/yY3IYDVH0LXHXs8uO7UCvrjTi7TGq/TZGqYsg/qQAcG33tJ9U
	 /N/uz3grQIdlzVH9nbG6fPVgBz1/X3ZRD/y8s444h6pQAB00S0uvn3+V7Jj3Bt+J2N
	 8gOeh+JdzdDUQF4fpNAi7MSGcJtev0D8CjggAGSG/4Tjhu8TIvubqsLI3qzSFv0um+
	 IViiIw2tQFAdCNNCg5Z4tlsva7DbaqUkxXRB9AuPC7wky2kaEcLWeUkUba+FqpEoBi
	 x4FhOnHZxZMxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4926CED267
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172836395364.19342.17313293837569347382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45fafc5e64124f21ef20ee3c87f23c12ddd0e62661958d4e84f5b9b75df8b776
Date: Tue, 08 Oct 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728363953
