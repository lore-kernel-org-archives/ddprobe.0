Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239261D7E4A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753354794; cv=none; b=KWOJRJe+WagRNCVQEdoUdW29pf3DauiBIrIgTQAZ4DC5swZFDl/GkOAJ2EntoJiiFRkkAEuAaUfNg+pD/OseDBMOgr5Ci58C3++TjLDxi+w8/wUrVwAIQZFE1T+2YK5OM24nxlwq+ZSCMsS6AnjL6W5oKJk/eQXCWYDMXBiNZDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753354794; c=relaxed/simple;
	bh=PXeFBmCaJtTE4VdoAsR++9Deoq0punLs9WXB657gR8U=;
	h=To:Subject:From:Message-Id:Date; b=GQCi1mW19rAW8Puyd0m1xFT/HD0BZHQhB3PKsxav6b/mXeeeNuFqBrvx0fa1pDZEFF++1IiizagZYuaWJITLeXoXosTx94oesV1lBf22pMyTN7aQ8VDAchvdLclh38n5xk7jiv3P+iezytAM0ICyQCczsRe23f5oJixKhkcxAhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c7T7pUNC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c7T7pUNC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A095CC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753354793;
	bh=PXeFBmCaJtTE4VdoAsR++9Deoq0punLs9WXB657gR8U=;
	h=To:Subject:From:Date:From;
	b=c7T7pUNC8NGllWSxUoARLz2WFL4Jyud+/MWxoSL/Bu+dd92PPWNBFWL3ddZvaQERf
	 TZF2TRgcnBkCUdAK/AFVdu6gHbQg4qBcW+6r7ywPLs12V6sFNfDJ4jyWgu/nSUB/Io
	 jSNNcn2dQK3qeN8NKIhyw1+RTHOkKOSBbNlEgyBO3yg8feSdCLi4FglqcBNJOuoSUi
	 0BxPCL02L77V8nmtHujX6UIizHb0F9dM4yaQn03vSPps7J71FTO3iZqfXMIZ7at8gI
	 DyJ8ersM+VG8KshK82U6ix3se0cGQdiFK7WZqoZrXmwkyIuHG4iTnEiPkIwDjsU3Ju
	 EUahK0I2P7d7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E21CC83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175335479357.10810.491129501574943156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9cb6aaf241b431913efb9af60b4438943bc6916946c8ba9a04fb5d8977a3095
Date: Thu, 24 Jul 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753354793
