Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD8412CD8B
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771997094; cv=none; b=FO2LfmCESnGHC1KvAsaIPmy0HYsabCCZD5cht79rncSpiv33RNHrdrpg6hNX8x1Mc/1nYbI1Yfwe2f29mMZWusbushJp5tQIH/3aCAo89KEpZqWy22i0BMdwC3DrXDw3dTeStweukWCAjvLlh94c7sXQT/8P6Lxs6HKuHHkCFFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771997094; c=relaxed/simple;
	bh=4FrCSRkpy8b6r/JLHUPCozBNbKD+3tvRgOylnEYsUhg=;
	h=To:Subject:From:Message-Id:Date; b=WY9xt/LmzgUHi+Nke28lfIS+f5SCqUfa0PNCCvmeuV3hb8IzLFMxaAiRugHwjAPSoQKjA0tD2dABO55Wj1ZR0RtMr8gJSLatk4fN0G1GzWG0dxkQbBOW1UjZjvk6v4/FYmK+l2kUkJ63Y30aAAgyYWhVEeGGQUfb06Q8qYVwJU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uHmztPK+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHmztPK+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D15C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771997093;
	bh=4FrCSRkpy8b6r/JLHUPCozBNbKD+3tvRgOylnEYsUhg=;
	h=To:Subject:From:Date:From;
	b=uHmztPK+fPSArJ9B4TacBJglxSASMfU5OrVbozXXmU2MXGYD8BXyEjaWKZCoYa+i6
	 xOAgnW06AB8QLSpgobOGTMUUyScHwf1unoHAUTZ7RSHAJ2LpHMeVAM5nr1oy5kLg/L
	 Xl+ZScL9HVJIB8SgYZFtLb1ODVn1j537aniZ1vFdL1IOzUXjS9UHOmDnw4P0EBjmnv
	 Ks2qRCvxcBl+8TyGMCV9qWGhRi5CmWEjDmOMjGBGAj1evRJOyFTxuKceUfEHDsfcNT
	 6CeiwKdyrGa48ArVNzenM+9BtukAu3MKfhdnqkgJzSlD9xHi6h9+pzcigQtMmb7bHG
	 e4TOvpwln2enw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9559BF5545D
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177199709359.7301.5772863348831257038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8afd1b26334825247a0a1ea2ecc538646af12d59ef25fdf9c8e5455e5152d677
Date: Wed, 25 Feb 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771997093
