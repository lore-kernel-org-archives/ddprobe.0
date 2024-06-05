Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEE8A1990A7
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 13:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717594584; cv=none; b=pV1jta+M1uDe2B+MUxH/wjuunsEqH4JSLnFoauExV8BQGtEiXfmISNFCmnklTZ5XJvoRoSnL2bM6rKdAbpif9oR1F1ntMyMFTMNEtGLSf8I41drgVkbTJL/4cvNK9n5NODEXWcv9SHeEjhqR0me8azs/KFKW0vYz/eYd2ORL1OY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717594584; c=relaxed/simple;
	bh=QUhudexw65RE0HS2PoUq+kpmCrNVM+Nmjy5GFTaXN6E=;
	h=To:Subject:From:Message-Id:Date; b=GjzCb5huXt+GsmfpEQeRKVg0r4K1k/zwTX2IC7ROsTWb6msXsO/gUnaMY/RcMWpOjm2UPOsbOFe6dPlGWg8lHofZpXqRkrwRsepMr9qxQwslnHfELih3aw3LAgtRYnpdwH+6n4PIMaJo9FaoBcHMHvPfxr6DbnfmHUjZqRJ/IKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AhUpY30p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AhUpY30p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 60AAAC4AF0A
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 13:36:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717594583;
	bh=QUhudexw65RE0HS2PoUq+kpmCrNVM+Nmjy5GFTaXN6E=;
	h=To:Subject:From:Date:From;
	b=AhUpY30p6xzBmmLj4Wt+BCem4BsukE32bKu1Is7HejnOW4WEaiVi7Qa7Mh8006Bhr
	 9bHqP7UCUnO2TI/bBgvAS1jKE/TDRDX8RQAHBk4eJeX1HFwiGKAWdeaW4q63TgvwfR
	 WAf0iQV+2uPEkiGEaFpj/SblYZCr3krXQkKJSq1i5e7fJrRq34ChdzzGflC3T2C1iC
	 PRiO91aK7PKoFs42FDnNXI106TDlLdOdMjbIp3YCfe5VhhuRvwoOjBmhg01Ood6mlp
	 0SNmEwzH1O5ygEnm1vr4zBo5abBqLMP/i3x+X+65N46yWJ9H9QD3oocqvPMC7poWwO
	 rzrpZnWUvWFpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0EF18C27C53
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 13:36:23 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171759458304.6704.4364069743318190034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c9280038b18bf5400ebae7b6f7187dbdd560fb94bd466364cc8d16f51211ad3
Date: Wed, 05 Jun 2024 13:36:23 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717594583
