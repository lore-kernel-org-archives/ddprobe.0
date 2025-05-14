Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487A120B1FC
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747207794; cv=none; b=lppFXKWfGUf/8MULoBLuk/LtslCaQogvgh3UjBxEDS/KWX8q3NpFMOjXw1CMjUqoc6JG6VLEkPzgqgw83niCEDIxCda4AQ7kgeoFwrlBv9djMtSqNXUaS02XgS3Gy5lTPf38679ssg4xJQCOUKxO2epMzdFIdMkTcJ9UvrYsnRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747207794; c=relaxed/simple;
	bh=qh2tG9wBCz6T73RLKIXezkGPLPatwNhrWugyczUIGB8=;
	h=To:Subject:From:Message-Id:Date; b=pYMW71QkRwadxlKIoT0qE9orAz03sq6EgxxEJHFriwX4KTWQ3Vj5nSAgfmnGaYFB1iOsasdgSMVpakeeQTslX7rytpv1N8lMIaDGdJq2he+jJ21RyM8ZvNFVyGbg17KrvT2u4Huna/1csHLf2A00TZArvJ/V0SGJ3zXY+A5ZTx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WO4d/9iP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WO4d/9iP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40A6C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747207793;
	bh=qh2tG9wBCz6T73RLKIXezkGPLPatwNhrWugyczUIGB8=;
	h=To:Subject:From:Date:From;
	b=WO4d/9iPml3jR2u12w/Wln9y07gdyjOaRzg+cuBfr2JYzSIn0ll4E9sZ9k1tggc5i
	 1fkByd0NxTcpAwdGpp96zbN+vGoMHytR/uZum/7HGZllSYS/XdQ8MLhIpJw85VxkcG
	 Vr52mvBv9m4j4lOtoRSvL/9AGDqZiqyt+QXtZkx9teY/1V1eSgEaeg8zC6b3NXNf9A
	 g+5c+vT5wMVJd5f06ccKAyM6iJHs/oCpoRdYINgMfJDMwKtbHQaTcl0DzUhvgY6AUg
	 I/uW8HetWgDuu7n+b1AVOPwYRfOUJ64QqbEF88g/v1IOWVkevoXSC25EoKZzWJu9JM
	 qjwQ1RUN3YV9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9165DC3ABD9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174720779358.25674.9680368334004936686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0d018b510e4f216708941dc4d3841fa9bedd5a73638177ea5799560315fa74f
Date: Wed, 14 May 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747207793
