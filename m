Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1979B335BA
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756662594; cv=none; b=CQTljhMHCHU+JtG//4Dx+OpQ40hDVtnA8J+4bBDB/EJ1egQZJnQgUlzWqyaHbL59QvEjC633PzPJLkAuzooZG9IVnpU7fMl81tayqHEZFPuycJ9LeXV6bYLgsBcXAZmhuLTAbGuQ476AxvA//F78DTa/HDQNR/vs+mBkf9uIF5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756662594; c=relaxed/simple;
	bh=PPpIfe8YJg1YZ1iSHsmRVCMC7S7BwvYgdAdqMOxQAP8=;
	h=To:Subject:From:Message-Id:Date; b=FzCaCABJNclv9ckK37SXYR6ZOhAAxqzlkq3pr7bv+SusAxptVn776cM07pHy8Iwz05yRKlLeh+ILKYzLClHMNCrlGHmt6UpXwklWt9vbD8wi4w6BmWHbwwuLX7UidpBe1phVk5T66i1UexFUS1Ykb4WJRR9hWJuq3B8xJ4JW6XY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hmLGx83X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hmLGx83X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BE8C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756662593;
	bh=PPpIfe8YJg1YZ1iSHsmRVCMC7S7BwvYgdAdqMOxQAP8=;
	h=To:Subject:From:Date:From;
	b=hmLGx83XmsH1S5PSU+m+ZoIym8dTYV4uR1sqLlj4NLLC3Q9gsY0P2QKN1tik2wpXR
	 fDYi5u1QDnrq5qNkuHDiCly0py+6pl+T2ydwu04rVHc+VCeGVdyyTTYIUSQI6r3RQr
	 ga8YfKF7c/c4Flaaw/Gl/w4z2DU6pHQZOf+tdkWkSLwEDju9PxU7GzhOeb/Z0LI3IY
	 QunyN1KrXRi/69Y83tHfUN3yr6eNpoQSov1BZ3jfoguMvePpy0ZtvtWJHKSWPD1hdb
	 EF855pw1Su+o3eBCV6jR3Rsxvr1jGuZjCe6p96mQe+VorE2akAe+enL9dhrcruV7vI
	 tRVREMtuSFqOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90932CA0FE8
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175666259357.26551.4567052730331143901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bbbcd6c96626584f35c7f588a61ab3d1be6b34acff510e79a270be34cb17a21
Date: Sun, 31 Aug 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756662593
