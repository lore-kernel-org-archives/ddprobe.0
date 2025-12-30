Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279A92236F0
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767080034; cv=none; b=R6qk3V7Q066ybxUnweJeXnLhWOTd4x2ecKMC7OdFBkrlq0LpRNFnbfHmXjABT0cJw94qWS3veJpuL7b4zbLacVkapPkNSYR/3Lf3CJKR+HL0cqB+wmu/BVTjrN2LImznxiXVWA7FoRXaaP74VmOQsZQjof2bL4Npc8Pvx2N4T9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767080034; c=relaxed/simple;
	bh=NrHh0cAUbtdhEoP9o4BtmvtRSuxVyuHh4YW1qeFeqxU=;
	h=To:Subject:From:Message-Id:Date; b=Ew1e5e21ZROGfofQWHe8Pc6Ul2RH8Na9JsK3wK/qe0G1IUSiWQVM887MIueDpS/GjBSdJ0pHqLbkj90N0DrP+DAvDzPwzPbor7NUET3fDHUY+Sw+gQFQRBuEeqn3AFFc2/SWXGp0ev3lBzB0Wv/CsNsEdDvqKPwW3WEFX8SuNnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LwWCRmH3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LwWCRmH3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9779C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767080033;
	bh=NrHh0cAUbtdhEoP9o4BtmvtRSuxVyuHh4YW1qeFeqxU=;
	h=To:Subject:From:Date:From;
	b=LwWCRmH3S2ZBZCIIOwBckmeIChSk7Vd9ZE/KmMg2fepmYONKLul98uyvwe6Vd5nkf
	 QF1v7FzeTH+b/Rmvt+W9tNoc2O6qTsc2ozMizBRgJC2WLTki1MuchxkX3IMIINHHUo
	 ltICctu4Q4ZA4NAw8NMU4BrZPTxo6PhBueat9A8pgPWN43bP+u+9KG+XvjxXXA3Z9a
	 s9UqAcd71J86pIXe3oRkltOj3yIb//dCY0RJsaYNqBcEgoZPvtx7KhEZRdK4cqfRMs
	 oCtueOjDEMDOuCLWwRj66FdfW8+qpGBKxMi80iVTFAOtt6UoFCKwEBE6cusneyBOt9
	 ukltJqoo/Lo4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984ABE9411F
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176708003358.21720.1664290769075133948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54f69260849c4cb811748d06442b4319473d586bae15dfb94d73e1dd10c8b8e7
Date: Tue, 30 Dec 2025 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767080033
