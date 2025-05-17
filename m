Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD3820CCDC
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747507194; cv=none; b=QzKm2XpseNal3rxbwS/GySJxxmCknn7c/ArYSP3L3NbllQhalBi4WywcpoMRFGZrOh/oP3LuLKixRqeMzm5/CozSiXMGgXnTlu06lo8md4RXYdQRbJVDZ8Uc28S4Oc6AoA+T7i8ubmFJfgBmiwRKuDYE+4x0ZNhLFfXorQeDcMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747507194; c=relaxed/simple;
	bh=i2TFaV5CJj/23ntuTnts5EA1sxtmT+frhke97Fi+jMw=;
	h=To:Subject:From:Message-Id:Date; b=c2078BLkCGAUfDA/PyPHW6Yc6gsdYEckv1gOjQ5YjJoN+n8FdPCI6KbFnMNyJnXf0kmaxeIghT3hNo2IeM8R+effytcjXWq5ZoxxgzI8FafQN1PJzjZta9NtQpcS/5wxMjIQEOSQ5l0VzUklfFOaCn1vNy24BzIAFXRtN+2dFrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fVRrcKkT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fVRrcKkT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E3FC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747507193;
	bh=i2TFaV5CJj/23ntuTnts5EA1sxtmT+frhke97Fi+jMw=;
	h=To:Subject:From:Date:From;
	b=fVRrcKkTmQLEpmGxfhZz/izjOMAlUe6rPsmOEl3BggaYbZh84J9lD0PEWy8pdDKcT
	 dIOLVg+4jZAXpMU3FrFdxj8/TlaMudQpXD9kjF5gvpxcBZlqIF2BzHYrWARGd/fhjb
	 FrDciBf5/nipjdv10YABHo7YjxC7boWK6VkBwG5WxeE5TzHrpz8zeHuQxGH1qTUiH4
	 q1H/OZy6xjm2Tpj4yLAcWniZrCW3w8rBgwMC5wk6dDrJw/60WaVRmReJx7IfJ+kGxW
	 44OpGPmZchD+8Ksd5BUrP9q93oJDid2NziriNolMYhj9+eqo4Et+nXXgYHf0xVVi8k
	 cwQeyXZuVn4sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9685CC3ABDD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174750719357.12272.11391352539745259259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98dceef67d34a7847505f39e1df6ac3f256ae8db4e9e7d0ede09ac922afdfbac
Date: Sat, 17 May 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747507193
