Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C3817F7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749134994; cv=none; b=U63vOHjgKelBaBMMyaGPm6LDBik/TKJHz1ao/2DokpFVInu0uZggASO6yNBk3c+91mV6XFNmRSfBVN5i/nwKkDC3YTmRg0G0c8nt3yZgHYhZxzE+760arlRDeX3XDtj+90Y4D1UIKAxYKlcLM/zny7dU9CRAMccfudKgUo4DXCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749134994; c=relaxed/simple;
	bh=hD3H8C8q+DnLFVeDIyR3lIydPr19ojBSp63nfEg4T7M=;
	h=To:Subject:From:Message-Id:Date; b=PjWzSXgnlthJl7MDiVCNcxDyK3e2Tt9sbLl4t6YpezcXhmPGg+xNliBBNOFv0lTn+aNuExAqUfk+xJTyN0vTVzMl0CTn7JljJU82D7dnKnMmXDvbcACz8ykCKToMpmue6F4L7HEZXQue53kAx2sjwPrW29QQMGlSJDSqXvNACmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k8Pr0S/M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k8Pr0S/M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2555C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749134993;
	bh=hD3H8C8q+DnLFVeDIyR3lIydPr19ojBSp63nfEg4T7M=;
	h=To:Subject:From:Date:From;
	b=k8Pr0S/Mi8WPtQ/vcUqhtQowhNEER3lVoD0uKM3g37mnpPPctBfWEjUAHvDXHJAFi
	 GLggcwJ3AZA7x14tK7t7vtP1syxGht9CoUPvbkKI95wcdUotryR5+iXvZEOE+NaNd5
	 Hk2gfXNf06WKobPXTY5DqHM1aJD+By8yuD+OHtMD0rs0FDuDehbe+NJKJeAQ/G1kSg
	 MFnLaPRQzElW4Md0xtcYPkYS2ym8IuwTYt9cPSmtN+drco1s3gsRahYvo7O9yyrKPg
	 rFlq3aSybd8OJ9noQS8D46DUgFSyAXVNz55jWaebpvdpv9+Nabnz2U97lFWBkUDqOQ
	 yuMVPZPDlKFaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8ADC5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174913499358.14397.8318089940623232626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82fd28b7bcc66612e443593b6c844ae58a27b9b3c2f991d9b31356856e8bd47d
Date: Thu, 05 Jun 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749134993
