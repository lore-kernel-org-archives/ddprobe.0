Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9563264D9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 15:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779721954; cv=none; b=UFVqsp8yF7oYd3La3kX+8PRU15j0UaZ0/E/aXbKs6DcPAdsYdWUHr+IkoEPp7CFo1CBoVI/+Jmy2bwuul2k6FVFflU5k3aND+MNNuwn6LuGI7WZizBDeYCji2EKzRTkokw0gyIXTdMDl5tsXH0jhYWbsCqw6PjigaoEaIsgj+Xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779721954; c=relaxed/simple;
	bh=TP3MyRsXUH0spbrAPutc857XJp9dyQ0AdtpVU5xR3WI=;
	h=To:Subject:From:Message-Id:Date; b=pMm4bGBbcQILSXR8LgohsrXrAz1vHr2GOSM1R2ZhAAq7/EjcOMbqH0n/NEV/ta9QQzdoMV9XARyOGBWG3mXUS1WLPf8D7dCvPevOox5xrQB2UJpNMY79uKFY8X4v/rpEf2GsLJSEuQUm6ugRLEz+lGPw8KLrHa5/8A3Y+OBZDmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tvQGf+Vd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tvQGf+Vd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C360AC2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 15:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779721953;
	bh=TP3MyRsXUH0spbrAPutc857XJp9dyQ0AdtpVU5xR3WI=;
	h=To:Subject:From:Date:From;
	b=tvQGf+VdsGF7piI/b0n3NnDTLIZYUTqhPgua7Aexv7KJQmxu1YYwOrV1fW+Y35CR4
	 kO8ELk3v3oO8Hz5esRj00ucViw/EAyacs3KYuN4iDEWOLrBSmG5epGBZsEPat0ygeY
	 C/AzaoiGFK0eVflKU4LplnmIxqXusGYwVVXH3oo7tJF2Lqy9wkykajiBHAH86yJgjl
	 nueoMiVUlt3BdTR5NIRq4OinAdTW8SJCR+cFln0SRCHHssof3tACnlccWjmk/7sLPa
	 uOKRXHHvmRb2ADjQJMPpoh264pPTpsj1Dk7pQN8t5dG+UviHAniasDGepNbFJDWKZn
	 YyPCQbS6zojIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2E7CD5BB1
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 15:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177972195369.21916.9110607337344684701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cab71ba45c547d8a34e170e09bfc3d3236bdb94e9ce68da98657acbef47af912
Date: Mon, 25 May 2026 15:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779721953
