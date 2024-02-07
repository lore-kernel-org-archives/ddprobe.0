Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F414623761
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707298097; cv=none; b=KPJwLgYT4WK8Voz+Pj9LSMcXfks0KHhF9bHPEPGoaUHDjb+VeCN2FPckxqkTNUKNzMdIjlln74h2InawIimdMG0n8w0VcBGUf1cAzD4VqSclYbfwWm4X0PXzYpG3KuP77hbFhZ/bIf3R1AIut68G7o8M4FE5RBIuDaZ+czKdeVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707298097; c=relaxed/simple;
	bh=snbt+dv/d3PsuDg9i0voepNiJLxD1kAYPRz9lvoWV3k=;
	h=To:Subject:From:Message-Id:Date; b=C9zQ8s1J0TaqkvrM9p/LivpH8WBGd/+1wTHL5lnHVYDfRk/rSFz8rKkHMCnfofVe5eNrH/8gq5GjylZ0PmZk7Co1+rPExiSgYrn+2EkYru5RKXUDGsZvgdE7e0boqwjY6AhBM7x86C2zH/AmX/g/TAfeA8kj+4/yJGcsi4Vmbzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jtQGiI9c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jtQGiI9c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BFE8C43390
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707298096;
	bh=snbt+dv/d3PsuDg9i0voepNiJLxD1kAYPRz9lvoWV3k=;
	h=To:Subject:From:Date:From;
	b=jtQGiI9chHSPMRtUbct5TWjkadH04af2T8AklwwlKsLNG7FZTv78svlcE7jMjn2Vb
	 G6iheQJjvkPdvRxpNA57Bf4BS2lF94MSZh/z9xoPsgXN3g7DPhyjLTOJvBe7qQsHmK
	 WdqgPsiwMsnVoiSV85QJth24PqAFeKa4+mQiWhbTAYUoUrOMfyH16yxoFogXxvWGb9
	 RIoWohRFL3QNnD0Dl3ttOoACPkLTOkbvS1AYGvzPpft56t5H7+Swf4HRKRsoD0a7mg
	 SsVCYi96k+1vHdCBgNCI4gvlF1qtinOwO/JRNAysO4YOyFSxsLMe/G2YePnRR7kjyy
	 S9ewESL4ebCnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6256DC4828D
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170729809639.2989.6558581437489283685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abf674bd984a70d71ec3969ae5627863967160fe98c2af2fc96e85cae103a097
Date: Wed, 07 Feb 2024 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707298096
