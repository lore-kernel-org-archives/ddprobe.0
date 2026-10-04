Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6425C3E51D2
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791085234; cv=none; b=OlYPASlOxy9cMoUQAmSuip0yKd5mCaKAR6YBxmHkBEsdJVLbtwfPH0vv4WZHzdbQLJ8OMDtO4BMudJzbaBp2YHxI3Dz8T1s8/hENstjh2/uf/tE+pIjS5VsjknmqYQjQfJwLITLahVelqZUAVv3vntbE+g7Il3DTdlGeLTPP1cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791085234; c=relaxed/simple;
	bh=7MhPdqMImhlGEJS3OT2ipqHzdsZaW8D0+Vo1aAhQrQM=;
	h=To:Subject:From:Message-Id:Date; b=BEH7CsyxFxNDxoqtm5fgBUR0xhxfmD2TLUNZBxbHXtQqGa4tvdNo/y7rq5oBgXFbmJ9vkM2nI2DFy/ZPtGvvzaIXQR6DDBGj6DC95AOtkaddMwSPmLWGpMRn1tzCSkhcIQd9U8EKyjA1phmoVB/9IS1s5WhmWSFmlOFRe4bpjdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dx5WS6gK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dx5WS6gK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD7A7C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791085233;
	bh=7MhPdqMImhlGEJS3OT2ipqHzdsZaW8D0+Vo1aAhQrQM=;
	h=To:Subject:From:Date:From;
	b=dx5WS6gKleoYv7O/kaPOwIY8YkRVZhYsSgXzGR8N0V1NFoAOTY6Vl2PKSVn+GwzFw
	 N6FkVwtFknG1wckzq1Cpf6Eh5NwN3DAQvpJIoWUjTiI8zj6XUAyRtvNdrz665vMkuH
	 TTQ/rSqZhUqM+Qr/eOOM5i/IhVKKSLRVqnQRP1xOLa1Q/Iq0RhLqd9VANOKGMT1ccd
	 8lE0bUA7hEny1hPQW37QrumzTGjouoInuMjwYF8bdpi1upZ7AGcPMoigBD0rfxBqhp
	 J0eLMNLq46AuJzESRPAVRmHNh8PJhpGarF0v5Xc0fCOij0TCZxv8yG36/17FTyoPBB
	 jB0JAPqsN3LTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9382CA5FEF
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179108523371.10350.13936706352074729779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fc6d6aad7d807e6c60d4a314aa2fdacb0c7adae1a77c450ad27874ebc767bf9
Date: Sun, 04 Oct 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791085233
