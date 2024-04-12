Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E6DB39FD5
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 21:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712957963; cv=none; b=EVFQWn75k1F8rcwlljF+TD7kcMOMglB6Nxt9sckzRPWkoES1Wuu6kwfo/F6g6wJzmHe4gPeNNRC/nsBjhP0M4yM4EbF8o8mjueRQc5v3Vntewr8ulQlQO7x/+uHA05Dx+zOfwd9JncINFFWzlpcOb2EM+hBEmE/zuoo/32cG3iQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712957963; c=relaxed/simple;
	bh=IH2gY38y0soXXdrmgwsyqGaPWLaXxr6JdncQy4ZGAhY=;
	h=To:Subject:From:Message-Id:Date; b=hXZZQHS0grtYdxJ2hLGP2Nvrldun5gImn0CMA4hKn2jTAuTOBji3/nefzbGY33njaQQ7+WwPMKDJTbjc3yU0uipkY9c6EXxIjktS90ry5Mm0Ak7CxnsTAUqRpq3Rr0AtFRYRVYfaMJjn7XfX1+XVAvARtHFkQXkyXxNsliEiDA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iKzAAh+b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iKzAAh+b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1E82CC113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 21:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712957963;
	bh=IH2gY38y0soXXdrmgwsyqGaPWLaXxr6JdncQy4ZGAhY=;
	h=To:Subject:From:Date:From;
	b=iKzAAh+bgvoQqTmkLzpj4oRfU1spEuiaz0KXUaRuH5h4DeeMmaplP9bu8QXWrvB/T
	 htbOw74YHoLFJLq0tYw3Cc5Vxcg6GauA/1wXi+kxFkWXbn8wKPfVDRKEDbLYCSrwOi
	 Rd/VgEH5EgMgrP2/aOpVeanE+AQwRoPD+RhQ1NyyXyOIE1sYrd9x3DPw6HGW0m3ATZ
	 ztG6mUkuAubyN9E4GZo6DzDXBWLpymwdAXhCRv4xKFmmBN82sbpzk+Y4UHqwhCY/ND
	 kfLV06B0gtTW59x5PjaX/UR05RvAHqu1z75ZEcxTgtBR5LbsluYfR+QELSqXUKGdCV
	 JWUERCnlLjVUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 015A4C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 21:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171295796294.10810.10112689986524013326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34a7608bfb27dc9facf3af64d44b0616938fb215339467b37c1d98d0c1e637b9
Date: Fri, 12 Apr 2024 21:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712957962
