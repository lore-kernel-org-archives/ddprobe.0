Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A24188715
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750861794; cv=none; b=LWcjtmAYbty83O4PyKnalpJXZVIjCSTwuL39AbmWaJjh5+/fgclYLIutUePp6dSB+/EYuHW8jtt0hkQpTiJ2P7AB5ZdpZ0Z4Lt7JcdJXhOqM2SwaJ/VI6oYdyUpuAcReJpBRx1PE7D1KeXlQrtA74unOBx5jTwSb9NHz2Irk6hE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750861794; c=relaxed/simple;
	bh=ZzYWCL3YZpdl6dgC5WNTi6d7s8lrhIODfqZ/ilQIqXE=;
	h=To:Subject:From:Message-Id:Date; b=WgZNRujUfDSBkgLKjN7oYMyJr7PSPoxmVXzxIrWM0SzlvVh4pLjiDIeHDKIQXt2VAUCRKeC3UV96Q/e40T8M3mTswLvP6ZkJXbSfH0SheK+sYHO5Dc+IokJcxZHYqju2O2pwgqlcARKjwUZAc/cXVt8EUsXuTQdKJ5gUNxB0FAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TEXxbDCM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TEXxbDCM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99C26C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750861793;
	bh=ZzYWCL3YZpdl6dgC5WNTi6d7s8lrhIODfqZ/ilQIqXE=;
	h=To:Subject:From:Date:From;
	b=TEXxbDCMKMOHlUTrSnAFZcXWk0qi1kb887AuXuioznmupcERXdOKlg9qMKnC51uyu
	 gQxtrSEZXoRwxmZAsEJt7nVWp5Xfc2Jv1Ch9WhyY3Dk0G9ricTBzGCwhx3QnzcWAPG
	 qE4yHkWRpctlL9mLgKV14iCCsstuFz0Lzblp84TX64wQgl8lepR5qKnMfFfI7mflhs
	 Z2c+jqpzdpOCyCQB4ub1lbag0dQ4PUUgwPD28gAWkmXCkPQlApc5/VEOu6t+p9ymoz
	 eCbMbgwb/41tqQu6racDmEzZ75uesBfbAZfu+Vh9T/jjBb1+cUCsbSwyN4k7WvCp2K
	 MdUvn/Xcj0D2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F487C7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175086179357.27875.18441192100491089341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfff5d3f946968a1c5afe51740dd0abfa7207701fb7077fe5cbb216c921cb9d1
Date: Wed, 25 Jun 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750861793
