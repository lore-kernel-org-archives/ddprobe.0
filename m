Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D1FF138C
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 07:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716620663; cv=none; b=ToSGsFoYSPU2OE+8LhwYQc5n5eJ3ArUnuG2V0Od/uhqbnR6k6M+8ypfSUTki2bHamFwPxmL4Gi3Kh68xmtCAAoHg4d6axDH4PBDBmb1FTJnZ2b/gMrmSMUtNZCPOhcstu+uoBv0XQDx+ngpiIXbPTniZnt4/OdMsU7PHtDWg+kA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716620663; c=relaxed/simple;
	bh=dUFcpySbkTQ1BPap2dOnTQ1cUzfIq8aOBykK6qLP/+U=;
	h=To:Subject:From:Message-Id:Date; b=k5Y1bRtOKIXlhclRkJ5MmPc/SXXrmZTUjSNss1v+0+7j76TG1bjh/rc65dgKwBlaNnyTFFlseaRlx0kb+vF0xZ4AzJFA+ZWHtCqV6hR5+FNES3qOOKJrfKyAoltAlVYKjdPCzzW0qckkGAaBrcYrC7iSJCUd3xlt1491mwPDHpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MSlBwfb1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MSlBwfb1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E00D5C3277B
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 07:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716620662;
	bh=dUFcpySbkTQ1BPap2dOnTQ1cUzfIq8aOBykK6qLP/+U=;
	h=To:Subject:From:Date:From;
	b=MSlBwfb1jqaaRwPEBVRktb1CQn7JC9qvkeoBpDkEtdEzGA++DL7+fBKhvtEuK0jwU
	 W2z1WlrbYOcEPqmk+ovvmh0HUoar1qkqRX7s7IDU8S6uRIz22Nbakk4zcUQRjR32PS
	 YR6P0BRK+719oElA2X3TvytMQW65Z4aDa/bKq5U1GXYuqDEjAxN7fPhrJM02qUaScj
	 OMhlsw4KKucOKTgx//Ujw92nRHVIx/ldr1eP01YJRBIJgrPNcZ1ys488qyBfpsIDUZ
	 qHd9czFNDlg8Louo67nlB5dyZmHsMWsV66RmnBxfePfCzXm7jfU1XSHhjSzT8fy8LB
	 wK09kAST7EY/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5779C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 07:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171662066278.3430.9638884377056698037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55282e3298ddc722e5a36189719abe7da9b38bd367fa2589cee15c730e89ae3d
Date: Sat, 25 May 2024 07:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716620662
