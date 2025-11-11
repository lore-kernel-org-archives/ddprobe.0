Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D45A29B228
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762841394; cv=none; b=UAbFqXNSYCeMzuMQUHQNGEcARp3MLLpAAsu81eaPXZS7zYQvYaeKLuAb/z2kZPYwLX48Awtztl3Td47dc1OTcM/25qJnkzP5LzjiR1HJA80fJhVmj73a5aWcs98B0LrRA+pl9gNxW7j+kS9dBaM79v48mkU228OGNj5+aNHtckM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762841394; c=relaxed/simple;
	bh=gYvOs4hqDJEJC6xP0YSjEFRS8KakrVTRV8cH54eBLp4=;
	h=To:Subject:From:Message-Id:Date; b=Obb8ghUj4NqRW239nMRfG5T7S/m8llqYlUO/kFoVfRmqS3t5CebJu+1qOyAqqE/Qr4cADC2a9jdZRKn9AELwGdHfn/vSMIneHpKyWNQHWn8+0+IqjyasMxPzXSpDK+qedXCVB6qvDVSUpvV6ddyweG+xOUbtEpnAozcE6G8HToo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hU0C97aK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hU0C97aK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E3EC113D0
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762841393;
	bh=gYvOs4hqDJEJC6xP0YSjEFRS8KakrVTRV8cH54eBLp4=;
	h=To:Subject:From:Date:From;
	b=hU0C97aK405SPzKiFsnzh3pMAxuLnC+3gpPVaxX2G/IPMBy3EG+KSzzCIOjfDBDOl
	 EJXTSPC0Gm0RXcoJS6eMo/xwC9ivKfFq3BBrVBDFs+4CX7MGSoAVeBju0dP5YALlXL
	 kPJVjhMHff/RyPDs9slLfGnf3jcVVZToDGW0YmdUZXcTu11pGA5F0pfGscuxZFUVOc
	 5Z6hsjfWJezs5yVwmLnThSqdiSwOZZBZluEPT4piWuYHHtpl2/JC+Q63rXpdUshKqx
	 mEKpYWGOu3ptnAS821QMcm7N678jj/a2BEWl2MsIMz6ehjc1QWB/jq2ta5lCwOx9PN
	 m44YUSwvqQSOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981C2CCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176284139361.2184.9970391270633943693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fbafbd9ae19ca037ef2dd0c15c1dbc35d9c01d779ba35b01e5bfe339a25b4e6
Date: Tue, 11 Nov 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762841393
