Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D90C471CE4
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788903034; cv=none; b=HvGpexqMOY4RV0cdvq+6Lrmp1GdOF39MEhyXkCtxy0UVwEq+Yp2chqEZNzS1vLNaMcC8jrg9JyDVkBe9+eqF8SpTrjR/hgR8/tWy5uT+MYJ03oqUGOFJzzXERWsopAiT1gujIfuOOe1j4sPe3C5aWDuuTgs++3DxiIOsRLr1MKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788903034; c=relaxed/simple;
	bh=q8nasR5O8+cN9K/VIEjzUg9Bxk5o1/orkeGrI94FMfk=;
	h=To:Subject:From:Message-Id:Date; b=GQnQkxrxduZ+cSk4knGjLOYT/q82k0aHT0DZQh2r1dztAwZvXZId7/zIeyNIorKitLxk7q4CTdgXxE5YTp5qcX2B7zWzqMJVXieXts9trhgxPVKye209O18G2t14k5dXEnlyP0DbQFvMgF9KcXaZQWdBSHQAxDknFP0ZKassWq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dXLIdlvk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dXLIdlvk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D09C9C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788903033;
	bh=q8nasR5O8+cN9K/VIEjzUg9Bxk5o1/orkeGrI94FMfk=;
	h=To:Subject:From:Date:From;
	b=dXLIdlvkUlNIW01sPG2droQewS7UbZG5nKATE2oURFdSlSusmoKjZyrjXAMuFKrtn
	 8GCH3OQh0EBS+xr5y/NMKiixDszaEB3HRBP5yyH7uGwujb9rZiL3rCvv5T9vchvuN3
	 tR0kO5ApkBIvpEe2su+oH/ne0U2hloVXVKjWpgsyvUgcjtAWP25l0JfqXwN1kXNS2x
	 rTNBVeqYCxMXNqN+jWKyAOp52v0OjIHhBf0Zg1yZ6GUnFeNt2+v/XLO7DOozAfFITT
	 Sf3LrTa9fIYlHuIc9vo1J3GgvoJC2/RDEbPBfSE8jHc74cHkyghnb5jcT+wuvREicc
	 AHEZ2WHDXIveQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA7BC79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178890303369.28325.13766031583425833479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d41873e03d27c52a630c5724a6878b350fea8083a109b1d1f28400a99cdbc0a8
Date: Tue, 08 Sep 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788903033
