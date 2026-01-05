Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2F7C32E6BD
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767609834; cv=none; b=R3Wxs87zEiOePPz8STGVEIcuPEtqcozqm5TiOPMey4ObzftPw64OGa66cxr5H4hd9hiYV/zwj6eXe+MIJZxLOqz0btNPIinrXbegCTKh0xO9BnlvqV5gCtpYA6Gkj9C6FCGchTvM6LaUoKoCGOIE9i77RVQPkTfYa3JMSYSbynU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767609834; c=relaxed/simple;
	bh=J2DPASOBHxQ8n3Wtg0sba6GQqyh3yc8lagsqlLpfiME=;
	h=To:Subject:From:Message-Id:Date; b=FpnrfW+ljP9L1a8VJnhNoAs86aasbFgIoNZrZdyEnfmrJ+qscRU27TEuq70FP176j2Kddjx1lZZGcOroIl1gvptB42vJqRh07u+c4GumuMhwga2VqgZ2COk2pdHwA9XUdpcafD0X0OQk7y2gXy/wbHYkMj5lg9Y19mQTWyp7vrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CCqlWTp9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CCqlWTp9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B371C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767609833;
	bh=J2DPASOBHxQ8n3Wtg0sba6GQqyh3yc8lagsqlLpfiME=;
	h=To:Subject:From:Date:From;
	b=CCqlWTp9nRWN3LaM010Z1cAGfTqIHla8puh7MiSjpSpNt5OPq2hO+bI2rTT+uoGr/
	 QaemjxBQ1JTWCGRKRwoP1vAGBb44GG7wjR5lVCWGPYsuXZHC8t+21/gnvCYnMLOCZa
	 gb+kk5qJ0kZw3zaHZPyCFuqqBBZdu1PgjKFdXsaKK6msXxWEcIVJRRosgXTRrN1Qht
	 KrPA3Pgi1zKYzTEtPCmazIjNBousES+tSrvHDFiT6dbEYQXJPGTM9YkqUlnubsu7pH
	 oYKh9bg4/cZciqsebAi5Ng5na5nggxc/m2rymGAg/BxGZ14wwJ5/tIg0ckJ5S6NDdU
	 VukGbBDmOW5DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E438C2A088
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176760983357.533.2737957726435697804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5db885f8cc7d642ca327a95f58c05fdcfa37c7b796c6d2dd69e58873daee5667
Date: Mon, 05 Jan 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767609833
