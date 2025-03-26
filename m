Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A49EEA9
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742955594; cv=none; b=YvI06rVSB+uMlOhNar8qLRlQH2hGi/KvXwZj+9E+AvjqsyBrlk+vmkA4+k1Ytu1u52Cj5K+8L3k3PEs/WyOD4hX1PmmkVCndmYzcQpWcl9qulEwcV5gj2VB52HK2Wy5uPlrXbUtxa8En+/Zs78x1jiT8iwk1NM7hRyg3E4lOb8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742955594; c=relaxed/simple;
	bh=h5asmjxaUgzVCDP3FEftpizsiVdmXZH9dpp7jzJ2r3k=;
	h=To:Subject:From:Message-Id:Date; b=gIoMtspVMZr1Y9tmaVRk9ty1cYscK46+e5NCWxsab4GU1QqeNf9KaauWYBYy9B6RGuuN+0GkMiDAdxhuzfbtQ16AqsKRFv2vllRpxUgYwDPjEcEptXQpWY4C0Wsjbmm3/Hd66/LPgQfM1sgxtIdeq8S64cMJ7DGXhAbsf3JcflM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BeXdwAlY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BeXdwAlY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B93B8C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742955593;
	bh=h5asmjxaUgzVCDP3FEftpizsiVdmXZH9dpp7jzJ2r3k=;
	h=To:Subject:From:Date:From;
	b=BeXdwAlYYA1UmU/pTbfnJxgtf5rpREl8vRgVYexBFgfeOMMSiykUcx+v9e1Bqaary
	 4jTBW+SkJIFHzonfdVZWmSRus7RwmuVJcqihe7BP+yfTrQ1Vqtj6mFfpACRrg8PAk+
	 m9m/9T6psgebWHID6OAmvrvEWZ7misRWLwMjK2quXCglE3h1Sd6Gi1xJcU9Ks53aCF
	 eWxL9QTX2ywA/mOH9pIdurrtPez+GYHkGJ26Fmwx9yoiK1RSGtONQdayv1SyMYxlNG
	 rWvhjLsg8haM+vBP2ScnAi5oI/gkJR61SInGK49t9bCL0JSZYoVaPT1bHgTsojD/f3
	 ENNQc3lgP89Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E7C4C36005
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174295559363.12112.10330869231655822303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4bb60869fa5b0de354b4fea9d40921dfe034cd3818b98a5d1e49aed087140fc
Date: Wed, 26 Mar 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742955593
