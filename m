Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298761A8F98
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746565794; cv=none; b=R8TvE08SutRsdg/8TDYOrmpYnMfe8qp0y2rvty0anYBoX+GbFc401Kf5bVhGVCWVECALeyjVTRfjXUbSOuAuI+FBvNATlChjn0jxfQsqWPLBh6LGeMUvr4T1lvBrN3eYP1+rPFUPOZwEIJS51L+iOI6SRp/xbjbc300LqxVNCws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746565794; c=relaxed/simple;
	bh=vzcl4fz3bEvs8p22H6Nvc8/OsDVVTI+wUIBMQ/+Pfyg=;
	h=To:Subject:From:Message-Id:Date; b=GLgOowiAEHTkkU0iXv55DpddD65BADxu9diNTB4TCg3DSiEXRNY4XWDG3k2F6wpu9bKv81s3rMkI2qRkY8yV5idogFHJiArXSAhfqEgFQAisqzA4HNfYHYvKBSmaFVIVduXqitQvzyQNCdgu8LuQRH5i/LflNHy5pp4asoYsBYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ECA2BS6n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ECA2BS6n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02B3C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746565793;
	bh=vzcl4fz3bEvs8p22H6Nvc8/OsDVVTI+wUIBMQ/+Pfyg=;
	h=To:Subject:From:Date:From;
	b=ECA2BS6nfc5CbvkRJqT2jxrFY6FbQdzakDqpecZgx1FtO6x/+6Z0dMg/4d4Mxz+nS
	 OYtvtP7EDZJMUtnMHWi8cOAMUyUPqzccYuNOK7fiHGPcdlbf4chLkQfr7TVw85GMJd
	 SmAiiMuexhnDUL0c+FuAZmG1t07VpONWUWpZxS6E4tYZIQB+rkz+3PiYjdguj8VoZL
	 K/xR/K4vm48MpWo9JXRSMGHBsxejuremM72btYTsbZRj87eb/UyK497hIOtCrknBjs
	 nqE9KNXzhulp7LdrDaHYejWdCoI6wL/K7RWKZdYZyluhECzeFltILks1DYIzu1k+la
	 xKNqVzUc/U4kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916D0C3ABBF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174656579358.7109.14245252823961687888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c97d96a3cbddab15faaf04c7d809ac647914b3e5dd76718cac410198d706dca
Date: Tue, 06 May 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746565793
