Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292001DDD1
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750648194; cv=none; b=dIhwlxybISg+KHWX9febM60uglGYZxtZuS7rIhLGaCmHUXsWSKkamrzlQXHt7A0dgxWdUHFH5kq9Qb+ehaJS5kShNqilVe1t0alvXE5xr9AzrPbC+2TCQY8O7NpPlie7JHi9aAXVynFTVR5IFZkHbrdsukqOZfc3DHjw1BzVAmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750648194; c=relaxed/simple;
	bh=CcdDuoXrgYbgR3DEY2J0jdtQT9fT6vImFIzn4BePK+M=;
	h=To:Subject:From:Message-Id:Date; b=tg3XLm9aluiKKbkmsLcIp1NNuUVvn7HQ6zOs4/oH3NPfj/+1vMrt26I+eUBzruoqpKDhNP3ROa4NyInlsEf+jVk5yppgbs18R5MwprtwJDqOoy3pS6+iyHWv3LpOksXCOsrWQXHbwdJjExC9A0tvJcHvFpFvWb/kczCbasVXH6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h4JQthTQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h4JQthTQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32DCC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750648193;
	bh=CcdDuoXrgYbgR3DEY2J0jdtQT9fT6vImFIzn4BePK+M=;
	h=To:Subject:From:Date:From;
	b=h4JQthTQafrjTgAm7SFzPR5l7JfR63a2TUgA9a5XyA63Wu4VPX1yCO4H4PDuA/XH5
	 mFl3GtON8fFSjTauc3m2c+ARd1KT/35ECofBjFkBbXkRce9XicPcEbUkOHG/UMIYAq
	 YjwgSWXlosJPVHUwHbRTxOGtg56UV697ccAiWAoIS6mmuliy42invw38M/EejdRrNX
	 QHGxrHYJXOEKPhsTy2CRp0gGmvFPzhtv1g3N8v66MMOcycZMX474s+LPJ1v/SHwKHW
	 PHe2xTSW4DqL7+KmXDBZuZYXi4HJbbmMwP+kwexVMzZM+xskpHULfuMJhujoqIjjgp
	 dZpuWF6CF+Mvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDCCC77B7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175064819358.21222.15612598482769897282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e7a20ec8f114bc87201c53be2304f530a3b3536696e32b8b1d8a7470ca422c7
Date: Mon, 23 Jun 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750648193
