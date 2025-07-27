Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04072136E
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753588194; cv=none; b=B83quMfZET1SoMg4vaMVtZ139czMTOJeEL81EkAm5CqpM+seJac7bNyBfJaZKMVRCNriYWO64pEOcfmdCXdqV1EHIVFumqIgTcPpEZP1sBaotpP7d9CLLglm6R2N3G2U8CYxkbgDgY7FfxjzPr12BiOWuqIiB8ymFcvcoWMTPoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753588194; c=relaxed/simple;
	bh=243jIoZa70mj9NP2jrMgnV+YEGVRLDXKp2em0pLwfVI=;
	h=To:Subject:From:Message-Id:Date; b=qUMo69Hu8q31se7u/nYqVBOK5zjgaNKN7ep6x/xIAOwVS75REBn+9mfNE3u5D9Q3vAdY+ivNnQM6Dzu19wPpk8/DCJcHZnh+5otktmE9k+HJhF7slvw0dEL0hwitcs5mIvOewZPxS9/0KYW9qHCwpZB9vmaFIN/HMa7Pq5BNDvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWHX6z+r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWHX6z+r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1019C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753588193;
	bh=243jIoZa70mj9NP2jrMgnV+YEGVRLDXKp2em0pLwfVI=;
	h=To:Subject:From:Date:From;
	b=SWHX6z+raVegWwquP+IRrTx6I3d0NS4XMLzdAyoD3O5pqvtDsX/aes8dgBd9mlZ5g
	 bEYKsuz1Dehe4/c+JeozTGYFJNP3xnsKKm32XAZ+6zkjJgbgDPqnkDPALU+8PMcZaj
	 80DciPRMn89nDG4UnUgFauItAyrflKojJykuPkUSEHj1P5CyMxPhb46GRTHQiRbCj/
	 Z4E/Y605DXgJBwsetJBE8of81qFAYq6DsUR8aremDXMItT3OdJFCEh/VnBnGqCQNJB
	 Dxbj1IQN1lIN4tdSEg0Xvk1x9xQ3FjfBEiL0bhOeVEfg9vvWQhziRq+RD9hsjEkm8y
	 FCn6aNMQuzNNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E08CC87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175358819357.16081.17253742428623071722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f797e860e6dfa2b3819fb9f951d353bfc129d4ab9a3e403cea2a98a1d723a1ae
Date: Sun, 27 Jul 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753588193
