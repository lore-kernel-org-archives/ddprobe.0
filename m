Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4491E3FF1AE
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790969434; cv=none; b=uwey6v0/wjxV7FrAdP+5XqApIy/LSLORy3fud1KSIvoFc02dHY5bIY8EevQGRUrzSmE3v0dHB3uAFI64g/U8hyrrRJNQy1I8HjBp5G2zpjNtYyuuM8fsCG3ZWTrBIKF9d5RcTF1U2uhjwyF9zanuMdAeRm2Af0PSOG1h2nfXjFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790969434; c=relaxed/simple;
	bh=FF+0AegiGxJDSC8Eew5ZVyOCzZ6jVOqg/TFjuGc0u2Q=;
	h=To:Subject:From:Message-Id:Date; b=qyczXEvnYplWaGwWpW7xQ2OFllyi9w30djKo8/l1msQYZQeFAVI0us0Z+4YC2A+cXlsOBzG4RkJRQYrerVjzf3w4JBVsQncAGCYq6pQvBNsgXIgggeDa8Xy9u/rrU6omo5IUNzi2tpCFVXi0nwFcVJWdcluVaaXL7dj40U1pBd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJTGdE6X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJTGdE6X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F4AC4AF14
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790969433;
	bh=FF+0AegiGxJDSC8Eew5ZVyOCzZ6jVOqg/TFjuGc0u2Q=;
	h=To:Subject:From:Date:From;
	b=bJTGdE6XzrQiYOiF6AkTrGk99h5viBxOO8XYPC0az53vEXSQSAlhR/XEuqPTWcDs7
	 dvnLkDEyxrsFIarAWD8RX1j8IwAEQUuSBSqE2N4A+xzSnvsWvltxodeLIBTXH5SnLL
	 Uf7i6KtcejFRhluDZNVUG4tswNDwq8l3EOs7jAmVFepQsw6OS+Emffq/HsIrt8hRiU
	 alk5YMfjVsJA2Z0gPllWF35aqHAHdBexflNkr2G10kbIXh8HJSpWugxy9FKc2LS/Mh
	 zIPkxL83fPanCheJbVx0IxfnoAHPBL9TGGo0V9ZnV0ebltjqTlykQ3YCAm5EHsBldo
	 lL+EuHkJCS0Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC432CA5FE4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179096943369.19371.16602419335321214435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c32e3a40fceb7b498c61d5e7e6e982a8fd9f38a0388336217fdf625b16088246
Date: Fri, 02 Oct 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790969433
