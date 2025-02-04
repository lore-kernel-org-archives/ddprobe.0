Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D5F118A6D4
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738691154; cv=none; b=i4ygMsEgQAqVwFYw4q4EEcUIBQd9edkk2Pcg46IK/o9WXBiJ9hj8crlYriMr2R5B/CwaalgN0BWDFDDgYLwvOms8pJWM7OSald5c8Nb1hDKAVa3m502I4ON8LIKGRpgxYffG02luwd8IiRwRGqVAORzIIwnG7MKmwZvDuCRie48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738691154; c=relaxed/simple;
	bh=Je9cA7lj7l2NXCyCnAu4DapoFgwhJGObCuXaRscrdEo=;
	h=To:Subject:From:Message-Id:Date; b=mFXUs++btmeMMxdgj3iIQHfvcJs5/Vx2JqKlESill2WPr04+sfxABjgppKnyxI5UzXIXEQ3hditBvvSKXR62kZxygR9mMD4/+jETIyZB3KKjVbbs0s6UxkoFFhEEkUHVeGKKvWiDBdkbH7QToFJCF+kset+leqga9GHylO0rwgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLpt3v1p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dLpt3v1p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B112DC4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738691153;
	bh=Je9cA7lj7l2NXCyCnAu4DapoFgwhJGObCuXaRscrdEo=;
	h=To:Subject:From:Date:From;
	b=dLpt3v1pprgfqWi11n4v4e36bbhvoi98EdQZihA8mlL48cCqjLbUU8CYxXCieUBBH
	 Tcl/2llXnsVP9bCFfAkTRwUQOqU67cB4sNhgE7NamdZrvzGxTqlAWMjQ0dNgoQ9pLs
	 LLRkhL+tBL7ic4Ep1vdk3PoAO2O58Ne3g0FqcBgZrqVNG0Qjw8bnM1tcoaX86CCM1U
	 nAIYXxME7Z+Tuq+LtM9MLM2kErA8E0c9ye8X2mpSyiylGNKZHxilqAGHvOUsH06pKx
	 Hvo34EDi/dC4kbTL9hU0A28jI7KwxXSH/Srp9fmU/8jwcQecIH0cI05wSvrgu7eQms
	 j91Wqw0UTAg7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A217C02193
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173869115362.8816.15679974688013873293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08c36adac442ddf2b67933472bfc7fd2c18570496bba19dd128b4c790dd59f1d
Date: Tue, 04 Feb 2025 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738691153
