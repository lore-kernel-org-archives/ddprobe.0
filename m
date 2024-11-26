Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EADB1DA0E9
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732644954; cv=none; b=VAtGxhVomw1ND7b42jJbCbYl0yuOqEATAvhUi8D5RZ4xJJ0V8W690stPkrXUxlS2/knSXyOA+FY+cU8iE2JNEVEQ9pwxuqgASZsut2cEquRkFikWKG4J9CO5oTCgcNv+7/lj4C4cfPCoAnBDu8vQJWFTqHTJzPbUOO16aWLBjuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732644954; c=relaxed/simple;
	bh=kdysXY+c8H9Xd7rb8OperJ5YwPeEXN6P6OuVDZVZ75o=;
	h=To:Subject:From:Message-Id:Date; b=SMe1ZW0PmGRjNZ1T3ftynHgbu0kGTqXkzh1De327mLuz9n2ES5MEgn4PFrszJt39mCU1lk6dwIkG9YjhT7bffUGOGJGx7y3S134J4syou/2bGnYPo/UUwf1ek+r8TT5+ix0je0F84h3zrAcFiUkQSCpkJF4y5KyjLp8F8HKhH1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rN4Xb3I4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rN4Xb3I4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D5CC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732644953;
	bh=kdysXY+c8H9Xd7rb8OperJ5YwPeEXN6P6OuVDZVZ75o=;
	h=To:Subject:From:Date:From;
	b=rN4Xb3I4mlBHCkbShTIg/+gf+HRCFLY8kQfow/5lfIRfksT7WomjHZxeu4Dk+123T
	 X6zautdBgwU5xLSA6g1wg7vfYlho5XWdP14Bk/HjESojjNRKdSXGDcKtVtBemJk++c
	 WQwOWt0F1wi375Kz9ddw39NF7sVw2qILfJ64YjDPQ/R3FD5UIXJununC811Q5kCQbS
	 xmKaGV4J0+ALqO3jo023omydiTX719LdSxM7eh28WDqHM1HbPetM0ga9658wzybarE
	 ENgHXJJ3EJ3ixMfhCJLpznigemPFjIQjXT6SBFaa9qdizIKenCyNXnAHFlCa8UA5sJ
	 TKRqNPKSzqxew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A69D65544
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173264495359.4838.15374993400190654774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 611e4a722c6a8b80399358d354d3cbc9428048731d3e1f37055084d38b975b0c
Date: Tue, 26 Nov 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732644953
