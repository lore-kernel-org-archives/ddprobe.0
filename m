Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED421A3154
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760350194; cv=none; b=FStZR/dAYQSWYSqUmn2UkL+kfeRGLS0xtVfkSxRQ9T9Aciqse/NJuHTBrAKMn+bq0nbcSGyMnDg7MeyV8xXvLrmfLtBSl/MIR74xXfc8fVm4tN2ya70tk8VoRinfiIkw9rym06fhxj2qu1GRHWBu/l6ZoiyWuoHQ3QODX4J7GhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760350194; c=relaxed/simple;
	bh=v7yyjOWOpFzj/UXzg7l7rUxJ8UvvaznSfgcZy4R5muA=;
	h=To:Subject:From:Message-Id:Date; b=ID8Q1WqWZJdIkvdEHXgnNIrhOH6BJIUYvVJs91R23LvcwMYHOBlyM8hVUe6ejD4UuoI0GmhEdTQo5i1l89eOMwJ9FnxYDa1Al9y6Rky+2NN4UcGnD4wA5EHX50Sc9ywB/2XRjl6EFtmMnr/DD6x2OV6AxkSJ8Jso9DoLubpXAhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RPQ9cP8x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RPQ9cP8x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E719C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760350193;
	bh=v7yyjOWOpFzj/UXzg7l7rUxJ8UvvaznSfgcZy4R5muA=;
	h=To:Subject:From:Date:From;
	b=RPQ9cP8x71yX3VzZ41FKHu26bR8S+LoD8WWn2L1ayTAx89zY+UAS8MLNTIFz0o4P7
	 BqWhiwYZ5vkODhDCVOB+kA6oXBUQvEQA+gwY3eRafiO13fJ647B9jABjhT02Yh/Jnt
	 vg6Vyz0kkwVt5pTyZBhAmw/tbWl9FUyFKbm2IbzW5B98gk9coW/kl5oXP7HZbZDXLa
	 ScKqvzQSAd2da/HO7ZB8nYyka0MpuLksCRjPMVBGu2rCdaldoyFYwMHJDMjTJjGq7C
	 VKe9w5T7EfV2vpW7EM8rgSnlvqsMEyI/Ozw+7MDT31fV/G/sLfyDS/UbhoV9U3MmYT
	 B75nxnL2mB/NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7D1CCA476
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176035019357.13877.7566225706735842907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b5999697a4c73cede62b77793361ed49596ff458444a9a307f0ec4cb5530a21
Date: Mon, 13 Oct 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760350193
