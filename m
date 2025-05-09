Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378AD237713
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746760194; cv=none; b=rz9iOQ+iCShPS7uV8N9M86Q7EkE6mx1woIaBBbULWzlbpMFkuRmag35YowOlzd7vXZcg7mdTNOnqG6ArwC5GTpGqIF+WV1152nLN1uQIdswNXL15qx3A7OWHh5yM8uAAOu01nb7rN5tRGUgd0Z00xJzARRXm/fvqV9fNGgSKDWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746760194; c=relaxed/simple;
	bh=T+m65kB4E0Pi2FPNw9vI8Sz/Kuzi5yREnJD3v/GMsrE=;
	h=To:Subject:From:Message-Id:Date; b=hA6hriN77ucOEkt55i8id7QR3651YTGqZzJpVrNVyqOVwgO52ntFrsOdZfdhTqJZbCwUjMTuYd8DZCtzx0sNQ5KVHProHFppKuwwfJtlgfCotDX0uyzW2Ue3l6WILj1q+d8jK4HOBj89k4AUNErvWlDG9w3nInw+V7QrNzWDfrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pMqWtCln; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pMqWtCln"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AD2C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746760193;
	bh=T+m65kB4E0Pi2FPNw9vI8Sz/Kuzi5yREnJD3v/GMsrE=;
	h=To:Subject:From:Date:From;
	b=pMqWtClnZ/hTpMOOwXUMrkeqcA2RXZuDTV+wvdBndXCt3Y8dRav9xBMpwLv9j0X+Z
	 RSB23ybgpwXoiF+Wqh41EUVUClYkG0GrodafK4tNLeYLeG6WUTzWQpG6b4uMQDqPpL
	 fRUvZo3Rcu93jqt5vpQQe7YK/hNwPqJOIoKWw/F7iaxTUd8Nltpg/xqd88yacvsu9k
	 8di2xvwFY8+yiYQtp2RqGPaXYna6TGAPpbloYnUT7G9r2OAtWfhdSBLahndKvZdipc
	 oC86Co8Uc8sv/+CYPPkbTUQJ4c68yjWUa2iLWM/GcvEBD/+kVdeJhRwNfVZlZczbJS
	 UEe5Zp/Uu+yYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA36C3ABBE
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174676019358.31157.12481608805026187985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a4318911539861f38600dc26c130163f7f6a43314b3cc3498058caddee0a7f9
Date: Fri, 09 May 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746760193
