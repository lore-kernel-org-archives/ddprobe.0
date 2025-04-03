Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406501624E0
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743677996; cv=none; b=kCtIT/cM/hxsGwu/BU/a6C07fGf1pT7MMYeJ4RVP1qXTpqZZypUv4vPfJsDTZrw/Z9riCeom7ScC/c6DM96wt2wVBgnFwNELFKlo65Taq7xa+OoL7etfgcGIpzd1OT1iypvDDox1vX9m1H3V2CqqroRYvGbRP43im3rP0WO7VmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743677996; c=relaxed/simple;
	bh=/vR4pYHJJWboOIrPXqeUBMvmYJM6bFo7ls+W3UevnFQ=;
	h=To:Subject:From:Message-Id:Date; b=TvoGXmEK/ctpVZaAYWpP16ZQ+2S/EzR5kg+55ektf701Re+NwBnHCqARVQIZSXrcZThbLlsNJTr9LkhZQ///vyNQ1+4qYkmZ1N4KNVGZ/6AKbYC08kVZrvvd7Eiey0THpK/ckdmHiAU+y4tp50d8q6GbFWETYgUYo7UyXc+25zA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R97QE9Lo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R97QE9Lo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9AE3C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743677993;
	bh=/vR4pYHJJWboOIrPXqeUBMvmYJM6bFo7ls+W3UevnFQ=;
	h=To:Subject:From:Date:From;
	b=R97QE9Loo3Lf/7XGa/9N5+uIrrbdHbc9uopLJyZWtbxVvjbn6w3f+GFl5S/JCfkyE
	 3/vR7vu4pzy90llKblFxCB+DAP/7XiEjobtQSQqrFpqZMV27XlfbnChzDMLvjJ08ti
	 36HzHutPt+MqVe3CEilM9zsrVEUl0pW1hpUMyubK8uMaMumpyLyag+r2k39RMgzLZj
	 c3DVwX2nZJNRkKrg5IDP4s3dWd7xQaTzWmYHOctPoWOOM6l+uVor5o+IG6PMtW6ECs
	 v3+2CMsh3HcM0EY3ccLFqsTx7VM+3G1Pfbd58TxnZ/eQFPEPhJr5+rDgdrzoMcg+fT
	 MJ81oVVsgQkcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A73FEC3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174367799366.11053.1209745817789888088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82458c2e9c387e71d9bfda33aff5e631308efc71cf466aca6942a25f52ace9fa
Date: Thu, 03 Apr 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743677993
