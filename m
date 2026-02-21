Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377471CF7D5
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771681494; cv=none; b=I44g86AM2mqklmmwqC1Wn94DilVuX0+DjvMFgTD0+nMpi1rd+3uqQOmZuX+Hp287cHNU4dPG+g3Xh0YgsMihl5bShlF2kLStgotB8BF6CcSCRcH7ikDWI/07qtXPX1XQSQ4kPmjeqRBmhRqQe1yRk74ugcMiVjJedXKBUf41G2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771681494; c=relaxed/simple;
	bh=fxtsImHXj588Q/sGGYx90lz2JBu05Q2eMAs/mFeur3Q=;
	h=To:Subject:From:Message-Id:Date; b=iI2VjFWXiDK2KawlVdqr1XhKsAMEHN+wPRkd19oXyto83m3/s5lWRsWBkJrENl5wvk2ZBTqhapN9c9fzfMHnYGT/EOem+MTIGLUD2oHeooMJcUJfdudGMNxl/nnZzBE5O9BISlQc4kgg+AuM/RVANFGdUFjWzoPJO7DjyHL40jU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cepf4JT3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cepf4JT3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE198C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771681493;
	bh=fxtsImHXj588Q/sGGYx90lz2JBu05Q2eMAs/mFeur3Q=;
	h=To:Subject:From:Date:From;
	b=Cepf4JT3KNW5QEQpHM9wIIECz+Ls+Gx740gknIVKv4zok00njK3bvTeEBfLHgFf7c
	 c9szrammsBNqjblqs/FpP5GGdqVhfWdPD/2LDdIj5aO+zpnaXrERAnm5iuZqh/vmPX
	 gIkr+7CMsOOF5WVHRd4X5jdiK3KWYej8VBzs5HCsPkaHUrggMFH/kOg8Y47vc7ADjm
	 DP8/hlg+pUQTV9VZt9H71kNun++FMLjr1ofIw9eMMxukmWHvkdHnWVhmXo+i2D0UQM
	 +UKjORJ7uS95Fu/cdSlX+Ll/6f+dR+UVWWdA1hm40JGZAZlAEg1rel68akAmYQu7oN
	 aEkurSv3HSxGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0AC9C61DE5
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177168149362.14935.10555017243955042156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30cae58a6a8831202b1f317285a0b2a268de27eed2f9e6e22881de941eb8a085
Date: Sat, 21 Feb 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771681493
