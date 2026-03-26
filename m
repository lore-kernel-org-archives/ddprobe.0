Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8BFF38734D
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774540494; cv=none; b=L+jxiCQVqB+6qOLchKYC7bhT2iZuo5/be7y/UmXjZEadJU1PASRCo0MVkn7MgYkLoNOrl6CtBE3G7ddmP/KTNJw5b7LiJ9CzvrOZjRxwlZXBoVEWhHNd7q0dv8ou4hUjbJWMC8+fo7auuuZMwy+Ie6m8DRElygkAiETZOCrM/uI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774540494; c=relaxed/simple;
	bh=VYk6mKva5V5HAJihscZYjYI0ygXnttkCBNz+HtVHCSE=;
	h=To:Subject:From:Message-Id:Date; b=ICucfUYTFklqDQ5PlRTtkx/jT5N3zjdgUdpaPuuLEydztCmkb+oCYboHvEbv17lzUAEjTCwYWhIg9Kz++a4N2BFKusa3Oq1qLyKhWfyfUSca6tkqXxRtmEjmRxPS1b+b+fcs49ZNe51gIY08usB8GURIYGQkDvqbQ8daGKPGDFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MGXIehOf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MGXIehOf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CD7C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774540493;
	bh=VYk6mKva5V5HAJihscZYjYI0ygXnttkCBNz+HtVHCSE=;
	h=To:Subject:From:Date:From;
	b=MGXIehOfwfrD/G3ttT8pAFNGIkw8zySBMka2cBECRMCS3L7glEJMxjq2qzbKPNK1+
	 JVHrE6qDH8KlV2Jpm6jOMrRIV5eI3S2FjwtiRdmj3O4eVkh5Sw76e3P8bZk9uRE8t3
	 ljmofwt3841/9UDykOllqKnS7y8Qle6iLyRFTMytOy/QmvkFp7UCGLahahPJm6D7il
	 1GTvdGVAU1in7p+REQ76JpU1FDYCj1gfsBkCZqtOkm0cDbYTlqpURc0WFFeXfgkOfx
	 MbXtzYaH4JpaBBHSYbQCqAmRA6cHDsNn9i379I53ix0OLVNzuj200/7jSFbGxesx0e
	 iVhAXVgQ6nZZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CD110A88E1
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177454049358.22475.10124809355920176843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3caf104021b5f0eb6c01a1ad465be87a10a45594129c25cae43112e000b393e
Date: Thu, 26 Mar 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774540493
