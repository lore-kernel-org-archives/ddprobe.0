Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF9F757C9F
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737993354; cv=none; b=NREVHqaWaxSHNZ7WkDDRQ4cX1pXVzKEzomiKUpcvU3Ne3t+mVZMWJ/h0RCZM0bHhZTHidSkI2nxFosWEaOzg2dRxkI7eiEXXWAQCbVbWKS8Ffa6LjEDOywl2NDHuHX75SYoETe/xLekwcaey0fXkous38CMRPVFl7zDLEJk3G1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737993354; c=relaxed/simple;
	bh=0ygXJ3E99FxMKqI8+tD09Fh8/rt/PLRRG3Ukk5AIHwg=;
	h=To:Subject:From:Message-Id:Date; b=tKl19Ofbq51NNb7m43ItA+KVir7Edo3F/Um69RLWr3EM/UKNClnSSx8IjLPQQmtq1ekODsEgL/ITi8q/vFwFrdvLjq7mjqA2g+sM/jZkjR2g5oawNCyPh3kVZekS6jTk8W9eFa8eELqlJj8edWMrx0loN2Rzp5xvIoxkHDakwaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=awcjCL72; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awcjCL72"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEEE8C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737993353;
	bh=0ygXJ3E99FxMKqI8+tD09Fh8/rt/PLRRG3Ukk5AIHwg=;
	h=To:Subject:From:Date:From;
	b=awcjCL72vEmVmJxKElYSwTesBEgicTm/1wuhtxHvW7Omx34+HLVXLhGdRmUJhG3g7
	 nOpc8cCubJHPjtUO0SuxZzyERn+GdMpstsBLqZKudv3MpCM12PFwyNCCGQTKNcBizI
	 xmx3d4fCb7B6RqUVKmsTkDstAlW/ws+or3EuM1g+DbYbcTEIxocgZLc5cSjmB3z/Q/
	 yxfchPiYIseDxRnKUVtFNlkvSlknEfqfTde3A8Fbyu39sS22+XexZ7GgPCeEMGNkLf
	 2cA2FkEbWkMCFDYljlxMEuHDFJbQ/IGh9n5R2m/TbeWF9ypUIQJGGE10IN5kaHQToZ
	 LoEqmZdVuOQMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98C9C02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173799335367.22928.17260376333241275329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f2de119b055801d0d4724ed21b5a2634040e51770319ea7aebfd1fa6d634d9a
Date: Mon, 27 Jan 2025 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737993353
