Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AEFF1DE2DB
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744873794; cv=none; b=ZSCqU0YufHwPW9M8rBXrpsTR1NSg0CNgoKeJnql1KnEvN1H/hfyJ7l5GbfHqQAIU3FF9t1UCi4HtKgXYwfr5JN4GmfF9jfePV3aQ+e6f65Y9VrWPpauSJt23XAJ1F2Qoyai+dpmnuzu/4Fobt2MgAH1CKn6pDTDXkh4Wq5nrC6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744873794; c=relaxed/simple;
	bh=54wGU82EOmRYWITCks/vgwzMQtM1FeAQ2Nayigzm0yU=;
	h=To:Subject:From:Message-Id:Date; b=UUGDk2OVrlyRs+Q5PAS7O8RBkhV1XqTonFsXf3QUS1JwhJYjPP5uxmIHP0b1IrKh5mZbjMH1xP58UTsLRF9bfFQqyah3TYGeQf3+b7WXq7xDdPDCAOaDzECIT19rOgxb75PyA0ZbEFqEXdbNTqAdyipKS5GnHa04p06K1P9057o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DaHPjsiu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DaHPjsiu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D78C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744873793;
	bh=54wGU82EOmRYWITCks/vgwzMQtM1FeAQ2Nayigzm0yU=;
	h=To:Subject:From:Date:From;
	b=DaHPjsiuuj+iNmL+sm8jbk37I4Y4Rj0/oaUIQyXhfiXH0GVXkAbmwF6Q9SK/d6h7V
	 FYYeiaTN497vE7SoT7iKkZpKafheRLiBpx25xdzN6Bs8zrjihKAdfdize/kzF4knL5
	 0eG2UEnJbkMzpQWhPHD0B/2Ts0OM5bHMEE4GlLhKZ+5f6txJ3MGiV4v91Sup2/GIg7
	 qUSh1HmZXA+BwAVmN2kuQsmo2pOkTDZmv0PQ862OZ7Yvztn/S5JElf4mkTgNRvtIhL
	 TLODwrnG3M01tmJlJgx//bpG/xFlEy9bF4PFVZIDQC5JUqlg2qjz9htwnWDOfLSNre
	 sdEkmc7G9ThCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA4DC369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174487379358.11654.17026196745709792010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e33202d12ad2d27fde44146bed2adb6e75368c445500e3c4871b076adb2f3a83
Date: Thu, 17 Apr 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744873793
