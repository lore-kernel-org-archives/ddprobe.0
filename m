Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44FE81CAA6D
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791070834; cv=none; b=LhxQReKPCuYDkraGUU5OnrR57x4ixJ1F4a1ySPhReOxnAsZ9+e2J7b85GuoczzTtzS+pK3UcOCrTrd69B+g5kMKdA1mzKtAvockbTiUeWdZNnC9O1JGOBvZ7isvcm0u+33g0fATTu5C93pyl97irWKIZOUGa3trTxlnSN6chYwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791070834; c=relaxed/simple;
	bh=HNYsH8laj7RTGkTVlzVVPRCroUBFkLwaC0oqLx9M1dQ=;
	h=To:Subject:From:Message-Id:Date; b=k5QNhXLJn/ODEhdglcal3Onw8g89dJB+cV+t63e8C4qsRL6ogZmgHcbtmvF1y3S7ZOtezygN7+Tk/gZ0pcrgZVX75HvELThLObxWIkBCCDq3cyXaZgr/T4VVU1N0y9MyNYGXRPllp1HW2b4AbOBSE+7AdGXmLbDVQXdbWbuXtdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iP7Uz2Yv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iP7Uz2Yv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F09C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791070833;
	bh=HNYsH8laj7RTGkTVlzVVPRCroUBFkLwaC0oqLx9M1dQ=;
	h=To:Subject:From:Date:From;
	b=iP7Uz2YvY58mahUd93vLE0ROcnO0FMwkRCYjqRWhEr8tTYYJvh0bkuh78R4bCOVBP
	 nZsAaK5jc0sTLGAdNnM+gODC4U3D0xfjeRhnzJtZvMYJhQG4AO07dBZDkKE+P8peOA
	 chomp7rzIODWbqdErJXDSI+kYLPww/Tn5/YWELIK6wSBJ3C0emLe3+C66fgqrTXoa/
	 u9BwdS/8+CnLhLUS/BKZwHpPrYoHN+iV6LeCKKUNnB1SBMEf4fQv1zYNMHduEok9LL
	 XEn9vqbuHJ3+115N9T1ZQmAYEZdtXZ+wV/9dybCDBK8ffjuKwjOR6U/r7Zue/9KH4c
	 YuXUVkyZBINbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE423CA5FE4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179107083369.12722.13379345813838340689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dad48d34ab0bc3c1a85da37cdfaa207985f418f740c96826bc44e9bdeb19cf67
Date: Sat, 03 Oct 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791070833
