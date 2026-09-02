Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0B44A5EBB
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788364234; cv=none; b=fftVfZCx5Uy9xrecqAxjxpWGeCbtvX+6NAKzc0YCP03sF87SMJo6tk/QdIZjCekNYAQMA4oPAoe/cakkwfa+9d6jVCM7Z7rH7Z9MktKUtv2jVpkUHU1VQA5Un9PY8+cXGANGKocS7HX+mq6myXwhHPYFELxCZioujHiOR7UJHwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788364234; c=relaxed/simple;
	bh=PJNg8Ef2SgBvOic0QDZHy08kCcK2E3MM0Zaetxh969k=;
	h=To:Subject:From:Message-Id:Date; b=bw9oMjHHGDSX4HUp0+x+DC4fowtYWJElXq3XItYkQGVjTLqfOREYyjkI4oAlxLIg58r6nqjT4wjNUYU0+c46ABdGLIIOd3sys0lS3biT/8KYzo1OcaNLxKBELCM3w7Rr3iUE5xW1xbOVI1rI+M5Y3oG/2embbD8DvyOPMxYzPdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fTRyToza; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fTRyToza"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC360C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788364233;
	bh=PJNg8Ef2SgBvOic0QDZHy08kCcK2E3MM0Zaetxh969k=;
	h=To:Subject:From:Date:From;
	b=fTRyTozauB7smilzINZzQ5cCRSCHeTG9wSMSyK4cMXKaZclj5AuiUmP9Zyny0A9yD
	 TJ/WlaVLmqEJfohetapUf3SSk5n4cuxNasmI8+3uTKYbeTbNWtLg3nf9pm2SS2byOH
	 AQk9CGnwiCNqEMUeYGW+Uf28yjoIWDTA1/EOaLV/EOecJHKFbSor/AcuAlJixM/oVU
	 xVdl6DLvtlXbWpyTeBg3AcV/+dCpQ7xpGe6gdPK8LKE+nG5fXRGdA93Gu03shhGAOL
	 KLff7tJ80f2uDDUka5BDd31vSN27Yy7XbaMwgr8Z3NvT3oBACg+qCoIm6N4PojLGJH
	 WPjloj522Ax+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FADC624D4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178836423368.2453.12668784541022076105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9713496046edc46eba83547709e8d4c417aa1e4126a5d2da9100f35f52f6134
Date: Wed, 02 Sep 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788364233
