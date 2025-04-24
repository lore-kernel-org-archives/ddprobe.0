Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271881ACECD
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745527795; cv=none; b=KfKmqA7u1dfbpYCrJcOIK8Pa56O4taZ2mAS+Mszp2tfvnNLXktxTSwOVMgvqzKqLwfopE0/wAPfWGejisQY3RN6ELPwyg7aA4ZFFuNbNzyjFv4An/eR1fIoZiRrgLDwrKLp2y6n9K78bz+ppKDP8rlj0wnavSeyBzfVyY4aqvkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745527795; c=relaxed/simple;
	bh=eNa0lvfpUYtKP7HcdYJNzdkga4oPhFVDMlfFch4QvA0=;
	h=To:Subject:From:Message-Id:Date; b=NbXV03pmDRWFIcKXaqhodLjqN+LqY8PHzfsZXrMD72o5bwbnYAcHHcp4+5ILKP/+VmWz15rzSskZTm109hGtHFcy5M7aJigO9bu7RoCuUCdE/QXVh+lllOF0xf3e8NXGv+FhlC8zW6O0uWlw0Djd+HbV+D2eSNcU6T/KXZOLXIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=twYSICpm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="twYSICpm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B86FC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745527793;
	bh=eNa0lvfpUYtKP7HcdYJNzdkga4oPhFVDMlfFch4QvA0=;
	h=To:Subject:From:Date:From;
	b=twYSICpmy5ZiSOU4X0shHf30Iqnz7d1R9YAIsNgSQfpE4i+qw+Ue91Eu1rifq2W0k
	 1eMcbbAtPeizaXz5hPA8UVoI/6JfhmHFreVpPMKC8ApBswQa2crOxLQa5eu36YC2/6
	 lqyVyW/1gJFQQwg0Pka/4uFU46NN9GoCzmaycXPCNQ1IzcbJdazY/EQCx3jFvv/qfB
	 5jlAIUpsDJlqLYYUcA315Zn+hp1c4LSzvIiSYCWKSh/+qe/8zyICs4mRXbNlkoFmfv
	 JAk16FK/S3DjBlu2+f08ocRJo9Ci55O+/VabYcCt49N2rCaW/PfJ2+JuklPzDkcPF2
	 BVUMeheQP5XNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E37CC369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174552779357.4596.630261792015602305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5feeaa10f90e1ef92405708adec3a6f2b57473e2dc5bf2d5fe93580ab7d2a8bd
Date: Thu, 24 Apr 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745527793
