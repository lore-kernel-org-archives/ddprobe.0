Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA36D15ECFD
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712756897; cv=none; b=qVnpzRg7fMdv7D0tZizhnfQffP/LgvnMnkfObOwXfTyveA7AJr1IEgzSe3BYWhXP8//LBcJ3Jjqs4sYanf0uhE+us4yJbALwkgBtsk/WCn4YvOwsGss0pGwewkdwPaUgFycicq+/xzTvFrGP1Xv1c28Kq7kKRDxc+235K1oP4Qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712756897; c=relaxed/simple;
	bh=AyzI2NxIVd39BcpAaVPy84xF09FwkHgxYNklVtfdNIk=;
	h=To:Subject:From:Message-Id:Date; b=CMWShNMEri1RWct5coKdHpCoS1v6e4l+FUNdXaW+Toa4h0gO/4sYAWtt31iCEchIlFHwEHL8QZXqoPSXvqFYwSK4H/H1E2sIbgG+0iR3WDyPa57JemjgtXAN22p0gOnwFzZy7KrOKZixXBIZ49kM0CaXnFhjMxCrVxT0kOMxsoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZMfQdQW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZMfQdQW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82860C43390
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 13:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712756896;
	bh=AyzI2NxIVd39BcpAaVPy84xF09FwkHgxYNklVtfdNIk=;
	h=To:Subject:From:Date:From;
	b=pZMfQdQW73B47ZBIwLJ680HEtacYRBHiwSb4sjIs0t1U/xWoRGCIKFD+RhxoKc1Ld
	 MhkdeaFU4MGGOW4+HBTM7e07MJ+RIboIG9d8rxBDqCxIIV/HJNzLKhkyailMAHE8Ua
	 qKg1IxdBuE5sP+cjJVI951mJDM2o47vLYU+LT3s5rEZY5hzZ9r4rhSbzCfsi2zKByb
	 2PgoiUzPl50myQtjJ8SPKyobIL6d4/+6EJZVbwGaZ/hoZOhmy9DZylfg5GdXZAqHOk
	 Uj2h6AEqICOUx2MP9HFbCFjFXk7+xU/BwExUxAF/0F+oSE/97fYu655hhco1tySxhw
	 SbqfSeQwUOp2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7008ACD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 13:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171275689644.9255.12420356468192492027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9967cd9a38bb2a8309ea59d9fc06b783bba1f8cd2331ed02628d83db0032296d
Date: Wed, 10 Apr 2024 13:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712756896
