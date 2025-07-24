Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316C42EA466
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753373394; cv=none; b=Yi+/CpimfSdoDEWwFlP//zCPUzK0XZs3FLYt78Pdfk/T4jto5ZZo3BpcvCumVqxGiqpcA0fhr6QE5RKgmY6PIydYLMMfuuoOaxFzJXcAIDps0nQArpxcau7rvumhcqEmLB2B7YxJnrrigGVeWC+HE1VKa0FY+egnG8Oz5ml8dts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753373394; c=relaxed/simple;
	bh=yhMWLoHHjZHZMkniMEHySOqKIcCQhwrcDV23XwpCy5s=;
	h=To:Subject:From:Message-Id:Date; b=J85lfJ8R1TiBT50ttplzo3+dppYhp29knorM0+iNTn0Njcqz+c9WFL8CY98/+pa+srMcxFG6naXKjeeSh3yYuaF/X9odRHyNJZffR0A0hd9MkO/GDQ85aek4lF6rb/Eni5q3ijxQ2F6tRWCanqkXyA4vfOk6CGrkcnM8f0YLwBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oBrfUErs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oBrfUErs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B5DC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753373393;
	bh=yhMWLoHHjZHZMkniMEHySOqKIcCQhwrcDV23XwpCy5s=;
	h=To:Subject:From:Date:From;
	b=oBrfUErs6qh1S3DC1IL7Ph19WVKhkvIPYtFZEcx2M4jaTkFP2V1/hbUp4nawg1TM3
	 bzrAFAgWlHAfGkx+F0NVdTnrSR9dalfnfp962nRWxF0ew6jlDRFvZXS25DHUoLJM1O
	 V3pQjVEgjIri5fmLOexdQa9BGC7OrdkaPjFo/oThYNu03/SIhpuVBXcpW/AhtY+iop
	 +HPPz3TOFeB2IcMFfLG6DYX58ORR1WbVjZOxKRwWjLxlqFQHo26PXqxr+ImSpED8nz
	 3N/MxdxI4t4zVOIapX7ngM+8yIBvSBODTkgUdchywH0QFACWYsgc1ZeP6LhoeLCcVq
	 MfrRc7RqHlYIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92425C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175337339358.23362.18443161794983746780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c9e98078ab10f9a0da9ae1d9bf4327fe75e5a229e9ba8398c391bf1712b89f1
Date: Thu, 24 Jul 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753373393
