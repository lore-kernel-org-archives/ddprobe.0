Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4160219EECF
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 20:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720730243; cv=none; b=H9Mme6IxINK+5YuFevgvUynafTH8TYXUS+P/cpHm1NztZrGqSv2i2fRNLIdC+ZYDDhZNzqu77GQazKzGGLvYxKPtNqlojRRV8waywyXzR3kGOQzPajA1CEsuR+heF3Yu2Zv9Cu53wUo5f9jwwTgjn8rXG+NhnQl7KUimieIVyQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720730243; c=relaxed/simple;
	bh=CKmC2ZHx6NjRSuNJu0fczIiAn6WC/FPCkqt4mzxfy0s=;
	h=To:Subject:From:Message-Id:Date; b=dxCAFrr4T63679Q51uP+4r0dEDTAIR/a4x1lvq9SoQVzZ7+OmD11LIY9eNutqAxWAcqCvmop9XUNl0TIPOH89eXvs3T08Uf79koJAHgVY4ON8SzEE2ohAHWSM54ToLnxtxKS9zAvjRgHvjkuWV65oLympSGQwFpKVaEddLEuaxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SokldNqO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SokldNqO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D79F2C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 20:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720730242;
	bh=CKmC2ZHx6NjRSuNJu0fczIiAn6WC/FPCkqt4mzxfy0s=;
	h=To:Subject:From:Date:From;
	b=SokldNqOUglG2Fw3zuSN0kOhKtu7+/YnckrNJsWkuJ+M1RHUQK1lFp2WCyGRgqEBF
	 W2o9k25ZDquarqAGVXrMyz6u4LTjdyOQ4FNJu7rSB5NfIujKU9T+T4XW7u7/kfLVjk
	 vyTiklQJ/l0ix1kgcwrNrmhj6FR7CEpIfpgWyT+EhjGSbjWw0QcxQajnuiji2NWkX1
	 3E51o8sWYawoNlTQjV8l45v1MVf1dxt5cekZHkUovSpOG5OwNfp5rPGsLT4MRWYQws
	 XxLVhpCwc6fzBRbIi2VY53ceVaHKPrAUkoZRpIByNV7Re6kTgTx/SYwX5fm/d/Vppg
	 pHa57iOKmnCYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6290C3DA45
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 20:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172073024279.10527.17829251799753694409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cb46b84eb1bf87f9a65e6773814bb26c62e0e937b151d276d78102327167786
Date: Thu, 11 Jul 2024 20:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720730242
