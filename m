Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3CA71E573B
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730305553; cv=none; b=WkhPCRcF1BQUheNiKVdfkqM3yjX4ojI9hpe5MB5S6y8bt95FjJip+eInqe/9OoMFdv1wQ7eXA55jGIyD+okYtBQ4Qibtz3CqwOrnQ3b1dFoD7VWVvPjJUWz3MZCW9kR7a10BGxQBetXn0Zqszj7vyXbGdVc3LCs6933slGPFVeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730305553; c=relaxed/simple;
	bh=ajCL/Ddn32kWx4/22lmxSsAIpsOgD5HM8GvnuTdVdHI=;
	h=To:Subject:From:Message-Id:Date; b=Rfp7ss2zFyDHzRL5HJXRksxmCFsLjWuvTfv2GUyBjMftWcK//iEh7QmxTNepAhZWVdTEvxn5A+LbuwMV28uf9I00YTGO39FM5jNGYIHjLa336nFrSVeJei3fB8FOXZbaKlwkdBsg3EgnTz6ZCp+oGCjMka093EYomQJ65bvLo5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jz/G7/Jp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jz/G7/Jp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92A4C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730305553;
	bh=ajCL/Ddn32kWx4/22lmxSsAIpsOgD5HM8GvnuTdVdHI=;
	h=To:Subject:From:Date:From;
	b=Jz/G7/JpErYIFlreN6QiDbHmVeQmt5mVupmjhPHQa9OldUOZqpHbtNRbDJCx2ko2t
	 qtLPdE6IsuCZAjsQ1RPIcoCyDGlwQ7RtEPgVNzhWMzLvtY9FGpP6ZstMsA5l/Uz3AQ
	 J2oJTZcVAps2o6edlU6q3bSGIihfggO0969g8eQDDMx48kE08603KsEbyYTjrtKfrj
	 BHtQcKeWyxx+YKeh5nnoUR0ZXeA16XxqM5VgFCEJM+DGtWql3yVGQBD46e99YesoI2
	 FI61xyACA1CYXpASdr9QHIIz4RJGn2yVtzryYuTUHrFeh6qpx/telLXLqNHff7Rt1F
	 dg8kMR3KeW4+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A99D6B6A6
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173030555358.21248.2249819358959309525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0981334dd13c70d50a540b0c6e70497a7441dbc0e8f1f72f3a66dbbd403e44c
Date: Wed, 30 Oct 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730305553
