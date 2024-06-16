Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 777463D6B
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 05:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718515703; cv=none; b=HXAtvai8xnKjuT54kjTgLK3kklOkOcFM1A8ekgC2FaO+B1TEFd5ddZBgOaEGqgEPLDDPIBexrAiJE2L6EobvaaaDOaO4Q0AO5ULJch9XRPHaroQhPLnmDgKpO0PT7eRttfjYRVPqdZkZOb6sMbrRlEbAjVORmMHyszMP+8HYp4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718515703; c=relaxed/simple;
	bh=ldguBQDJn1IgUF7E4CA9Ajfe9SN21O0a5l/TKaz2x4M=;
	h=To:Subject:From:Message-Id:Date; b=EQADZKkBbe6gpeWuC+KnjTWN6mYNAcOtOUzxX7MI3SxSfImKga4VDceKcyKmfnUru9gEMcEYpNoE19eBeXm25N5+8eGZvMc0+99yoVV4cOSqZLfg0mG+j4RYjWb80eMqniEz2y1yXJxl7XWuBgz12ek7b/j+JMWyb0iPj/H0vwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bbC4qAa2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bbC4qAa2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02B85C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 05:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718515703;
	bh=ldguBQDJn1IgUF7E4CA9Ajfe9SN21O0a5l/TKaz2x4M=;
	h=To:Subject:From:Date:From;
	b=bbC4qAa2+hm2c4nOuLOYBWnf/IDt8B+FpB6ePS/wUWzApaiDev5MpZeyUF/rh+yZT
	 Ob4rVLwfDk/dPPGNR341VJJLzLMrTaw6GQUbAqdj+I2uE1Mb7tMcI5umE7VZ1yO5C0
	 uTIdQilWgNB7qD4PNW1/R2M8OFIOpYdQ8IDM/ThkEvdebiuUOuUYKwj3Oi8Wb1P9Df
	 NNFst3OHvX0aGg8MuGpdFDpUkTIJ9EhXCQjMuMheSOEClQycJmPnbbV29LEd+RBm4T
	 1PUkVwFRobdqLkml0pw6zBdLVF9EZCYDEohWuVgSrTHWcJvz1OpFTFI881iZBEZbm9
	 OkzJSJlziCAvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFFDAC27C6E
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 05:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171851570286.13525.756414333489800449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bce53400b2a451a159357465237eb68e4a25fe9004dae4de3852f4eea661c613
Date: Sun, 16 Jun 2024 05:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718515702
