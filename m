Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25275645
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728521754; cv=none; b=QUn6AZ3sXz+4uBfspegU3uA582ubv/t6E0y/Zg3xa8BkNCUsjwqJ2dmJfHa9GRzwbzKnyd/yo7Kftv0Uzd0tKhXoNYoMe8rWAkG2kkUbFMTlNfv5h6LmmaZQuX1V6X4gYwpy8jugt/eNikd32OVfWhRTxgzpCMG9w8NlUM9al2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728521754; c=relaxed/simple;
	bh=oKsiHMnVrC3URLmMIdIbk9ifp5a8SrDQ6aM9e4CPFac=;
	h=To:Subject:From:Message-Id:Date; b=ZcTQgRFBX2bv3lC94XEZZIlr+Xy/omQN2imzWSvZKRlnyks5YLGDcfITzSmFoHHbjdy6aAzV6NJpPJrON3/SvTccQ4TtQToSJmdqu1eBeWJMoqPScKhuiDCJUTquxszHGsF2zo6O5Z4YVA1p+tZtPp+LYgF5MYzMwnwnOlGs4Is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DtHiZ7lw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DtHiZ7lw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B17C2C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728521753;
	bh=oKsiHMnVrC3URLmMIdIbk9ifp5a8SrDQ6aM9e4CPFac=;
	h=To:Subject:From:Date:From;
	b=DtHiZ7lwrkq2f3Yfp5SzRray4jvWmvGWnc2qb4vMlhP4AtZ5/VAWXxCYtB0xMYchN
	 YM4mqt3veZi/ZuTvD6OOjUuNUNCI2euDRCsiCTDzv5Nq4TvR8AlbnnYzRJogBroSIm
	 qCyvkQ5d0dYkLF93l3VTOBfOpNBuPF+5F62HXo/03CQ+Ipy6VNa33ttAuJliQaRy3I
	 z3OEImylu/m9Ht587ku8erwnXSzEpgHV6Ox0yav8Xj46foOl+cPj53MbV64vAJBnqw
	 c+PYWBMpYVnG7pIQB1JqRyrg6rGVofbiu/e4U0DhUwshnmxemI7G7Ev9Pe+FeNd7j8
	 XsAaEWdrpwC7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A25DACEDDA6
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172852175364.8302.9499731028690190893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71affa8f109b076e49da9a05bd22b519e70377416faa0b0d776b64408afe6792
Date: Thu, 10 Oct 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728521753
