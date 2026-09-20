Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5112D37F007
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789902034; cv=none; b=SN+mjUYxyvlpKvyxDfGbOcfQTnQt0qBngkr971xAYJujdz7OzCugeH2Nt5vQgKq3Lgba4qkH8xmHMEjJWBa7pm0DX8UBynxvr7hwCXgobT5+cQn17tP8VvC4xFH2xgczIr0xyob8+1IHGvfhfjzs4zUt5RLacRbjKNEZL2QOMro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789902034; c=relaxed/simple;
	bh=hI/wWeW8sZ8zNue/ayZxo6KNn4lc9TlMYhlT1/RFsWI=;
	h=To:Subject:From:Message-Id:Date; b=gdM32DZjYZygHPC8/qZysoS1PMlgot4A4WP6/6r3ctYAMtzhHkcfBDng7ymmKmj1pzzs8/tKrhxsl1jGLIdYSlW3fMnUuTAOoKWtAoASkqTPygSMGt7EqzdJpQE6guoDFJe/GUf86KfWve0O7+sAfjC5NsD5hodZQkjL6XjJjlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DAzsRm+m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DAzsRm+m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D25D8C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789902033;
	bh=hI/wWeW8sZ8zNue/ayZxo6KNn4lc9TlMYhlT1/RFsWI=;
	h=To:Subject:From:Date:From;
	b=DAzsRm+mGeICE3wW0sz2oMKRKYLTbWTlwNS6btZ2JPfiIW2CpFxrikD6bXTEN1hXQ
	 OqEmU5CIAx4tbXINl/VTbxkRWSM1VDqDKPWah94Z6K5ItbfVqb3RSgpwAoYhmg7Tqu
	 O029OdW+02NCcb095UA5+NGVUYgFvSvIe+K2sGl7PoPOxBWe09VPNTdLTEwyzLv/CT
	 +coYUzthdAk8NvfZJkmj7/PTgBIZRqF7Wwg23mmLOAQVOwaIm4Axr69H08CPfTPdZg
	 1AZQbm07pdEiyuwHlDOIlWly51b0VvmIBaDoHQFY4gn4T+juEf3ehNG22KTWeKQtiQ
	 bLUozoC82ZECg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD59C982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178990203368.10018.17277806568081182058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a80f4fd911ea4bf4b891980829232ead9803bb5a447c39ce34e067ffb506951
Date: Sun, 20 Sep 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789902033
