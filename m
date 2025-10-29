Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DFB92D949E
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761739194; cv=none; b=iGmDZIrJi0HD0H7inypwZV35nJWcoHguHmxfXTOGSZv4tv/b+aZb1e+VWeReOORHEAA52zU+ed4tEVLMq2GnKRQBAT4cbhfcnVp1xo79sm9dciVsw26obUDn/g+1SrOpeN4o7daWptFVgHDD32VJCBK8ytvVg0wR0TSuy+vAlAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761739194; c=relaxed/simple;
	bh=ZLK2mCId3L/BZqB+y6j6d5+bGzNBqOLpzA4XGE1sZ7A=;
	h=To:Subject:From:Message-Id:Date; b=fCadO2leSYlc3botG+dS/6Wy1cqWzIwzznmhN/upWwXZCU/Tu64phw+0nW+wv4Xxsex/a2BX2/YOLWCu1+zyJycfNDDfCmvP2znF+GjniOeR4JePGRn1Q/3+4lPMqrDK0m8viwTDU5kn1zAn4bmYHZdEBR2Ll3c4c1AmyHE9sig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AxM5iVah; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AxM5iVah"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2476C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761739193;
	bh=ZLK2mCId3L/BZqB+y6j6d5+bGzNBqOLpzA4XGE1sZ7A=;
	h=To:Subject:From:Date:From;
	b=AxM5iVaheuWvkqk8qhnbizAoznsJux7Fh51R93qjNp6tqlfVaLFCU0+vDLVxhNzcv
	 u9KcILXrGeM6IZXCghdNSKG08inCQNh+CzBit41pouF5AeC9ZQBBWalyLLoKDH366j
	 yf8CFFo0fbczJAMuXET5Ab+kCvT5zVkpQint7YYCHK0VOnU+X2mpPBrybbQBh5Oynw
	 ZbWb72yLmAGFKTCeKLMl6Q1TS+wrs+YpmVa17XQ+KUFr0QSo5ayHayTXsr2M5ynU+0
	 hKf7y25CIRA6D+hRhiUiCIwpBpkYaz9yOyCDyGXrJP1LJg2K7Iv6mQI8gdmtNjMwEc
	 LtrL4g5+aWxfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF94CCF9EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176173919357.31677.13930601748089361596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed68727d749abb49917b8eca7c4b1b4cb9b4301722c1e6c5efe1f7e12acbca25
Date: Wed, 29 Oct 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761739193
