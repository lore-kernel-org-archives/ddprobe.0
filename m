Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2574B18A6DF
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752965394; cv=none; b=T0Bs38XLWBiwWBhZpxAalUM+EGLCA0+Vhjbc9j7oM2uVV7nhknWcitqj3MRGuugJAABNdnWu8mNl7fLiqJKgMInjoHAIo45SVaoaZ7o+xuwF4aa0gWjdzcIRt8IGjOrDYTUYcvAIOVTxD9Xi70Ayf0UwKJjH3DgM1Gt6PLfxT3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752965394; c=relaxed/simple;
	bh=rL0XoGNvGnZ39URPlYTP7U7WgEAs4HlbK1JxCXTLYis=;
	h=To:Subject:From:Message-Id:Date; b=u0TWewG+69nXeEdf778lmAxQErm1YB7G+l9+xWYZrca8wSJ6oI7lcDvaeywOkM/tSMpIxFp3gsil2RpeecamgOo3suXf4nK7hvcwj31COjPxPY9O2Qq1EjW7UeEUtYsQW08ktAGu6UDwt1zjsR5bN0fIXFRWVesho0HXk7aq3+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aOY1PKY/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aOY1PKY/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C00C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752965393;
	bh=rL0XoGNvGnZ39URPlYTP7U7WgEAs4HlbK1JxCXTLYis=;
	h=To:Subject:From:Date:From;
	b=aOY1PKY/qwdYd6JSL11E+HNsoHcNKdVL2VFhIJMPD/nmPxurxgbq7TEkJsm7RxDR1
	 HaCPoQ4rNvJV65YOmOhRB/50w+pX/n1VNeTW0IZr3dIbtHDFA940PL5s1zcrOa4n7l
	 h1O16qUORN8YWPgAlIY0mOBSFWv5K7seUEeG5VUwTXJg2EA2dPCnwRytKevm5I15Yd
	 mI240Um8m4kC2dbcG6WY1gy1E1pw7IMv78ZAcb+GunBFhKas8dkw8R+uroc1XQyK7G
	 KAG7J3JIIWRMku4m7lHZM6Tr5oj7BnGZteS6LDX38EQTfJLi+/rDBL2840+v/oHTyM
	 9+jYgygqCy6ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE57C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175296539357.8390.7855023733462545056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5e16f264c1b288617d64e440eda0edc8f74847a61d1100b64b3fd9a07973977
Date: Sat, 19 Jul 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752965393
