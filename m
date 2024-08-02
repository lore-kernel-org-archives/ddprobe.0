Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE4C481AA
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722604554; cv=none; b=MnHAk7XjDHDEoaTZPNcFV13UKKypioculOLCl6BPViNgYcm6VN0mdT4n3RrF+BSkKgmV9YW1lJ/JGexuaIYWjKqq2IrL8p6bSOYKZDVo94CVHWC53l8RzxaTpGuP1jIv7WdSqufobd3Kk2ll5j96TEocrOBz0ooKlNw/DT25DpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722604554; c=relaxed/simple;
	bh=wqJ4uQ5x2ZJCMI/sTujDnHetGvuH5CUf4C3hrPqdkh8=;
	h=To:Subject:From:Message-Id:Date; b=PuAIapyxXJijpu5t0Qh5+ubUdegvB3QU+A2kHqKSUCXYRfz+7oNyyEYmKqLDw0w6+dp47K4Wg/J0NRFLM25GeLeVe8GQ1TuUMa4aOukOQ4dg/BtQFJMME+yetO04Y7SYP/nUYgoUZKPwJSBK3BhwfhSGivPO93Btph65uptsYLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/TBmYsl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/TBmYsl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2F2C32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722604553;
	bh=wqJ4uQ5x2ZJCMI/sTujDnHetGvuH5CUf4C3hrPqdkh8=;
	h=To:Subject:From:Date:From;
	b=m/TBmYslPhUVZHhWCXgeJX9kCNod+lYAnrKPYZH02753+TUq1sI0aL0ELcICYGdxd
	 tW+4gYweZGA64LCOHam6XsuJrjsYMfQOPGiN7uZrGZI9YPw431tV6erKMKiDrU6wnS
	 t4VCfZZRpHWDAjJzuZoHJ4njT+boeUGh0/IIXIbB+rOvHhAHMpm3ZUh6t7MDKTxQPZ
	 7ZJ+6f3LKqd6HfUpRJlMmLQkOmzC0jT92maCmBjJZyfIRHpZtNpu3kxJeYsu09s0F4
	 /EcKdaaWdXMWiOz2CNwyrdkkwI4TW2q/DfrQqD7LiPm+h+yF4QebxmLDA7zurSmHg4
	 YlBi/226kte0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988D2C52D6D
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172260455360.23882.17069529154155952415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2528f4cf0bf4c162c6c7310ee677be3f9f5a9df1a22e51d3645b88600dbab91f
Date: Fri, 02 Aug 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722604553
