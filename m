Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448C0242D6C
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785709234; cv=none; b=ke2/zuOobMigqfuAeseMDB89BNzTh5cx4vgGDsmU4k89BfVkL1I40lG/vFHIxG/o22BiINoLYsqRlnW3f/fa23GF9Yf8+PitYjnHZacQdgiQF3Tg9W3M5vLUG83dus3BV2ZVWZdYdIIbQnmLhtRu4tEA9AXMircMVL3RwSlwQzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785709234; c=relaxed/simple;
	bh=btblmSyqiNT5azeKXyPa5cXuo2hGaTnXqIHuaJDevsI=;
	h=To:Subject:From:Message-Id:Date; b=OeMMR2n4az3xz7a2/e5PDPVOpdeWyXfcJegIVcgNhPvDfEv+RRnD10HdNhsCozcfsgovcRgD3KatERONXSwNqI8R/7s/39tTrLo43+oXRNXOGLu0Fa+3l3pr7xgEE0iXuvI2xyNNK1bEbAsy/Hv40pEejL7qYWfUyBesWio5AD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KhVEDeZd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KhVEDeZd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDDAFC2BCF4
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785709233;
	bh=btblmSyqiNT5azeKXyPa5cXuo2hGaTnXqIHuaJDevsI=;
	h=To:Subject:From:Date:From;
	b=KhVEDeZdOSxFpDnErVB5yEhozHcMVvYQFkLuNKmqExflPzbqSWlEoLsA4iGC64cJk
	 ivKtwVaN1xSfTVOGP7bFwc7OAqjImtpQkS+K++q9McCO6dh5dy6FUJ02uonpofX0Gz
	 svumyG8RxLhGb9XSHfeUl2wc5h97A9ZU/Boi5IX70rJz323XliFySvf4w79OO8G6Sw
	 DVNY9DClg41KAz6lG1e2pj5Iw3mi3pVDBvecgSVXl4oJExlaYe6OU9F4oScJizqbxb
	 4BAJjnF0/9miwBDkiqPzEUfDV5TTuCjJqCrSeMrYHajK+vtLjYopGNUKis6PtVeiP5
	 E9dphLXW+523A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB28CC55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178570923369.25123.15446254478453379447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fde1010dc43d5c5f5e2756ce3f4a9cc9c509f798de6756c867ca73414b6995e2
Date: Sun, 02 Aug 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785709233
