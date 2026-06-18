Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 521C331AA92
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 15:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781796394; cv=none; b=T0AnoFsmWGPvAgfNY9I5KLovZlnjHTo2SwXXZxmkaG6aNT5tFw+qVMGSNz8kerqC0KVRW4jRMoz1JLMnvEsG3nhr8cjNMwXqxQCGvs04vPrj2Npeh2SmbZ7K20ab7b/dQDbOuchcLA8VdiqUqoMM98S5TdQJQMJicczO6+PQaUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781796394; c=relaxed/simple;
	bh=QGk62i9RPfUT2VFjfGFDY+bPBwZq66Cf0mk9bjEGMLM=;
	h=To:Subject:From:Message-Id:Date; b=nD7wVnFd60wIrvXBJ23kXzZWID2Y6Q4qgTu9Jpu3Z0n1wNSGbQZyBhLAoh0qT5RIaNqb+uCCkZMMJFXO0ViB0AB7wW4SKg2eFuyXQCRU8RepG8xq7ZhYRgvlzxlmAVGD86ktsP46McoT5FNgnV42PLL+r0qAOe+I4Rv761/OQ70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uA+yy11Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uA+yy11Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFC3DC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 15:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781796393;
	bh=QGk62i9RPfUT2VFjfGFDY+bPBwZq66Cf0mk9bjEGMLM=;
	h=To:Subject:From:Date:From;
	b=uA+yy11QaF7kqvWB+isF2scC457tRUy4/5hdKgsqR1lLnQqHoAej9ZQ5fohDV7XH6
	 ypXaOqgH6O2+fyqImFzwnQNC/udYgLCwyPIEJsASHoR6LQtOEQkspMDDoA1BNtC5p4
	 i6JiveYNjZur4VgKFRcgByl9HWp+HjH49g1ZVVj1ExZG0ysspxo98mPJAPXmY7kjNu
	 hpFt1VNW/feuh8fGICvLe2MqSRDYEAkS+3EOg2hH1uDzaAo49HEp3bnQLCn69Y2Xc0
	 MZL/VCSsph+e5ui3myN+8lGC/fZXYx47AkB6oK3Rgk+3Cw7PtzoJI1tkdeTjXhRBBS
	 B/tim+seeiLBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBDCCD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 15:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178179639370.20435.16592457217201298047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43cbf7d799ca73320dea7eba43f6de9483d066354b92931e945a15ba8d67f9b8
Date: Thu, 18 Jun 2026 15:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781796393
