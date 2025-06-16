Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288861465A5
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750071594; cv=none; b=IVmmOo6NZzykjw96+EpKlgziV1hUlwpWDGkYGAs0fi4iWOyCvuSth4pS2j8pf1hkSg84lbHnInVLQjM0ca45ZROvkdoC0jy6E9RtQMm6zykOf7vfwR6t2w6/SToOVVIygYuFk+oV1LY03M19C8+SGAfFgnOhLfVt/Jjp24N33rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750071594; c=relaxed/simple;
	bh=5WLKcY4vQlX860y5B52qst35c1xCjAVB4kWq+aX8BPY=;
	h=To:Subject:From:Message-Id:Date; b=gpHu9sOY5YG8FXMAMDyHKXKQPXz4frR/DWdJJaMPTyBcMEWtpUOUGqv+7VUSGi9i2w072elpd1oDFlH8yYDedziT8ALaDcp79/1PKOCQZ175i4/G+DzzjIMoDk4bI552mNL99vttuMByIdwJkv3b103lGobG9pTIWVcbbGv/34M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P02U2VI3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P02U2VI3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CF0C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750071593;
	bh=5WLKcY4vQlX860y5B52qst35c1xCjAVB4kWq+aX8BPY=;
	h=To:Subject:From:Date:From;
	b=P02U2VI35OgkUydBg8VDGDe0++lX/5WGmp+m725YMF/hadwjAGSEPhmxSRQ9TbzQB
	 mfn9ObdCRtB1vkvY+U2xZMe30IobEasTfz4SeeYFVBOiRDd2i7EiM1MvNQ9nQh+gA6
	 nU7Ow0imQ5rlvG/qxswg8LaOTRXMydnQ0G41Zc6iv2o3XtyB34Ijy/Y64BXMN0b0wX
	 PtxOhNWIwflfBRyh+RFvWJ1E61eOM7JHHqntx+Scn/hUQ02bpj3/BxvtSBwa7escUC
	 Lq2Txz2sjCGLSKZzhdJX/SomeGaUkJEd+pAMlaaMgVne4W+phaB2XpCl+XSEnVhfRv
	 pMUEI1YQ3W+0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA70C71135
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175007159357.5595.4859067644294890617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6a12a0285e06772c4523a3cba061187b98f60a1975de4b834309ec265454bfd
Date: Mon, 16 Jun 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750071593
