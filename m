Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37EB6257AD3
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760480394; cv=none; b=nVCwHIaCpkRdKNe7iLhkZ1dRcYg63xVfmUfOrUtnp8THYa+FiZYruz8gtBt5cyLY4P0IZXLoY5XFrRgdRoDbQKm83k6Ux4WnBfcpF+amLqWQl9mOVZ1pLPO16n4RBd9GAZq2Sp/IioYvWSSSo+8fBXl0UyCdKFwjcBKcIl+WptE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760480394; c=relaxed/simple;
	bh=dFTmJwuIv95OPS7a1F60DXnvtR+Fjp3SUA2hG7biwR4=;
	h=To:Subject:From:Message-Id:Date; b=s5KkTl5KECmAabWhv0b5mU7meZCiWaFEhBXVLjzWsIVyN/emXPJgnqU/n+PnlGK5RuR8SEApH6iorOP0T/9k3f16T7cYX7TcDFctmPbjeqdLzdJiBv0yxRNSrLSe6HvH/EUKBXxxW+72RlSAhAb0zQtgNFtwBxmnqe/+Zyu75ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WRgehJZw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WRgehJZw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B3BC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760480393;
	bh=dFTmJwuIv95OPS7a1F60DXnvtR+Fjp3SUA2hG7biwR4=;
	h=To:Subject:From:Date:From;
	b=WRgehJZwLK0w/oC5mVjPxPK8ExTQmCXQ7gZuVOgQJYmjVFH3WZGNVzQ5w+1nvY72H
	 UVAUAB0rlCRKkI6s/BIsf1jMV/JLawZ35CyNR2pTfuf4Dc96WQp8Ic4znUSFxW4Aaq
	 TsuxIWRyft+fA+B7ZcdzvI2sFSzC70UjJ3TJYT23HZXff2rCSzQvE9cdvSbZkajNac
	 OyV3OAUbHR6Bkaa114V3CZ8LQbvdcY1wkztVZoUgUZnutSTBh0GhLThuQsQMReHAq1
	 xAkbgyK6Gr02RyqkBshLoAxgb4aQ5xVDA7clFYkTPXxO1joFsdHDW6p0Rvz5qmR+Ep
	 yJl/jI9wz1kPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9621ACCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176048039359.16675.7777333314683445216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85e7b77838843ee29bae67d55ac2061ee2f74a4d711261d89e42009b4dd19e55
Date: Tue, 14 Oct 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760480393
