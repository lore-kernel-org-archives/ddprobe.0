Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4608D3CEB8F
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790497234; cv=none; b=h4N65OIR9BN/A0C0ga7GVpJdU2fY3vAvQnnR40M6udi6dUw56S9A9w1iyFO2smqyj1iiPwE5htCbfvOpTqW+McOjKvnJQ/JQf8wlrMfk76V8qfkHZLu+qaQecTvTkokeqm7dHk61qlQvAsXQ9/zCyPUEguXYXHUNQhtERY6eupE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790497234; c=relaxed/simple;
	bh=IEqvnfh3zysTRfgCHF6sc52aWZ4cr753Db3vZCUtY9U=;
	h=To:Subject:From:Message-Id:Date; b=eXLQ11cMoKYe+AdAlTw5u57dStHD0bmqglw7Grwiqh0DKMSJq5IQhpNv4eTz3+52q6iG21hPl+u02QbX+7kA2Rhi4FbgVsHzhurAbPvnZ5zwRxeNVKQbcICrcH+167zPEGCYqG8e/vsLwZeUEP4ps/TejiygoVwuBGOlaDeWpk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pz7n2kQ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pz7n2kQ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDBFAC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790497233;
	bh=IEqvnfh3zysTRfgCHF6sc52aWZ4cr753Db3vZCUtY9U=;
	h=To:Subject:From:Date:From;
	b=pz7n2kQ11nHr47YvTF8pxA41I7qHatynai9Zp/Y7MyaWZLAjFh5z0cqsp2q1W0oN8
	 NyeqkDKzR4VJfbza0saSvUg8fedg03Ck45mdPLhn0Q6OOIbXFDbc6eiYkM+9dL9BIF
	 fpEL9wvgEMVUlRVnoBF6YZYyoim0jDXf3yIEWtw6sBWivrJ5qx5Jj69fdVLxD7XJg8
	 lCFq2UWkVuXzL/6YVj2NCNwhQhvLzq+rFp0JGq0DUnMfVd+hTMvxjWIYqC7W83guWK
	 Y6iGmGE0X4CMWNWQ0z4GHoPLyldyeY8nABMb2c0HxDj9k2BZG8NQk59gWVYieGCAW8
	 YKjkY2l+En+1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5FFC98324
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179049723368.27976.13663434819416652620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54c2ecda79bed79712d25633a291d3e7d299b44d850502bfc85536c0ae0d2bb6
Date: Sun, 27 Sep 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790497233
