Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF8C30E828
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 18:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781547994; cv=none; b=s1925ap1ohErPpPAgTeoSF3DcknxIFQPk+Or2NswWlVeS/o3zGgFqV18uGIKa3k2ejsP0TFPLSZLG7zM1xkjpopD9DHnZjOXj9jFkJDq6lcDg4g4/bLcQRd8DRUnrErXp+wDueYRksPfzfomFphkfXvqQLSEkyhhGY9PpDBOB/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781547994; c=relaxed/simple;
	bh=s5TZVujvU95aKR1esS+moysKg16yrDBWm78yo79hUPg=;
	h=To:Subject:From:Message-Id:Date; b=li+fLisn6vliTJn86rp+mSEt9DhL8CNIIKoAcw/yrY5DsWLn4OAUn61mXHiDQm4t80ciLJ/tliRdeA+S0AhKs/ntD88fDPDMsDIA/yeCFuwVGOMVfKCTSOiBLsbgEi2f9GEwSPLHX28sNQI9ksq+4eFVQ46mwFvHW7wOMhbYP20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kuyy9NKU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kuyy9NKU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8C71C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 18:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781547993;
	bh=s5TZVujvU95aKR1esS+moysKg16yrDBWm78yo79hUPg=;
	h=To:Subject:From:Date:From;
	b=kuyy9NKUQmNU/1CohTrYjA+uOkJRIZWGbX4bulyyk6H5ywvwSfL1RIaDX5VIBRgop
	 suPqP396iWgmzSm4AYmdXKtTAb2wqqXaWJ+BCQmpX8RZIpRUe5g4BB7PKOS6Uw7LHI
	 rH9qGTh/FS2lUxQ8TbB6M1q+7eRQ1N5UQwWZ5ye9kzGvaYLTGQkBcg7J0NsQtdH2i2
	 dm44OELatqnf3xht3wY8jcWtVyA2MVvFqyeFupKeG3/nNk3xqhz3Gixh5kdk2fJc0h
	 MRulTuNGg6fj0yzcqgvYUJgk6HW0UzpFrA+8bgWxxZ5lqo7Xw0s+IpXMYcv2uJocIq
	 mFRXZ+crXYHEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5B2CD98DA
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 18:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178154799370.30486.10479539328123771680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 931da919e2c59de3fc864b6a978649c9ef952261d1fd0845b458035408aebfdb
Date: Mon, 15 Jun 2026 18:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781547993
