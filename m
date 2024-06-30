Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69C042AF12
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 22:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719787463; cv=none; b=eCrnhhEr50qTaSnJf3n3wedT22hFeEDQuYtl8OKmiHzYJZCCMBbHWVjbs5hdZv2G1852CZG53dAGQl9hfrX42/OQ5KEcOHrtpEHCl0/LC02HrOFMDA2Sl2wQUsZWqPbBBnlFMi+pY8DRmvmvviO05YybS07Ac1nnselJ7PASDE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719787463; c=relaxed/simple;
	bh=8l/4a59mPdPv1iqeoXcEn8iUV500lIHkNK76uAKG894=;
	h=To:Subject:From:Message-Id:Date; b=ELLt17aqoZinqTnmXgj7WXupHnZDGiJfUlnM0F9Z/AELjmDX/Hy6ZhnlgwIH9tehh1u4j368Y7fG3dciIGh8SpqgRbB6nYhDsL5Kjy5uh++JiPl5oMmhdqcVxFS+/81ijW3NqibvnRLkSL1g9DGawnFfX3/AEuknhdVF4k0iuMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q00C9b+Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q00C9b+Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7ED8C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 22:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719787462;
	bh=8l/4a59mPdPv1iqeoXcEn8iUV500lIHkNK76uAKG894=;
	h=To:Subject:From:Date:From;
	b=q00C9b+ZSgZt2dKQEN7LpmKj7AVpzXVdbWOowb1L9nRdO/JvX0n+8j5YujqoFYNlQ
	 ykQx2qCxoMBqdwJzuw3JZZB9g2vN9OoZWPEeVWHVVAi/7dnGbAOhDnG3zKaONd2UEY
	 chfXqyFxXZYxzzkiRSy1esaPrey56raVSvEEYSounKovzsSh+qOvNvFWvg/g7s5rmI
	 1aslsFMQxqghCj1mtiUxuf8JiQQw+h/YfHiVnE6k1cNyIcvdYJDxC+Fc507QxVHN9F
	 YVf7WeQD93ikKo8/z84HyYEJPXp6s+nuiyagTve767//rsGV4XyHTsI3BD9gY3zg3z
	 g9VVS3euKXVow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0CCDC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 22:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171978746277.7293.1398136482542759986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2679d8a415709fc20e3ab20f11159f82d8b6c37f25d282ee31b0927cbea1f67f
Date: Sun, 30 Jun 2024 22:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719787462
